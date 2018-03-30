<%@page import="java.util.Random"%>
<%@page import="kr.co.knoc.sitectrl.mgr.MgrSession"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*"%>    
<%@ page import = "com.oreilly.servlet.MultipartRequest"%>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>    
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.sague.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="sagueManager" scope="page" class="kr.co.knoc.sague.SagueManager" />	
<% request.setCharacterEncoding("euc-kr"); %>

<%
	
	MgrSession mgrSession = (MgrSession)session.getAttribute("ADMINSESSION");

	String file1 = "";
	String encoding = "EUC-KR";
	String path = etcutil.ETC_UPLOAD_ROOT + "/BOARD_04/";	    
	
	File upFile = new File(path);
	if(!upFile.exists()) {
		upFile.mkdirs();
	}
	
	int maxUploadSize = 10 * 1024 *1024; 

	MultipartRequest agrequest = null;
	SagueBean sb = new SagueBean();
	SagueFileBean sf = new SagueFileBean();
	
	try{
		agrequest = new MultipartRequest(request, 
				 path,
				 maxUploadSize, 
				 encoding,
				 new DefaultFileRenamePolicy()
				 );
		
		//����÷��
		Random oRandom = new Random();
		boolean extensionSuccess = true;
	    if(agrequest.getFile("file1") != null && agrequest.getFile("file1").exists()){
	    	
			String today = StringUtil.getCurrentDate("yyyyMMddHHmmssSSS");
			File savedFile = agrequest.getFile("file1");
			String fileName = savedFile.getName();		    
		    //String fileIndex = fileName.replace("file", ""); // input file name = file1,file2...������ ���Ͼ��ε�� ���° ����÷���ΰ�? 
		    String savedName = agrequest.getFilesystemName("file1");
		    
		    if(savedName != null && !savedName.equals("")) {		    			    	
		        /* ���� Ȯ���� �˻� */
		    	if(!etcutil.checkAllowedExtension("BOARD_04",savedFile.getName())){
		        	extensionSuccess = false;	
		        }

		    	String ext = "";
		 	    ext = savedName.toLowerCase().substring(savedName.lastIndexOf(".")+1);
		    	sf.setOrg_filenm(savedName);
		    	
		        File tmpFile = agrequest.getFile(fileName);
		        if(tmpFile != null)
		        	sf.setFile_size((int)tmpFile.length());
		            
		        sf.setSave_filenm(today + "1" + oRandom.nextInt(1000) + "."  + ext);		        
		        File newFile = new File(path + "" + sf.getSave_filenm());
		        savedFile.renameTo(newFile);		        		      
		        
		        if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		    }
		    
	    }	   

	    if(!extensionSuccess){
			/* Delete uploaded files */
		    if(agrequest.getFile("filename") != null && agrequest.getFile("filename").exists()){		    				    
			    File savedFile = agrequest.getFile("filename");
			    if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		    }
		    %><stl:msgBack msg="�����Ͻ� ȭ���� ���ε� �Ͻ� �� �����ϴ�."/><%
		    return;
	    }
		
		String subject = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("subject")));
		String reason = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("reason")));
		String contents = etcutil.checkNull(agrequest.getParameter("HTML_BODY"));
		String opinion = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("opinion")));
		String opinion_term = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("opinion_term")));
		String department = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("department")));
		String representatives = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("representatives")));
		String tel_no = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("tel_no")));
		String fax_no = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("fax_no")));
		String email = etcutil.strBlockSpecialTags(etcutil.checkNull(agrequest.getParameter("email")));
		String reg_id = mgrSession.getUserID();
		
		
		sb.setSubject(subject);
		sb.setReason(reason);
		sb.setContents(contents);
		sb.setOpinion(opinion);
		sb.setOpinion_term(opinion_term);
		sb.setDepartment(department);
		sb.setRepresentatives(representatives);
		sb.setTel_no(tel_no);
		sb.setFax_no(fax_no);
		sb.setEmail(email);
		sb.setReg_id(reg_id);
		
		//���Ϻ� ����
		sf.setLast_modifier(reg_id);
		sf.setFile_path(path);

	}catch(FileNotFoundException e){  // ���Ⱦ��� ��ġ 2016.03.21 ECJ
		e.printStackTrace();
		throw e;
		
	}catch(Exception e){
		e.printStackTrace();
		throw e;
	}
	
	boolean result = sagueManager.insertSague(sb, sf);

%>

<%if (!result) { %>
<script type="text/javascript">
	alert("��Ͽ� �����Ͽ����ϴ�.");
	history.back();
</script>
<%
		return;
	} else {		
%>
<script type="text/javascript">
	alert("��� �Ǿ����ϴ�.");
    location.href = "board_04.jsp";
</script>
<% 	
  	}
%> 



