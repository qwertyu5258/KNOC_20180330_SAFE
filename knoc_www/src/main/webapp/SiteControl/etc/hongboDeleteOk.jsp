<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*"%>        
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.hongbo.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="HongboMa" scope="page" class="kr.co.knoc.hongbo.HongboManager" />		
<% request.setCharacterEncoding("euc-kr"); %>
<%   	
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String key_gbn = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_gbn")));
	String key_word = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_word")));
	int	no	= (request.getParameter("no")==null)?0:Integer.parseInt(request.getParameter("no"));
	if(no <= 0) {
	%>		
		<stl:msgBack msg="�������� �ʴ� �Խù��Դϴ�."/>
	<%	
		return;
	}
	
	String path = etcutil.ETC_UPLOAD_ROOT + "/HONGBO/";	
	HongboBean hb = HongboMa.getHongbo(no);
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */	
	if(hb !=null){
		if (hb.getNewFilename() != null && !hb.getNewFilename().equals("")) {
			File oldFile = new File(path + "" + hb.getNewFilename());	        		      		        
	        if(oldFile != null && oldFile.exists()){
	        	oldFile.delete();
		    }
		}
	}
	boolean result = HongboMa.deleteHongbo(no);
	
	if (!result) {
%>
<script language="javascript">
	alert("ȫ������������ �����Ͽ����ϴ�.");
	history.back();
</script>
<%
		return;
	} else {		
%>
<script type="text/javascript">
	alert("ȫ������������ �Ϸ�Ǿ����ϴ�.");
    location.href = "hongboList.jsp?page=<%=nowpage%>&key_gbn=<%=key_gbn%>&key_word=<%=key_word%>";
</script>
<% 	
  	}
%>