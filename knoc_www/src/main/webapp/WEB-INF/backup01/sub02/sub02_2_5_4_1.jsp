<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>   

<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
	<title>�ѱ��������� - �濵���� �򰡰�� &lt; �����ܺ� �� &lt; �濵���� &lt; �����濵</title>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="pragma" content="no-cache" />
	
	<link rel="stylesheet" type="text/css" href="/include/css/board.css" />
	<link rel="stylesheet" type="text/css" href="/include/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/sub.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/subpage.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/common_2011.css"/>
	<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="/include/css/ie7.css" /><![endif]-->
	<!--[if IE 6]><link rel="stylesheet" type="text/css" href="/include/css/ie6.css" /><![endif]-->
	
<style type="text/css">
	table.listtype {font-size:12px;}	
	table.viewtype {font-size:12px;}
	table.viewtype2 {font-size:12px;}
</style>
	
</head>
<body style="background:#fff;">
	<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="RESULT" adminURL="" sessionName="USERSESSION"/>
</body>
</html>
