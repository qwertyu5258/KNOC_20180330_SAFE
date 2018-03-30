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
import com.neoboard.NeoBoardMsgRedirect;
import com.neoboard.PropertyManager;
import com.neoboard.common.CommonConstants;
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

/**
 * @author <a href="mailto:seagull@mcat.co.kr">Seagull Lee</a> MCAT Lab.
 * @version 1.0
 */
public class RegistArticle extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
	    doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
	{
		request.setCharacterEncoding("euc-kr");
		
	    String boardID; // �Խ��� ���̵�
	    String callback; // �ݹ� ������
	    boardID = request.getParameter("bid");
	    callback = request.getParameter("callback");
	    
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
        
        /* query board property */
        Property p = (new PropertyManager()).getProperty(boardID);
        if(p == null) throw new ServletException("Board Property does not allowed null!!");
        /* query board authority */
        Authority auth = (new AuthorityManager()).getAuthority(boardID);
        if(auth == null) throw new ServletException("Board Authority does not allowed null!!");
        /* make page bean Property */
        PageAttribute pageBean = new PageAttribute();
        pageBean.setPageUrl(callback);
        pageBean.setNum("0");
        pageBean.setPage("1");
        pageBean.setPageMode("list");
        
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
        }
        if(!p.getUseRegistration().equals("1") 
                && !checkManager(auth,userSession)) {
            /* ���� ������� ���� */
            request.setAttribute("ERRORDETAIL",
            		new NeoBoardError(userSession, 
            		        p, 
            		        pageBean, 
            		        request.getRequestURI(), 
            				"����� �Է� �Ұ����� �Խ����Դϴ�."));
		    String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
		    RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);		
		    return;
        }
        /* ���� �˻� */
        if(userSession != null) {
            if(!checkAuthority(auth,userSession) && !checkManager(auth,userSession)) {
                request.setAttribute("ERRORDETAIL",
                		new NeoBoardError(userSession, 
                		        p, 
                		        pageBean, 
                		        request.getRequestURI(), 
                				"���� ������ �����ϴ�."));
                String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
                RequestDispatcher dispatcher =
    				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
    			dispatcher.forward(request, response);		
                return; 
            }
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
	        if(!CommonConstants.IS_DEV){
	        	Runtime.getRuntime().exec("chmod -R 775 " + path);
	        } 
	    }
	    
	    int maxUploadSize = p.getMaxUpload() * 1024 * 1024; 
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
		
		String subject = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("subject")));
		String name = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("name")));
		String passwd = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("passwd")));
		String email = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("email")));
		String html = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("html")));
		String content = "";
		if (html.equals("")) {
			html = "1";
			content = mrequest.getParameter("HTML_BODY");
		} else {
			content = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("HTML_BODY")));
		}	
		String secret = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("secret")));
		if (secret.equals("")) {
			secret = "0";
		}
		String notice = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("notice")));
		if (notice.equals("")) {
			notice = "0";
		}
		String grp = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("grp")));
		String id = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("id")));
		String tel1 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("tel1")));
		String tel2 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("tel2")));
		String tel3 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("tel3")));
		String zipno1 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("zipno1")));
		String addr1 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("addr1")));
		String addr2 = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("addr2")));
		String url = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("url")));
		
		String contGubun = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("contGubun")));
		String viewStatus = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("viewStatus")));
		String kind = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("kind")));
		String object = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("object")));
		String cut = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("cut")));
		String cutContent = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("cutContent")));
		String job = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("job")));
		String virtualno = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("virtualno")));
		
		if (p.getSkinID().equals("skin04") || p.getSkinID().equals("skin05")) {
			Search search = new Search();
			search.setName(name);
			search.setPassword(passwd);
		}
		
		/* Create Article */
		Article article = new Article();
		//article.setNo(0);
		//article.setRef(0);
		article.setRefLevel(0);
		article.setRefStep(0);
		if(!p.getUseAuth().equals("1")) {
		    article.setId("");
		    article.setName(name);
		    article.setPasswd(passwd);
		}
		else {
		    article.setId(userSession.getUserID());
		    article.setName(name);
		    article.setPasswd(passwd);
		}
		article.setSubject(subject);
		article.setEmail(email);
		article.setContent(content);
		article.setIp(request.getRemoteAddr());
		article.setRegDate(new Date());
		article.setHitcnt(0);
		article.setCmtcnt(0);
		//article.setFilecnt(0); 
		article.setDowncnt(0);
		article.setHtml(html);
		article.setNotice(notice);
		article.setSecret(secret);	
		article.setGrp(grp);		
		article.setPhone(tel1 + "-" + tel2 + "-" + tel3);
		article.setZipcode(zipno1);
		article.setAddr1(addr1);
		article.setAddr2(addr2);
		article.setMoveBid("");
		article.setUrl(url);
		article.setContGubun(contGubun);
		article.setViewStatus(viewStatus);
		article.setKind(kind);
		article.setObject(object);
		article.setCut(cut);
		article.setCutContent(cutContent);
		article.setJob(job);
		article.setCallback(callback);	
		article.setVirtualno(virtualno);

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
		    	 if(!checkAllowedExtension(p,savedFile.getName())){
		        	extensionSuccess = false;
		        	continue;
		        }
		    	String ext = "";
		 	    ext = savedName.toLowerCase().substring(savedName.lastIndexOf(".")+1);		    	
		        AttachFile attachFile = new AttachFile();
		        //attachFile.setNo(0);
		        //attachFile.setBno(0);
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
			/* Delete uploaded files */
		    for(Enumeration e = mrequest.getFileNames(); e.hasMoreElements();) {		    	
			    String fileName = (String)e.nextElement();
			    
			    File savedFile = mrequest.getFile(fileName);
			    if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		    }
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
        NeoBoardManager manager = new NeoBoardManager();
        if(manager.addArticle(p,article)) {        	
        	/* Expose update*/
        	//kr.go.wbgn.expose.ExposeHelper.makeBoardExpose(this.getServletContext().getRealPath("/"));
        	
        	/* �̹��� ���� ���ε��ϰ�� ����� ���� */
        	AttachFiles files = article.getFiles();
        	
        	/* ���䴺�� /sub05/sub05_3_5_1.jsp �������� ������ �ػ� ������ ����� �̹��� ������� ���� */
        	String thumbType = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mrequest.getParameter("thumbType")));
        	
        	for(int k = 0 ; k < files.size(); k++) {
        		AttachFile af = files.getAttachFile(k);
        		if(".jpg".equals(af.getFileNameType().toLowerCase()) 
        				||".gif".equals(af.getFileNameType().toLowerCase())
        				||".jpeg".equals(af.getFileNameType().toLowerCase())) {
	        		String thumbFileName = "T" + af.getNewFileName();
	        		
	        		try {
	        			if("new".equals(thumbType)){
        					//NEW ����� 20121130 kgs
        					com.neoboard.common.ImgUtils.createThumbnailNew(
        							Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + af.getNewFileName(), 
    		        				Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + thumbFileName, 180);
        				}else if("new2".equals(thumbType)){
        					//NEW �����(���� ����ϰ� width���� �޶� ���� �߰� 20130212 kgs
        					com.neoboard.common.ImgUtils.createThumbnailNew(
        							Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + af.getNewFileName(), 
    		        				Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + thumbFileName, 160);
        				}else{
        					//���� �����
        					com.neoboard.common.ImgUtils.createThumbnail(
    		        				Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + af.getNewFileName(), 
    		        				Property.UPLOAD_ROOT + File.separator + p.getBoardID() + File.separator + thumbFileName, 160, true);	   
        				}
		        		     		
	        		} catch (Exception e) {
	        			e.printStackTrace();
	        		}
        		}
        	}
        	
        	/* redirect callback url */
        	StringBuffer urlBuf = new StringBuffer();
       	 	if (p.getSkinID().equals("skin02")) {
       		 	urlBuf.append(EtcUtil.DOMAIN_URL + article.getCallback());
             	urlBuf.append("?mode=");
             	urlBuf.append("list");
             	urlBuf.append("&bid=");
             	urlBuf.append(boardID);
             	urlBuf.append("&pass=");
             	urlBuf.append(article.getPasswd());
             	urlBuf.append("&name=");
             	urlBuf.append(article.getName());
             	urlBuf.append("&bno=");
             	urlBuf.append(article.getNo());
       	 	} else if (p.getSkinID().equals("skin04")) {
        		urlBuf.append(EtcUtil.DOMAIN_URL + "/sub04/sub04_5_list.jsp");
              	urlBuf.append("?mode=");
              	urlBuf.append("list");
              	urlBuf.append("&bid=");
              	urlBuf.append(boardID);
              	urlBuf.append("&pass=");
              	urlBuf.append(article.getPasswd());
              	urlBuf.append("&name=");
              	urlBuf.append(article.getName());
              	urlBuf.append("&bno=");
              	urlBuf.append(article.getNo());
             } else if (p.getSkinID().equals("skin05")) {
             	urlBuf.append(EtcUtil.DOMAIN_URL + "/sub04/sub04_6.jsp");
             } else {
	            urlBuf.append(callback);
	            urlBuf.append("?bid=");
	            urlBuf.append(boardID);
	            urlBuf.append("&mode=");
	            urlBuf.append("list");
	            urlBuf.append("&grp=");
	            urlBuf.append(grp);
             }
        	 
        	/* ���ϱ�� ��� */
        	/* �۵�Ͻ� ��� */             
        	if (p.getUseMailing().equals("W") || p.getUseMailing().equals("WR") || p.getUseMailing().equals("EWR") || p.getUseMailing().equals("WE")) {        		
        		try {
        			String mailTemplate = p.getMailTemplate();
        			String mailTo = p.getMailTo();
        			String mailFrom = p.getMailFrom();
        			
        			mailTemplate = mailTemplate.replace("[##�̸�##]", article.getName());
        			mailTemplate = mailTemplate.replace("[##�����##]", article.getRegDateString("yyyy-MM-dd"));
        			mailTemplate = mailTemplate.replace("[##����##]", article.getSubject());
        			mailTemplate = mailTemplate.replace("[##������##]", "��ϱ�");
        			mailTemplate = mailTemplate.replace("[##����##]", article.getContent());
        			mailTemplate = mailTemplate.replace("[##�Խù�URL##]", callback + "?bid=" + boardID + "&mode=view&num=" + article.getNo());
        			        			
        			if (p.getMailTo() == null || p.getMailTo().equals("")) {
        				mailTo = article.getEmail();
        			}
        			if (p.getMailFrom() == null || p.getMailFrom().equals("")) {
        				mailFrom = article.getEmail();
        			}        			
        			
        			if (!mailTo.equals("") && !mailFrom.equals("") && p.getMailServer() != null && !p.getMailServer().equals("")) {        				
        				MailBean Mailb = new MailBean(mailTo, mailFrom, p.getBoardName() + "�Խ��ǿ� ����Ͻ� ���Դϴ�.", mailTemplate, "", "", "", p.getMailServer());
        				Mailb.start();
        			}
        		} catch (Exception e) {
        			e.printStackTrace();
        		}
        	}
        	/* ���ϱ�� ��� �� */  
        	
        	/** SMS ��� ��� */
        	if (p.getUseSms() != null && p.getUseSms().equals("1")) {
        		if (p.getSmsNumber() != null && !p.getSmsNumber().equals("")) {
        			String[] sms_number = p.getSmsNumber().split(";");
        			for (int s =0; s < sms_number.length; s++) {
        				if (sms_number[s] != null && !sms_number[s].equals("")) {
        					
        					String smsTxt = p.getSmsText();
        					if(p.getSkinID().equals("skin04")){
        						smsTxt = "�ο����� �����ڴ� [" + article.getSubject() + "]�� ���� �� ���� ��ϵǾ����ϴ�.";
        					}        					
        					else if(p.getSkinID().equals("skin02")){
        						smsTxt = p.getBoardName()+" �����ڴ� [" + article.getSubject() + "]�� ���� �� ���� ��ϵǾ����ϴ�.";
        					}        					
        					
        					manager.insertSmsWait(sms_number[s], Integer.toString(s+1), smsTxt);
        				}
        			}
        		}
        	}
        	/** SMS ��� ��� �� */
        	            
            if (p.getSkinID().equals("skin02") || p.getSkinID().equals("skin04") || p.getSkinID().equals("skin05")) {
	            request.setAttribute("WRITEDETAIL",
	                	new NeoBoardMsgRedirect(
	                			urlBuf.toString(), 
	                	        "������ȣ�� " + article.getNo() + " ������ ��� �Ǿ����ϴ�."));
	            
		        String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
		        RequestDispatcher dispatcher =
					getServletContext().getRequestDispatcher(skinRoot + "/writeRedirect.jsp");
				dispatcher.forward(request, response);
				response.flushBuffer();
	            return;
            } else {
            	response.sendRedirect(urlBuf.toString());
                response.flushBuffer();
            }
        }
        else {
        	/* Delete uploaded files */
		    for(Enumeration e = mrequest.getFileNames(); e.hasMoreElements();) {		    	
			    String fileName = (String)e.nextElement();
			    
			    File savedFile = mrequest.getFile(fileName);
			    if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		    }
            request.setAttribute("ERRORDETAIL",
                    	new NeoBoardError(
                    	        userSession ,
                    	        p,
                    	        pageBean,
                    	        request.getRequestURI(), 
                    	        "�Խù� �Է��� �����Ͽ����ϴ�."));
            String skinRoot = Property.SKIN_URL + "/" + p.getSkinID();
            RequestDispatcher dispatcher =
				getServletContext().getRequestDispatcher(skinRoot + "/errorRedirect.jsp");
			dispatcher.forward(request, response);		
            return; 
        }
		
	}
	/**
	 * �Խù� �Է� ���� ���� �˻�
	 * @param a
	 * @param ses
	 * @return
	 */
	private boolean checkAuthority(Authority a, UserSession ses) {
	    if(ses == null) return true;
	    try {
	    	if(Integer.parseInt(ses.getUserLevel()) < 2) return true;
	    }catch(Exception ex){
	        System.out.print (ex.getMessage());
	    }
	    if(a.getLevelRegistration() >= Integer.parseInt(ses.getUserLevel())){
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
		    if(Property.findAllowedID(a.getMaster(),ses.getUserID())){
		        return true;
		    }
	    }
	    if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
		    if(Property.findAllowedID(a.getRegistrationAllowedUser(),ses.getUserID())) {
		        return true;
		    }
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
	    ext = fileName.toLowerCase().substring(fileName.lastIndexOf(".")+1);
	    //	  ���ܵ� Ȯ���� ��� 
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

