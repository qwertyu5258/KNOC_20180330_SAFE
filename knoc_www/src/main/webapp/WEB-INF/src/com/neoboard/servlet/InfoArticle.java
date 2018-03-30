package com.neoboard.servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.neoboard.AuthorityManager;
import com.neoboard.NeoBoardError;
import com.neoboard.NeoBoardManager;
import com.neoboard.PropertyManager;
import com.neoboard.data.Article;
import com.neoboard.data.AttachFile;
import com.neoboard.data.AttachFiles;
import com.neoboard.data.Authority;
import com.neoboard.data.PageAttribute;
import com.neoboard.data.Property;
import com.neoboard.data.Search;
import com.neoboard.mailing.MailBean;
import com.neoboard.session.UserSession;
import com.neoboard.util.EtcUtil;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class InfoArticle extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
	    doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
	{

		request.setCharacterEncoding("euc-kr");
		
	    String boardID;		// �Խ��� ���̵�
	    String callback;	// �ݹ� ������
	    String num;			// �Խù� ��ȣ
	    String page;		// �Խù� ������ ��ȣ
	    String mode;		// �Խ��� �� ���
	    String fields[];	// �˻��� �÷�
	    String texts[];		// �˻��� �ؽ�Ʈ
	    String dir;			// ������ �ʵ�
	    String order;		// ���� ����
	   
	    
	    boardID = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("bid")));
	    callback = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("callback")));
	    num = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("num")));
	    
	    page = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("page")));
        
	    mode = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("mode")));
        if(mode == null) mode = "view";
        
        fields = request.getParameterValues("field");
        texts = request.getParameterValues("text");
        dir = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("dir")));
        order = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("order")));
        
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
        
	    /* ���� ���� */
        UserSession userSession = null;
        HttpSession ses = request.getSession();
        String sesName = request.getParameter("ses");
        if(sesName == null){sesName ="";}
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
        
        /* �Խ��� �޴��� ���� */
        NeoBoardManager manager = new NeoBoardManager();
        /* ���� �˻� */
        if(p.getUseAuth().equals("1")) {
            if(userSession == null) {
                request.setAttribute("ERRORDETAIL",
                        		new NeoBoardError(userSession, 
                        		        p, 
                        		        pageBean, 
                        		        request.getRequestURI(), 
                        				"�α��� �Ǵ� �Ǹ������� �ϼž߸� ������ �� �ֽ��ϴ�."));
                String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
                RequestDispatcher dispatcher =
    				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
    			dispatcher.forward(request, response);		
                return;
            }
            else {
            	if(Integer.parseInt(userSession.getUserLevel()) <= auth.getLevelEdit()) {
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
        if(!p.getUseEdit().equals("1") 
                && !checkManager(auth,userSession)) {
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
        
        /* �Խñ� ��ϱ���IP üŷ */
		if(p.getBanIp() != null && !p.getBanIp().equals("") && com.neoboard.PropertyManager.getBanIp(p.getBanIp(), request.getRemoteAddr())){						
		    request.setAttribute("ERRORDETAIL",
            		new NeoBoardError("��� �Ұ����� IP �Դϴ�..",false));
            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
            RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);
			return;
		}
        
        /* ���ε� ���� */
        String encoding = "EUC-KR";
	    String path = Property.UPLOAD_ROOT + "/" + boardID + "/";	    
	    File upFile = new File(path);
	    if(!upFile.exists()) {
	        upFile.mkdirs();
	        //wasadmin �������� ���� �� ������ ���� ���� (05112401)
	        Runtime.getRuntime().exec("chmod -R 775 " + path);
	    }
	    
	    int maxUploadSize = p.getMaxUpload() * 1024 * 1024; 
	    /**
	     * 2016.3.21 JSM
	     * ���Ⱦ��� ��ġ
	     */	    
	    if (maxUploadSize < 0){maxUploadSize=0;}
	    
	    MultipartRequest mrequest = null; 
        try{
			mrequest = new MultipartRequest(request, 
										 path,
										 maxUploadSize, 
										 encoding,
										 new DefaultFileRenamePolicy()
										 );
		}catch(IOException e){
			// �뷮 �ʰ�
		    request.setAttribute("ERRORDETAIL",
            		new NeoBoardError("���ε� ȭ�� �뷮 �ʰ��Դϴ�.",false));
            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
            RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);
			return;
		}
		/* ���ε� ���� */
		
		String buse = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("buse")));
		String status = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("status")));
		String html = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("html")));
		String answer = "";
		if (html.equals("")) {
			html = "1";
			answer = mrequest.getParameter("HTML_BODY");
		} else {
			answer = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("HTML_BODY")));
		}
		String ip = request.getRemoteAddr();
					
		String fileupdate[] = mrequest.getParameterValues("fileupdate");
		
		/* Create Article */
		Article article = new Article();
		article.setNo(Integer.parseInt(num));
		article.setBuse(buse);
		article.setStatus(status);
		article.setAnswer(answer);
		article.setIp(ip);
		
		boolean extensionSuccess = true;
		/* Create AttachFiles */
	       
		int i = 1;
		java.util.Random oRandom = new java.util.Random();
		for(Enumeration e = mrequest.getFileNames(); e.hasMoreElements();) {
			Date date = new Date();
	        SimpleDateFormat simpleDate = new SimpleDateFormat("yyyyMMddHHmmssSSS");
			String today=simpleDate.format(date);
			
		    String fileName = (String)e.nextElement();
		    String fileIndex = fileName.replace("file", ""); // input file name = file1,file2...������ ���Ͼ��ε�� ���° ����÷���ΰ�?
		    String savedName = mrequest.getFilesystemName(fileName);
		    File savedFile = mrequest.getFile(fileName);
		    if(savedName != null && !savedName.equals("")) {		    	
		        /* ���� Ȯ���� �˻� */
		        if(!checkAllowedExtension(p,savedName)){
		        	extensionSuccess = false;
		        	continue;
		        }
		        String ext = "";
		 	    ext = savedName.toLowerCase().substring(savedName.lastIndexOf(".")+1);
		        AttachFile attachFile = new AttachFile();
		        //attachFile.setNo(0);
		        attachFile.setBno(article.getNo());
		        attachFile.setFileName(savedName);
		        File tmpFile = mrequest.getFile(fileName);
		        if(tmpFile != null)
		            attachFile.setFileSize(tmpFile.length());
		        attachFile.setRegDate(new Date());
		        attachFile.setDowncnt(0);
		        attachFile.setBun(fileIndex);
		        
		        attachFile.setNewFileName(today + "" + i + "" + oRandom.nextInt(1000) + "."  + ext); 
		        File newFile = new File(path + "" + attachFile.getNewFileName());
		        savedFile.renameTo(newFile);
		        
		        article.addFile(attachFile);
		        article.setFilecnt(article.getFilecnt()+1);
		        
		        if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		       i++;
		    }
		}
		if(!extensionSuccess){
			// ���ε� ����(Ȯ���� ���ε� �Ұ�)
		    request.setAttribute("ERRORDETAIL",
            		new NeoBoardError("�����Ͻ� ȭ���� ���ε� �Ͻ� �� �����ϴ�.",false));
            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
            RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		/* DB �Է� */
		/* �Է� ���� */
        if(manager.editInfoArticle(p,article,fileupdate)) {
        	/* Expose update*/
        	//kr.go.wbgn.expose.ExposeHelper.makeBoardExpose(this.getServletContext().getRealPath("/"));
        	// �̹��� ����� ����
        	AttachFiles files = article.getFiles();
        	for(int k = 0 ; k < files.size(); k++) {
        		AttachFile af = files.getAttachFile(k);
        		if(".jpg".equals(af.getFileNameType().toLowerCase()) 
        				||".gif".equals(af.getFileNameType().toLowerCase())
        				||".jpeg".equals(af.getFileNameType().toLowerCase())) {
        			String thumbFileName = "T" + af.getNewFileName();
        			try {
		        		com.neoboard.common.ImgUtils.createThumbnail(
		        				Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + af.getNewFileName(), 
		        				Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + thumbFileName, 160, true);	        		
	        		} catch (InterruptedException e) {
	        			e.printStackTrace();
	        		}        		
        		}
        	}
            /* redirect callback url */
            StringBuffer urlBuf = new StringBuffer();
            urlBuf.append(callback);
            urlBuf.append("?num=");
            urlBuf.append(num);
            urlBuf.append("&page=");
            urlBuf.append(page);
            urlBuf.append("&bid=");
            urlBuf.append(boardID);
            urlBuf.append("&mode=");
            if (article.getSecret().equals("1")) {
            	urlBuf.append("list");
            } else {
            	urlBuf.append("view");
            }
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
                    	        "�Խù� ������ �����Ͽ����ϴ�."));
            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
            RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);		
            return; 
        }
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
	    if (a.getMaster() != null && !a.getMaster().equals("")) {
		    if(Property.findAllowedID(a.getMaster(),ses.getUserID())){
		        return true;
		    }
	    }
	    if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {
		    if(Property.findAllowedID(a.getEditAllowedUser(),ses.getUserID())) {
		        return true;
		    }
	    }
	    if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelEdit()) {
            return true;
        }
	    return false;
	}
	/**
	 * ���� Ȯ���� �˻�
	 * @param fileName
	 * @return
	 */
	private boolean checkAllowedExtension(Property property, String fileName) {
		String notAllowedExtension = property.getDefaultNotAllowedExtension();
		if(!property.getAllowedExtension().equals("")) notAllowedExtension += "," + property.getAllowedExtension();
	    /* ���� Ȯ���� �˻� */
	    String ext = "";

	    /**
	     * 2016.3.21 JSM
	     * ���Ⱦ��� ��ġ
	     */
	    // ÷�� ���� Ȯ����
	    if(fileName!=null){
	    	ext = fileName.toLowerCase().substring(fileName.lastIndexOf(".")+1);
	    }
	    // ���ܵ� Ȯ���� ��� 
	    String[] extension = notAllowedExtension.split(",");
	    /* ���� Ȯ���� ������� ���� ��� �ش� ���� ���� �� FALSE ���� */
	    if(!isContainExtension(extension, ext)){
	        return true;
	    }
	    else {
	        /* �ش� ���� ���� */
	        String path = Property.UPLOAD_ROOT + "/" + property.getBoardID() + "/" + fileName;
	        File dfile = new File(path);
	        if(dfile != null) {
		        if(dfile.exists()) {
		            if(dfile.isFile())
		                dfile.delete();
		        }
	        }
	        return false;
	    }
	}
	
	/**
	 * ���ε� Ȯ���ڸ��� ���ܵ� Ȯ���� ��Ͽ� ���ԵǾ��ִ��� ����
	 * @param extension1	���� Ȯ���� ���
	 * @param extension2	���ε� �� ���� Ȯ����
	 * @return	true: ���ܵ� Ȯ����
	 */
	private boolean isContainExtension(String[] extension1, String extension2){
		boolean result = false;
		
		if(extension1 == null || extension2 == null) return result;
		for(int j = 0; j < extension1.length; j++){
			if(extension1[j].equals(extension2)){
				result = true;
				break;
			}
		}
		
		return result;
	}
}