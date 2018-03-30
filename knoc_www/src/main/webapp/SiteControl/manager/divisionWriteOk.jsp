<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.division.*"%>    
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="DivisionMa" scope="page" class="kr.co.knoc.division.DivisionListManager" />		
<% request.setCharacterEncoding("euc-kr"); %>
<%   
	String d_name =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("d_name")),"8859_1");
    String d_tell1 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("d_tell1")),"8859_1");
    String d_tell2 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("d_tell2")),"8859_1");
    String d_tell3 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("d_tell3")),"8859_1");
    String d_tell = d_tell1 + "-" + d_tell2 + "-" + d_tell3;
   	
	DivisionListBean dlb = new DivisionListBean();

	dlb.setDName(d_name);
	dlb.setDTell(d_tell);

	boolean result = DivisionMa.insertDivisionList(dlb);   		
	
	if (!result) {
%>
<script language="javascript">
	alert("�μ������ �����Ͽ����ϴ�.");
	history.back();
</script>
<%
		return;
	} else {		
%>
<script type="text/javascript">
	alert("�μ������ �Ϸ�Ǿ����ϴ�.");
    location.href = "divisionList.jsp";
</script>
<% 	
  	}
%>