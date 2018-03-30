package com.neoboard.tags;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

import com.neoboard.AuthorityManager;
import com.neoboard.NeoBoardManager;
import com.neoboard.PropertyManager;
import com.neoboard.common.StringFormat;
import com.neoboard.data.Article;
import com.neoboard.data.Authority;
import com.neoboard.data.PageAttribute;
import com.neoboard.data.Property;
import com.neoboard.data.Search;
import com.neoboard.session.GuestSession;
import com.neoboard.session.UserSession;
import com.neoboard.util.EtcUtil;
import com.neoboard.common.CommonConstants;

import kr.co.knoc.util.HTMLFilter;




public class NeoBoardFacade extends TagSupport {
    /** ȣ���� ������ */
    private String parentUri;
    /** �Խ��� ȣ�� ��� */
    private String mode;
    /** �Խ��� ���̵� */
    private String bid;
    /** Session name string */
    private String sessionName = "";
    /** ������ ��� */
    private String adminURL;
       
    public void setSessionName(String sesName) {
        this.sessionName = sesName;
    }
    public String getBid() {
        return bid;
    }
    public void setBid(String bid) {
        this.bid = bid;
    }
    public String getMode() {
        return mode;
    }
    public void setMode(String mode) {
        this.mode = mode;
    }
    public String getParentUri() {
        return parentUri;
    }
    public void setParentUri(String parentUri) {
    	
        this.parentUri = parentUri;
    }
    public String getAdminURL() {
        return adminURL;
    }
    public void setAdminURL(String adminURL) {    	
        this.adminURL = adminURL;
    }
    public int doEndTag() throws JspException {
        
        
       
    	
        HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();

    	
        /**
         * 2016.3.21 JSM
         * ���Ⱦ��� ��ġ
         */
        EtcUtil etc = new EtcUtil();
        String reqMode = new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("mode")));
        if(reqMode == null) {
            if(this.mode != null) 
                reqMode = this.mode;
            else 
                reqMode = "list";
        }
        reqMode = checkMode(reqMode);
        
        String reqBoardID = new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("bid")));
              
        
        if(reqBoardID != null && !reqBoardID.trim().equals("")) {
            this.bid = reqBoardID.trim();            
        }                      
        
        /* make page bean Property */
        PageAttribute page = new PageAttribute();
        
        
        
        if(!CommonConstants.IS_DEV){ //�Ǹ��
        	page.setPageUrl("http://" + request.getServerName() + "" + this.parentUri); 
        }else{	//���߸��
        	System.out.println("request.getServerName():"+request.getServerName());
        	page.setPageUrl(this.parentUri); 
        }
        
        page.setNum(new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("num"))));
        page.setPage(new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("page"))));
        page.setPageMode(reqMode);
        
        /* make Search bean Property */
        Search search = new Search();
        String[] fields = request.getParameterValues("field");
        String[] texts = request.getParameterValues("text");
        if(fields != null && texts != null) {
	        for(int i = 0 ; i < fields.length && i < texts.length; i++) {
	            search.setSearchParam(new HTMLFilter().filter(EtcUtil.checkNull(fields[i])),new HTMLFilter().filter(texts[i]));
	        }
        }
        
        
        
        search.setDir(new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("dir"))));
        search.setOrder(new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("order"))));
        search.setGroup(new HTMLFilter().filter(EtcUtil.checkNull(request.getParameter("grp"))));
        search.setPassword(EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(new HTMLFilter().filter(request.getParameter("pass")))));
        search.setName(EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(new HTMLFilter().filter(request.getParameter("name")))));
        search.setBno(EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(new HTMLFilter().filter(request.getParameter("bno")))));
        
        /* query board property */
        Property p = (new PropertyManager()).getProperty(this.bid);
        if(p == null) throw new JspException("Board Property does not allowed null!!");
        
        /* �Խ��� ��뿩�� */
        if(p !=null) {
	        if(p.getStatus().equals("0")) {
	            msgBack("���� �Խ��� �Դϴ�.");
	            return SKIP_PAGE;
	        }
        }
        /* �����, ������ ��Ų URL */
        String skinURL = "";        
        if(this.adminURL != null && !this.adminURL.equals("")) {
        	skinURL = this.adminURL + "" + Property.SKIN_URL;
		} else {
			skinURL = Property.SKIN_URL;
		}
        
        /* page list count setting */ 
        page.setPageSize(StringFormat.numberFormat(p.getListPerPage(),"###"));
        /* query board authority */
        Authority auth = (new AuthorityManager()).getAuthority(this.bid);
        if(auth == null) throw new JspException("Board Authority does not allowed null!!");
        
        /* ���� üũ */
        HttpSession ses = pageContext.getSession();
        UserSession userSession = null;
        if(ses != null){
            // ���� �̸��� ������ ���        	
            if(this.sessionName == null || this.sessionName.equals("")) 
            	userSession = (UserSession)ses.getAttribute("USERSESSION");
            else 
                userSession = (UserSession)ses.getAttribute(this.sessionName);
        }
        if(userSession == null) {
	        GuestSession info = new GuestSession();
		    info.setUserLevel("9");
		    request.setAttribute("GUESSTSESSION",info);
		    ses.setAttribute("GUESSTSESSION",request.getAttribute("GUESSTSESSION"));	
		    userSession = (UserSession)ses.getAttribute("GUESSTSESSION");		    
        }
        
        if(p.getUseAuth().equals("1") && !reqMode.equals("edit")) {
            if(userSession == null) {
            	msgBack("���� ������ �����ϴ�.");
                return SKIP_PAGE;                
            }
        }
        String u = "";
        String gets = "";
    	if(request.getQueryString() != null){
     		gets = "?"+request.getQueryString();
    	}
    	String currentPage = request.getRequestURL()+gets; 
    	if (currentPage == null || currentPage.equals("")) {
    		currentPage = "/";
    	}
        //u = request.getHeader("referer");
    	u = currentPage;
	    if (u == null || u.equals("")) {
	    	u = "/";
	    }
        
        /* ���� üũ */
        if(userSession != null) {
            if(!checkAuthority(auth, p , userSession,reqMode,page.getNNum()) && !reqMode.equals("edit")) {
            	//if(Integer.parseInt(userSession.getUserLevel()) > 9) {
                if(!p.getUseRegistration().equals("1")  && !checkManager(auth,p,userSession,"write")) { // 2016.04.12 ECJ
            		msgBack("���� ������ �����ϴ�.");
                    return SKIP_PAGE;            		               
                } else {
                	//������ �α��� üũ �߰� 20130528 kgs
                	if(!(userSession.getUserID() != null && userSession.getUserID().length() > 0 && "guest".equals(userSession.getUserID()))){ 
                		loginBack("������(���ͳ��ֹι�ȣ��ü����) �Ǵ� ȸ��ID�� �α��� �� �̿��� �ֽʽÿ�.", u);
                        return SKIP_PAGE;
                	}
                }
            }
        }

        /* ��ȸ�� ���� , �Խù� request �� ����*/
        Article article = null;
        if(reqMode.equals("view")) {        	
            NeoBoardManager bm = new NeoBoardManager();
            article = bm.getArticle(page.getNNum(),p,search);
	        if(!article.getSecret().equals("1")) bm.increaseHitCount(p,page.getNNum());
	        pageContext.setAttribute("NB_ARTICLE",article,PageContext.REQUEST_SCOPE);
            
        }
        else if(reqMode.equals("edit") || reqMode.equals("reply") ) {
            NeoBoardManager bm = new NeoBoardManager();
            article = bm.getArticle(page.getNNum(),p,search);
            // Set Article
            pageContext.setAttribute("NB_ARTICLE",article,PageContext.REQUEST_SCOPE);
        }
        /* set attribute to request scope */
        
        System.out.println(skinURL + "/" +  p.getSkinID() + "/" + reqMode + ".jsp");
        
        // Setting up SessionName
        pageContext.setAttribute("NB_SESNAME",this.sessionName,PageContext.REQUEST_SCOPE);
        // Setting up PageAttribute
        pageContext.setAttribute("NB_PAGE",page,PageContext.REQUEST_SCOPE);
        // Setting up Search 
        pageContext.setAttribute("NB_SEARCH",search,PageContext.REQUEST_SCOPE);
        // Setting up Property
        pageContext.setAttribute("NB_PROPERTY",p,PageContext.REQUEST_SCOPE);
        // Setting up Authority
        pageContext.setAttribute("NB_AUTHORITY",auth,PageContext.REQUEST_SCOPE);
        
        try{
            if(!p.getUseAuth().equals("1")) {
	            if(article!= null && reqMode.equals("view")
	                    && article.getSecret().equals("1") 
	                    && !checkManager(auth,p,userSession,"view")) {
	                String passwd = EtcUtil.checkNull(request.getParameter("passwd"));
	                NeoBoardManager bm = new NeoBoardManager();
	                
	                if(passwd == null || passwd.equals("")) {
		                pageContext.include(skinURL + "/" + 
		    	                p.getSkinID() + "/inputpwd.jsp");
	                }
	                else {
	                	if (article.getSecret().equals("1") && article.getRefLevel() > 0) {
	                		int no = bm.checkNo(this.bid, Integer.toString(page.getNNum()));	                		
	                		if (bm.checkPasswd(this.bid, passwd, page.getNNum())) {
		                        // ����� ��ġ�� ��� ���� ������
		                        pageContext.include(skinURL + "/" + 
		            	                p.getSkinID() + "/" + reqMode + ".jsp");	                			
	                		} else {
	                			 // ����� Ʋ���� ���
		                        msgBack("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		                        return SKIP_PAGE;
	                		}
	                	} else {
		                    //if(article.getPasswd().equals(passwd)){
	                		if((article.getPasswd()!=null?article.getPasswd().trim():"").equals(bm.getMd5Passwd(passwd))){
		                        // ����� ��ġ�� ��� ���� ������
		                        pageContext.include(skinURL + "/" + 
		            	                p.getSkinID() + "/" + reqMode + ".jsp");
		                    }
		                    else {
		                        // ����� Ʋ���� ���
		                        msgBack("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		                        return SKIP_PAGE;
		                    }
	                	}
	                }
	            }
	            else {
		            pageContext.include(skinURL + "/" + 
		                p.getSkinID() + "/" + reqMode + ".jsp");
	            }
            }
            else {
                // ��б��ε� �ڱ���� �ƴϰ� , �����ڵ� �ƴ� ��� ����
            	// ��� �亯���� �����ϴ� ��б� �ۼ��� Ȯ��	: ��б� �ۼ��ڰ� �ڽ��� �亯�ۿ� ���� ���� ��� - checkReplyAuth(article, p, userSession, "view")
            	if(article!= null && (reqMode.equals("view") || reqMode.equals("edit"))
 	                    && article.getSecret().equals("1") 
 	                    && !checkManager(auth,p,userSession,"view")
 	                    && !checkReplyAuth(article, p, userSession, "view")) {
           		 		NeoBoardManager bm = new NeoBoardManager();
            		 
	            		 if (userSession != null && 
	            				(
	            					 ("guest".equals(article.getId()) && article.getVirtualno().equals(userSession.getUserVirtualno()))
	            					 || (!"guest".equals(article.getId()) && article.getId().equals(userSession.getUserID()))
	            				)){
	            			 // ID�� guest�ϰ�� virtualno�� üũ �ƴҰ�� ���̵� üũ
	            				 
	            			 pageContext.include(skinURL + "/" + 
	          		                p.getSkinID() + "/" + reqMode + ".jsp");
	            		 } else {
		 	                String passwd = etc.strBlockSpecialTags(etc.checkNull(request.getParameter("passwd")));                
		 	                System.out.println("passwd =========== " + passwd);
		 	                if(passwd == null || passwd.equals("")) {
		 	                	msgBack("�� ���� ����� ���Դϴ�. Ÿ���� �����Ͻ� ���� �����ϴ�.");
		 	                    return SKIP_PAGE;
		 	                }
		 	                else {
		 	                	System.out.println("############## article.getSecret() ::: " + article.getSecret());
		 	                	System.out.println("############## article.getRefLevel() ::: " + article.getRefLevel());
		 	                	if (article.getSecret().equals("1") && article.getRefLevel() > 0) {
			                		int no = bm.checkNo(this.bid, Integer.toString(page.getNNum()));
			                		if (bm.checkPasswd(this.bid, passwd, no)) {
				                        // ����� ��ġ�� ��� ���� ������
				                        pageContext.include(skinURL + "/" + 
				            	                p.getSkinID() + "/" + reqMode + ".jsp");	                			
			                		} else {
			                			 // ����� Ʋ���� ���
				                        msgBack("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				                        return SKIP_PAGE;
			                		}
			                	} else {
			                		
				                    if((article.getPasswd()!=null?article.getPasswd().trim():"").equals(bm.getMd5Passwd(passwd))){
				                        // ����� ��ġ�� ��� ���� ������
				                        pageContext.include(skinURL + "/" + 
				            	                p.getSkinID() + "/" + reqMode + ".jsp");
				                    }
				                    else {
				                        // ����� Ʋ���� ���
				                        msgBack("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				                        return SKIP_PAGE;
				                    }
			                	}
		 	                }
	            		 }
 	            }
 	            else {
 		            pageContext.include(skinURL + "/" + 
 		                p.getSkinID() + "/" + reqMode + ".jsp");
 	            }
            	
                /**if(article!=null && reqMode.equals("view")
                        && article.getSecret().equals("1") 
                        && !article.getId().equals(userSession.getUserID())
                        && !checkManager(auth,p,userSession,"view")
						&& !checkReplyAuth(article, p, userSession, "view")
                        ) {
                    msgBack("�� ���� ����� ���Դϴ�. Ÿ���� �����Ͻ� ���� �����ϴ�.");
                    return SKIP_PAGE;	
                }
                else {                	
		            pageContext.include(skinURL + "/" + 
		                p.getSkinID() + "/" + reqMode + ".jsp");
	            }**/
            }
        }catch(IOException e){
            throw new JspException(e);
        }catch(ServletException e) {
        	System.out.println(e.getMessage());
        	System.out.println(e.getStackTrace());
            throw new JspException(e);
        }
        return EVAL_PAGE;
    }
    /**
     * ���� ���� �˻�
     * @param a
     * @param p
     * @param ses
     * @param m
     * @param no
     * @return
     */
    private boolean checkAuthority(Authority a, Property p, final UserSession ses, String m, int no) {
    	if(p.getUseAuth().equals("1")){
            if(ses == null) return false;
	        /* �Ѱ� �Խ��� ���������� �˻� */
            if (a.getMaster() != null && !a.getMaster().equals("") && ses.getUserID() != null && !ses.getUserID().equals("")) {
		        if(a.getMaster().indexOf(ses.getUserID()) > -1) {
		            return true;
		        }
            }
	        /* ��ü ������ */
	        if(ses.getUserLevel().equals("1")) return true;
	        
	        /* ��Ͽ� ���� ���� �˻� */
	        if(m.equals("list")) {
	            // ���� �˻�
	            if(a.getLevelList() >= Integer.parseInt(ses.getUserLevel())) {
	                return true;
	            }
	            // ���̵� �˻�
	            if (a.getListAllowedUser() != null && !a.getListAllowedUser().equals("")) {
		            if(a.getListAllowedUser().indexOf(ses.getUserID()) > -1) {
		                return true;
		            }
	            }
	        }
	        else if(m.equals("view")) {
	//          ���� �˻�
	            if(a.getLevelView() >= Integer.parseInt(ses.getUserLevel())) {
	                return true;
	            }
	            // ���̵� �˻�
	            if (a.getViewAllowedUser() != null && !a.getViewAllowedUser().equals("")) {
		            if(a.getViewAllowedUser().indexOf(ses.getUserID()) > -1) {
		                return true;
		            }
	            }
	        }
	        else if(m.equals("write")) {
	//          ���� �˻�
	            if(a.getLevelRegistration() >= Integer.parseInt(ses.getUserLevel())) {
	                return true;
	            }
	            // ���̵� �˻�
	            if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
		            if(a.getRegistrationAllowedUser().indexOf(ses.getUserID()) > -1) {
		                return true;
		            }
	            }
	        }
	        else if(m.equals("edit")) {
	            // ���� �˻�
	            if(a.getLevelEdit() >= Integer.parseInt(ses.getUserLevel())) {
	                return true;
	            }
	            // ���̵� �˻�
	            if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {
		            if(a.getEditAllowedUser().indexOf(ses.getUserID()) > -1) {
		                return true;
		            }
	            }
	            // �ڱ��
	            NeoBoardManager neoManager = new NeoBoardManager();
	            if(neoManager.checkMyArticle(p.getBoardID(),Integer.toString(no),ses.getUserID())){
	                return true;
	            }
	        }
	        else if(m.equals("reply")) {
	            // ���� �˻�
	            if(a.getLevelReply() >= Integer.parseInt(ses.getUserLevel())) {
	                return true;
	            }
	            // ���̵� �˻�
	            if (a.getReplyAllowedUser() != null && !a.getReplyAllowedUser().equals("")) {
		            if(a.getReplyAllowedUser().indexOf(ses.getUserID()) > -1) {
		                return true;
		            }
	            }
	        }
    	}
	    else {
	        return true;
	    }
       
        return false;
    }
    /**
     * �ڽ��� ��� �ۿ� ���� ������� Ȯ��
     * @param a	: �ڽ��� ��
     * @param p
     * @param m	: ��� (view:�б� ���)
     * @return	true: �ڽ��� �� ����
     */
    private boolean checkReplyAuth(Article a, Property p, final UserSession ses, String m){
    	boolean result = false;
    	/*
    	 * �亯 ������ �˻� 
    	 * �亯 ���� �ƴ� ���� �� ��ȣ�� �����ȣ�� ����.
    	 */
    	if (a.getNo() == a.getRef()) return result;
    	
    	if(m.equals("view")){
    		NeoBoardManager manager = new NeoBoardManager();
			String ref_id	= manager.getArticleIdOfRef(p, a.getRef());

			/* Fail to Execute Query */
			if(ref_id == null) return result;
			/* �ڱ� �ۿ� ���� ������� �˻� */
			if(ses.getUserID().equals(ref_id) ) result = true;
    	}
    	
    	return result;
    }
    private boolean checkManager(Authority a, Property p, final UserSession ses, String m) {
        if(ses == null) return false;
        /* �Ѱ� �Խ��� ���������� �˻� */
        if (a.getMaster() != null && !a.getMaster().equals("")) {
	        if(Property.findAllowedID(a.getMaster(),ses.getUserID())) {
	            return true;
	        }
        }
        /* ��ü ������ */
        if(ses.getUserLevel().equals("1")) return true;
        
        /* ��Ͽ� ���� ���� �˻� */
        if(m.equals("list")) {
            // ���̵� �˻�
        	if (a.getListAllowedUser() != null && !a.getListAllowedUser().equals("")) {
	            if(Property.findAllowedID(a.getListAllowedUser(),ses.getUserID())) {
	                return true;
	            }
        	}
        }
        else if(m.equals("view")) {
            // ���̵� �˻�
        	if (a.getViewAllowedUser() != null && !a.getViewAllowedUser().equals("")) {
	            if(Property.findAllowedID(a.getViewAllowedUser(),ses.getUserID())) {
	                return true;
	            }
        	}
        }
        else if(m.equals("write")) {
            // ���̵� �˻�
        	if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
	            if(Property.findAllowedID(a.getRegistrationAllowedUser(),ses.getUserID())) {
	                return true;
	            }
        	}
        }
        else if(m.equals("edit")) {
            // ���̵� �˻�
        	if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {
	            if(Property.findAllowedID(a.getEditAllowedUser(),ses.getUserID())) {
	                return true;
	            }
        	}
        }
        else if(m.equals("reply")) {
           // ���̵� �˻�
        	if (a.getReplyAllowedUser() != null && !a.getReplyAllowedUser().equals("")) {
	            if(Property.findAllowedID(a.getReplyAllowedUser(),ses.getUserID())) {
	                return true;
	            }
        	}
        }
       
        return false;
    }
    private void msgBack(String msg) throws JspException {
        JspWriter writer = (JspWriter)pageContext.getOut();
		try {
			writer.println("<script type=\"text/javascript\">\n" +
						"alert(\"" + msg + "\");\n" + 
						"history.back()\n" +
						"</script>");
		}catch(IOException ie) {
			throw new JspException("Response writing error: " + ie.getMessage());
		}
    }
    private void loginBack(String msg, String u) throws JspException {
        JspWriter writer = (JspWriter)pageContext.getOut();
		try {
			
			int chkXSS = u.indexOf("<script");
			if(chkXSS > -1) { u = "/"; }			
			
			writer.println("<script type=\"text/javascript\">\n" +
						"alert(\"" + msg + "\");\n" + 
						"location.href=\"/member/login.jsp?returnURL="+u+"\";\n" +
						"</script>");
		}catch(IOException ie) {
			throw new JspException("Response writing error: " + ie.getMessage());
		}
    }
    private static HashMap MODE = null;
    private String checkMode(String m){
        if(NeoBoardFacade.MODE == null) {
            NeoBoardFacade.MODE = new HashMap(10);
            synchronized(NeoBoardFacade.MODE) {
                MODE.put("list","list");
	            MODE.put("view","view");
	            MODE.put("write","write");
	            MODE.put("edit","edit");
	            MODE.put("reply","reply");
	            MODE.put("photo","photo");
            }
        }
        if(NeoBoardFacade.MODE.get(m) == null) {
            m = "list";
        }
        return m;
    }
    public void release() {
        this.parentUri = null;
        this.mode = null;
        this.bid = null;
    }
    
}