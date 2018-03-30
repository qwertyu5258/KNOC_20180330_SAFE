<%@page import="kr.co.knoc.gov_public.GovPublicFileBean"%>
<%@page import="kr.co.knoc.util.StringUtil"%>
<%@page import="java.util.Random"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@page import="kr.co.knoc.gov_public.GovPublicBean"%>
<%@page import="kr.co.knoc.sitectrl.mgr.MgrSession"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>

<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="govPublicManager" scope="page" class="kr.co.knoc.gov_public.GovPublicManager" />
	
<% request.setCharacterEncoding("euc-kr"); %>

<%
	MgrSession ms = (MgrSession)request.getSession().getAttribute("ADMINSESSION");
	if(ms == null || (ms != null && (Integer.parseInt(ms.getUserLevel()) > 5))){
		out.print("<script>alert('���ٱ����� �����ϴ�.');history.back();</script>");
	}
%>

<%
	MgrSession mgrSession = (MgrSession)session.getAttribute("ADMINSESSION");

	GovPublicBean gb = new GovPublicBean();
	GovPublicFileBean gfb = new GovPublicFileBean();
	
	boolean result = false;
	String mode = "INSERT";
	String params = "?";
	
	String gpk = "";
	try{
		String file_path = EtcUtil.ETC_UPLOAD_ROOT + File.separator + "BOARD_05" + File.separator;
		File file = new File(file_path);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		MultipartRequest mReq = new MultipartRequest(request, file_path, 20*1024*1024, "EUC-KR", new DefaultFileRenamePolicy());
		
		gpk = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("gpk")));
		params += "gpk=" + gpk;
		params += "&page=" + EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("page")));
		params += "&search_type=" + EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("search_type")));
		params += "&search_keyword=" + EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("search_keyword")));
		
		//����÷�� start
		String gov_public_file_seq = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("gov_public_file_seq")));
		gfb.setGov_public_file_seq(gov_public_file_seq.length()>0?Integer.parseInt(gov_public_file_seq):0);
		
		Random random = new Random();
		boolean extensionSuccess = true;
		
		if(mReq.getFile("gov_public_file") != null && mReq.getFile("gov_public_file").exists()){
	    	
			String today = StringUtil.getCurrentDate("yyyyMMddHHmmssSSS");
			File savedFile = mReq.getFile("gov_public_file");
			String savedName = mReq.getFilesystemName("gov_public_file");
		    
			if(savedName != null && !"".equals(savedName)) {		    			    	
				/* ���� Ȯ���� �˻� */
				if(!EtcUtil.checkAllowedExtension("BOARD_05", savedFile.getName())){
					extensionSuccess = false;	
				}

				String ext = savedName.toLowerCase().substring(savedName.lastIndexOf(".")+1);
				gfb.setOrg_file_nm(savedName);
		        gfb.setSave_file_nm(today + "1" + random.nextInt(1000) + "."  + ext);
		        gfb.setFile_path(file_path);
		        File newFile = new File(file_path + gfb.getSave_file_nm());
		        savedFile.renameTo(newFile);		        		      
		        
		        if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		    }
	    }	   

	    if(!extensionSuccess){
			/* Delete uploaded files */
		    if(mReq.getFile("gov_public_file") != null && mReq.getFile("gov_public_file").exists()){		    				    
			    File savedFile = mReq.getFile("gov_public_file");
			    if(savedFile != null && savedFile.exists()){
			        savedFile.delete();
			    }
		    }
%>
			<stl:msgBack msg="�����Ͻ� ������ ���ε� �Ͻ� �� �����ϴ�."/>
<%
			return;
		}
		//����÷�� end
		
		String gov_public_nid = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("gov_public_nid")));
		String gov_public_kind = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("gov_public_kind")));
		String title = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("title")));
		String department = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("department")));
		String public_time = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("public_time")));
		String public_cycle = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("public_cycle")));
		String public_link = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(mReq.getParameter("public_link")));
		String reg_id = mgrSession.getUserID();
		
		if(gov_public_nid.length() > 0){
			mode = "UPDATE";
			gb.setGov_public_nid(Integer.parseInt(gov_public_nid));	
		}
		gb.setGov_public_kind(Integer.parseInt(gov_public_kind));
		
		String[] gov_public_kind_nm_arr = {
				"ȸ����Ȳ", "HSEQ", "����", "�����ȹ", 
				"������", "��ȸ����", "�λ纹��", "�����繫", 
				"�������", "�������", "��������", "��������", 
				"�˶�������", "��������", "ȫ��"
			};
		
		gb.setGov_public_kind_nm(gov_public_kind_nm_arr[Integer.parseInt(gov_public_kind)-1]);
		gb.setTitle(title);
		gb.setDepartment(department);
		gb.setPublic_time(public_time);
		gb.setPublic_cycle(public_cycle);
		gb.setPublic_link(public_link);
		gb.setReg_id(reg_id);
		
		if(gov_public_nid.length() == 0){
			result = govPublicManager.insertGovPublic(gb, gfb);
		}else{
			gfb.setGov_public_nid(Integer.parseInt(gov_public_nid));
			result = govPublicManager.updateGovPublic(gb, gfb);
		}
		
	}catch(Exception e){
		e.printStackTrace();
		throw e;
	}
%>

<%if(!result){ %>
<script type="text/javascript">
	alert("<%="INSERT".equals(mode)?"���":"UPDATE".equals(mode)?"����":"����" %>�� �����Ͽ����ϴ�.");
	history.back();
</script>
<%
		return;
	} else {		
%>
<script type="text/javascript">
	alert("<%="INSERT".equals(mode)?"���":"UPDATE".equals(mode)?"����":"����" %> �Ǿ����ϴ�.");
    location.href = "board_05.jsp<%="INSERT".equals(mode)?"?gpk="+gpk:"UPDATE".equals(mode)?params:"" %>";
</script>
<% 	
  	}
%> 



