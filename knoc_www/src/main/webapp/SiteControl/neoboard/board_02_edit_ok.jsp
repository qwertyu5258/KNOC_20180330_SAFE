<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<%	request.setCharacterEncoding("euc-kr");	%>
<jsp:useBean id="property" class="com.neoboard.data.Property">
	<jsp:setProperty name="property" property="*"/>
</jsp:useBean>
<jsp:useBean id="auth" class="com.neoboard.data.Authority">
	<jsp:setProperty name="auth" property="*"/>
</jsp:useBean>
<%
	com.neoboard.PropertyManager pm = new com.neoboard.PropertyManager();
	boolean result = pm.updateBoard(property,auth);
	
	String url = "board_02_edit.jsp?bid=" + property.getBoardID();
	if(!result) {
	%><neo:msgBack msg="�Խ��� ������ �����Ͽ����ϴ�."/><%
	}
	else {
		%><neo:msgRedirect msg="�Խ����� �����Ǿ����ϴ�." url="<%=url%>" /><%
	}
%> 