<%@page import="kr.co.knoc.sinmungo.MailBean"%>
<%@page import="java.util.Date"%>
<%@page import="com.neoboard.util.DateUtil"%>
 
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String mailTo = "sklee@knoc.co.kr";
	String mailFrom = "webmaster@knoc.co.kr";
	String title = "Great Way�� �ǰ��� ��ϵǾ����ϴ�. ["+DateUtil.getFormattedDate(new Date(), "yyyy-MM-dd HH:mm:ss")+"]";
	String body = "���� :  <br /><br /> ";
	String mailServer = "211.184.74.21";
	String toName ="����";
	String fromName = "webmaster";
	MailBean Mailb = new MailBean(mailTo, mailFrom, title, body, "", toName, fromName, mailServer);
	Mailb.start();
%>
</body>
</html>