<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.mgr.*"%>    
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MgrMa" scope="page" class="kr.co.knoc.mgr.MgrHelper" />		
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<title>ȸ��Ż�� ó�� ������ �Դϴ�.</title>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="cache-control" content="no-cache" /><meta http-equiv="pragma" content="no-cache" />
	<link rel="stylesheet" type="text/css" href="/include/css/board.css" />
	<link rel="stylesheet" type="text/css" href="/include/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/sub.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/subpage.css" />
</head>
<body>
<%   
	MgrSession mem_ses = (MgrSession)session.getAttribute("USERSESSION");
	String userid = "";
	if (mem_ses == null) {
%>
<script type="text/javascript">
	alert("�α��� �Ͻ� �� �̿� �����Ͻʴϴ�.");
	history.back();
</script><noscript>�α��� �Ͻ� �� �̿� �����Ͻʴϴ�. <a href="login.jsp" title="�α��� �������� �̵��մϴ�.">[GO]</a>�� �����Ͻø� �α��� �������� �̵��մϴ�.</noscript>
<%		
		return;		
	} else {
		userid = mem_ses.getUserID();
	}
   	
   	if (userid == null || userid.equals("")) {
%>
<script type="text/javascript">
		alert("�߸��� ȣ���Դϴ�.");
		history.back();
</script><noscript>�߸��� ȣ���Դϴ�. <a href="secession.jsp" title="ȸ��Ż�� �������� �̵��մϴ�.">[GO]</a>�� �����Ͻø� ȸ��Ż�� �������� �̵��մϴ�.</noscript>	
<%   	
		return;
   	}   	
	
	boolean result = MgrMa.deleteMgr(userid);   		
	
	if (!result) {
%>
<script type="text/javascript">
	alert("ȸ��Ż�� �����Ͽ����ϴ�.");
	history.back();
</script><noscript>ȸ��Ż�� �����Ͽ����ϴ�.<a href="secession.jsp" title="ȸ��Ż�� �������� �̵��մϴ�.">[GO]</a>�� �����Ͻø� ȸ��Ż�� �������� �̵��մϴ�.</noscript>
<%
		return;
	} else {
		session.removeAttribute("USERSESSION");
		session.invalidate();	
%>
<script type="text/javascript">
	alert("ȸ��Ż�� �Ϸ�Ǿ����ϴ�.");
    location.href = "/index.jsp";
</script><noscript>ȸ��Ż�� �Ϸ�Ǿ����ϴ�.<a href="/index.jsp" title="���� �������� �̵��մϴ�.">[GO]</a>�� �����Ͻø� ���� �������� �̵��մϴ�.</noscript>
<% 	
  	}
%>
</body>
</html>
