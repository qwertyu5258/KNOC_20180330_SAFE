<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.neoboard.data.*, com.neoboard.* , com.neoboard.session.* " %>
<%@taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<!--
	�ڷ��01 �б� ��Ų 
--> 
<jsp:useBean id="bm" class="com.neoboard.NeoBoardManager" scope="page" />
<%
	request.setCharacterEncoding("euc-kr");
	
	int	num	= (request.getParameter("num")==null)?1:Integer.parseInt(request.getParameter("num"));		
	
	Property propBean = new Property();
	Search search = new Search();
	Article article = new Article();
	
	propBean.setBoardID("ERROR");
	
	article = bm.getArticle(num,propBean,search);	
%>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<table width=640px cellpadding=0 cellspacing=0 border=0>
<tr>
<td><%=article.getContent()%></td>
</tr>
</table>