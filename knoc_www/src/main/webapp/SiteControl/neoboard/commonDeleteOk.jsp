<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*,com.neoboard.*,com.neoboard.data.*, com.neoboard.util.*" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<%
	String comGubun = EtcUtil.strBlockSpecialTags(request.getParameter("comGubun"));
	String comID = EtcUtil.strBlockSpecialTags(request.getParameter("comID"));
	String no = EtcUtil.strBlockSpecialTags(request.getParameter("no"));
	PropertyManager pHelper = new PropertyManager();

	String url = "commonList.jsp?comGubun=" + comGubun;
	String msg = comID + "�Խ��� ������ �����Ǿ����ϴ�.";
	String msgback = "�Խ��� ���������� �����Ͽ����ϴ�. ����:" + pHelper.getLastError();
	if(pHelper.deleteCommon(Integer.parseInt(no)) == true) {
%><stl:msgRedirect url="<%=url%>" msg="<%=msg%>"/><%
	} else {
%><stl:msgBack msg="<%=msgback%>"/><%
	}%>