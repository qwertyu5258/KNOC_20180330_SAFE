package com.neoboard.servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neoboard.session.UserSession;
import com.neoboard.AuthorityManager;
import com.neoboard.NeoBoardError;
import com.neoboard.NeoBoardManager;
import com.neoboard.PropertyManager;
import com.neoboard.TopViewer;
import com.neoboard.data.Article;
import com.neoboard.data.Authority;
import com.neoboard.data.PageAttribute;
import com.neoboard.data.Property;
import com.neoboard.data.Search;
import com.neoboard.util.EtcUtil;


/**
 * @author <a href="mailto:seagull@mcat.co.kr">Seagull Lee</a> MCAT Lab.
 * @version 1.0
 */
public class RestoreArticle extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
	    doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
	{
		EtcUtil etc = new EtcUtil();
		request.setCharacterEncoding("euc-kr");
		
	    String boardID; // �Խ��� ���̵�
	    String callback; // �ݹ� ������
	    String num; // �Խù� ��ȣ
	    String page; // �Խù� ������ ��ȣ
	    String mode; // �Խ��� �� ���
	    String fields[]; // �˻��� �÷�
	    String texts[]; // �˻��� �ؽ�Ʈ
	    String dir;  // ������ �ʵ�
	    String order; // ���� ����
	    
	    String grp; // �׷�
	    
	    boardID = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("bid")));
	    callback = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("callback")));
	    num = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("num")));
	    
	    page = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("page")));
        
	    mode = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("mode")));
        if(mode == null) mode = "list";               
        
        fields = request.getParameterValues("field");
        texts = request.getParameterValues("text");
        dir = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("dir")));
        order = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("order")));
        
        grp = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("grp")));
        
        /* make page bean Property */
        PageAttribute pageBean = new PageAttribute();
        pageBean.setPageUrl(callback);
        pageBean.setNum(num);
        pageBean.setPage(page);
        pageBean.setPageMode(mode);
        
        /* make Search bean Property */
        Search search = new Search();
        if(fields != null && texts != null) {
	        for(int i = 0 ; i < fields.length && i < texts.length; i++) {
	        	search.setSearchParam(fields[i],texts[i]);
	        }
        }
        
        search.setDir(dir);
        search.setOrder(order);
        search.setGroup(grp);
	    /* ���� ���� */
        UserSession userSession = null;
        HttpSession ses = request.getSession();
        String sesName = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("ses")));
        if(ses != null){
            if(sesName == null || sesName.equals("")) {
                userSession = (UserSession)ses.getAttribute("USERSESSION");
            }
            else {
                userSession = (UserSession)ses.getAttribute(sesName);
            }
        }
        /* query board property */
        Property p = (new PropertyManager()).getProperty(boardID);
        if(p == null) throw new ServletException("Board Property does not allowed null!!");
        /* query board authority */
        Authority auth = (new AuthorityManager()).getAuthority(boardID);
        if(auth == null) throw new ServletException("Board Authority does not allowed null!!");
        
        NeoBoardManager manager = new NeoBoardManager();
        
        /* ���� �˻� */
        if(manager.checkID(boardID, num)) {
            if(userSession == null) {
                request.setAttribute("ERRORDETAIL",
                        		new NeoBoardError(userSession, 
                        		        p, 
                        		        pageBean, 
                        		        request.getRequestURI(), 
                        				"�α����� �ϼž߸� ������ �� �ֽ��ϴ�."));
                String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
                RequestDispatcher dispatcher =
    				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
    			dispatcher.forward(request, response);		
                return;
            }
            else {
            	if(Integer.parseInt(userSession.getUserLevel()) <= auth.getLevelDelete()) {
                }
                else {
	                // �ڱ������ �˻� 
	                if(!checkManager(auth, userSession) && !manager.checkMyArticle(boardID,num,userSession.getUserID())){
	                    request.setAttribute("ERRORDETAIL",
			                    		new NeoBoardError(userSession, 
			                    		        p, 
			                    		        pageBean, 
			                    		        request.getRequestURI(), 
			                    				"�ڱ� ���� �ƴմϴ�."));
			            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
			            RequestDispatcher dispatcher =
							getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
						dispatcher.forward(request, response);		
			            return;
	                }
                }
            }
        }

        if(!p.getUseDelete().equals("1") 
                && !checkManager(auth,userSession) ) {
            /* ���� ������� ���� */
            request.setAttribute("ERRORDETAIL",
            		new NeoBoardError(userSession, 
            		        p, 
            		        pageBean, 
            		        request.getRequestURI(), 
            				"����� ���� �Ұ����� �Խ����Դϴ�."));
		    String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
		    RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);		
		    return;
        }
        
        String passwd = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("passwd")));
		if(passwd == null) passwd = "";
		String qUserID;
		String qPasswd;
		if(!p.getUseAuth().equals("1")) {
		    qUserID = "";
		    qPasswd = passwd;
		    
		}
		else {
			if(userSession != null) {
				qUserID = userSession.getUserID();
				qPasswd = "";
			} else {
				qUserID = "";
			    qPasswd = passwd;
			}
		}
		
		String ip = request.getRemoteAddr();
		/* DB �Է� */
		/* �Է� ���� */		
		
		/* ����Ȯ�� */
		boolean checkPasswd = false;
		if (checkManager(auth,userSession) || (userSession != null && manager.checkMyArticle(boardID,num,userSession.getUserID()))) {
			checkPasswd = true;
		} else {
			if(!manager.checkPasswd(boardID, passwd, Integer.parseInt(num))){
				/* ��й�ȣȮ�� */
			    request.setAttribute("ERRORDETAIL",
	            		new NeoBoardError("��й�ȣ�� ��ġ���� �ʽ��ϴ�.",false));
	            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
	            RequestDispatcher dispatcher =
					getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
				dispatcher.forward(request, response);
				return;
			} else {
				checkPasswd = true;
			}
		}
        
        if(manager.restoreArticle(p,Integer.parseInt(num),qUserID,qPasswd,
        		checkPasswd,ip )) {
            TopViewer.resetTime(p.getBoardID());
            /* redirect callback url */
            StringBuffer urlBuf = new StringBuffer();
            urlBuf.append(callback);
            urlBuf.append("?page=");
            urlBuf.append(page);
            urlBuf.append("&bid=");
            urlBuf.append(boardID);
            urlBuf.append("&mode=");
            urlBuf.append("list");            
            urlBuf.append(search.makeQueryString(false));
            
            response.sendRedirect(urlBuf.toString());
            response.flushBuffer();
            return;
        }
        else {
            request.setAttribute("ERRORDETAIL",
                    	new NeoBoardError(
                    	        userSession ,
                    	        p,
                    	        pageBean,
                    	        request.getRequestURI(), 
                    	        "�ڱ� �ڽ��� ���� �ƴմϴ�."));
            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
            RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);		
            return; 
        }
	}
	/**
	 * �Խù� ���� ���� ���� �˻�
	 * @param a
	 * @param ses
	 * @return
	 */
	private boolean checkAuthority(Authority a, UserSession ses) {
	    if(ses == null) return true;
	    if(Integer.parseInt(ses.getUserLevel()) < 2) return true;
	    if(a.getLevelDelete() >= Integer.parseInt(ses.getUserLevel())){
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
		    if(Property.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	    }
	    if (a.getDeleteAllowedUser() != null && !a.getDeleteAllowedUser().equals("")) {
		    if(Property.findAllowedID(a.getDeleteAllowedUser(),ses.getUserID())) return true;
	    }
	    if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelDelete()) {
            return true;
        }
	    return false;
	}
}

