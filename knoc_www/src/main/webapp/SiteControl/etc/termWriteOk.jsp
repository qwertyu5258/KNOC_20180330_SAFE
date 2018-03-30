<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*"%>    
<%@ page import = "com.oreilly.servlet.MultipartRequest"%>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>    
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.term.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="TermMa" scope="page" class="kr.co.knoc.term.TermManager" />		
<% request.setCharacterEncoding("euc-kr"); %>
<% 
	TermBean pb = new TermBean();
			    
	try{

		String korean = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("korean")),"8859_1");
		String english = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("english")),"8859_1");
		String chinese = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("chinese")),"8859_1");
		String content = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("content")),"8859_1");

		pb.setKorean(korean);
		pb.setEnglish(english);
		pb.setChinese(chinese);
		pb.setContent(content);
	
	}catch(Exception e){
		out.println(e.toString());
	}

	boolean result = TermMa.insertTerm(pb);

	if (!result) {
%>
<script type="text/javascript">
	alert("������� �����Ͽ����ϴ�.");
	history.back();
</script>
<%
		return;
	} else {		
%>
<script type="text/javascript">
	alert("������� �Ϸ�Ǿ����ϴ�.");
    location.href = "termList.jsp";
</script>
<% 	
  	}
%>  
