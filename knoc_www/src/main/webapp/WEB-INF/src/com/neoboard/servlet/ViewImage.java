package com.neoboard.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neoboard.AuthorityManager;
import com.neoboard.NeoBoardManager;
import com.neoboard.PropertyManager;
import com.neoboard.data.AttachFile;
import com.neoboard.data.Authority;
import com.neoboard.data.PageAttribute;
import com.neoboard.data.Property;
import com.neoboard.session.GuestSession;
import com.neoboard.session.UserSession;


public class ViewImage extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
	    doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException
	{
	    String boardID; // �Խ��� ���̵�
	    String num; // �Խù� ��ȣ
	    String fno; // ȭ�� ��ȣ
	    boardID = request.getParameter("bid");
	    num = request.getParameter("num");
	    fno = request.getParameter("fno");

	    /* ���� ���� */
	    UserSession userSession = null;
        HttpSession ses = request.getSession();
        String sesName = request.getParameter("ses");
        if(ses != null){
            if(sesName == null || sesName.equals("")) {
                userSession = (UserSession)ses.getAttribute("USERSESSION");
            }
            else {
                userSession = (UserSession)ses.getAttribute(sesName);
            }
        }
        if(userSession == null) {
        	GuestSession info = new GuestSession();
		    info.setUserLevel("9");
		    info.setUserID("");
		    userSession = info;
        }

        PageAttribute pageBean = new PageAttribute();
        pageBean.setPageUrl("");
        pageBean.setNum("0");
        pageBean.setPage("1");
        pageBean.setPageMode("list");

        /* query board property */
        Property p = (new PropertyManager()).getProperty(boardID);
        if(p == null) throw new ServletException("Board Property does not allowed null!!");
        /* query board authority */
        Authority auth = (new AuthorityManager()).getAuthority(boardID);
        if(auth == null) throw new ServletException("Board Authority does not allowed null!!");

        /* ���� �˻� */

        if(p.getUseAuth().equals("1")) {
            if(userSession == null) {
                return;
            }
        }

        /* ���� �˻� */
        if(userSession != null) {
            if(!checkAuthority(auth,userSession) && !checkManager(auth,userSession) ) {
                return;
            }
        }

        /* �ٿ�ε� */
        NeoBoardManager manager = new NeoBoardManager();
        AttachFile file = manager.getAttachFile(p,Integer.parseInt(num),Integer.parseInt(fno));
        if(file == null) {
            return;
        }

        /**
         * 2016. 03. 21 / MYM
         * ���Ⱦ��� ��ġ
         */
        String strMimeType = file.getMimeType();
        if(strMimeType == null) { strMimeType = ""; }
        if(file.getMimeType().equals("gif")) {
            response.setContentType("image/gif");
        }
        else if(file.getMimeType().equals("jpg")) {
            response.setContentType("image/jpg");
        }
        else if(file.getMimeType().equals("jpeg")) {
            response.setContentType("image/jpeg");
        }

        /**
         * 2016. 03. 21 / MYM
         * ���Ⱦ��� ��ġ
         */
        String strNewFileName = file.getNewFileName();
        if(strNewFileName == null) { strNewFileName = ""; }
        String filePath = Property.UPLOAD_ROOT + "/" + file.getFolder() + "/" + strNewFileName.replaceAll("\\��","");
        File f = new File(filePath);
        long fileSize = f.length();

        byte[] buf = new byte[4096];


        if(fileSize > 0 && f.isFile()) {
            BufferedInputStream fin   =
                new BufferedInputStream(new java.io.FileInputStream(f));
            BufferedOutputStream outs =
                new BufferedOutputStream(response.getOutputStream());
            int read = 0;

            try{
                while((read = fin.read(buf)) != -1) {
                    outs.write(buf,0,read);
                }
            }
            catch (Exception e) {
                System.out.println(e.getMessage());
            }
            finally {
                outs.flush();
                outs.close();
                fin.close();
            }
        }
        else {
            return;
        }
	}
	/**
	 * �Խù� ���� �˻�
	 * @param a
	 * @param ses
	 * @return
	 */
	private boolean checkAuthority(Authority a, UserSession ses) {
	    if(ses == null) return true;
	    if(Integer.parseInt(ses.getUserLevel()) < 2) return true;
	    if(a.getLevelView() >= Integer.parseInt(ses.getUserLevel())){
	        return true;
	    }
	    return false;
	}
	/**
	 * ������ ���̵� �˻�
	 * @param a
	 * @param ses
	 * @return
	 */
	private boolean checkManager(Authority a, UserSession ses) {
	    if(ses == null) return false;
	    if(ses.getUserLevel().equals("1")) return true;
	    //if (Integer.parseInt(ses.getUserLevel()) <= 6) return true;
	    if (a.getMaster() != null && !a.getMaster().equals("")) {
		    if(a.getMaster().indexOf(ses.getUserID()) > -1 ){
		        return true;
		    }
	    }
	    if (a.getViewAllowedUser() != null && !a.getViewAllowedUser().equals("")) {
		    if(a.getViewAllowedUser().indexOf(ses.getUserID()) > -1) {
		        return true;
		    }
	    }
	    return false;
	}
}
