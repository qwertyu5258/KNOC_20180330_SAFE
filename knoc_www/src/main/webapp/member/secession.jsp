<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","06");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>    
<% request.setCharacterEncoding("euc-kr"); %>

<%
	MgrSession mem_ses = (MgrSession)session.getAttribute("USERSESSION");
	String userid = "";
	if (mem_ses == null) {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<title>ȸ������ ���� ó�� ������ �Դϴ�.</title>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="cache-control" content="no-cache" /><meta http-equiv="pragma" content="no-cache" />
	<link rel="stylesheet" type="text/css" href="/include/css/board.css" />
	<link rel="stylesheet" type="text/css" href="/include/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/sub.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/subpage.css" />
</head>
<body>
<script type="text/javascript">
	alert("�α��� �Ͻ� �� �̿� �����Ͻʴϴ�.");
	history.back();
</script><noscript>�α��� �Ͻ� �� �̿� �����Ͻʴϴ�. <a href="login.jsp" title="�α��� �������� �̵��մϴ�.">[GO]</a>�� �����Ͻø� �α��� �������� �̵��մϴ�.</noscript>
</body>
</html>
<%		
		return;		
	} else {
		userid = mem_ses.getUserID();
		if (userid.equals("guest")) {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<title>ȸ������ ���� ó�� ������ �Դϴ�.</title>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="cache-control" content="no-cache" /><meta http-equiv="pragma" content="no-cache" />
	<link rel="stylesheet" type="text/css" href="/include/css/board.css" />
	<link rel="stylesheet" type="text/css" href="/include/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/sub.css" />
    <link rel="stylesheet" type="text/css" href="/include/css/subpage.css" />
</head>
<body>
<script type="text/javascript">
	alert("�α��� �Ͻ� �� �̿� �����Ͻʴϴ�.");
	history.back();
</script>
</body>
</html>
<%		
			return;
		}
	}
%>
<%@include file="/include/comheader.jsp"%>
  <!--// subtopNavi: start //-->
  <%@include file="/include/subtopnavi_new.jsp"%>

    <div id="contents">
        <%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
        <div id="rightarea">
            <div id="subcnts">
               <%@include file="/include/subtop_member.jsp"%>
                <!--// location: start //-->
                <div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">ȸ��Ż��</span></div>
        <!--// location: end //-->
            
                <div class="pagetle">
                    <h3 ><img src="/images/member/ttl_secession.gif" alt="ȸ��Ż��" /></h3>
                </div>
                <div id="boardsec" align="center">
               	  <p><img src="../images/member/img_secession_01.gif" alt="! | ȸ���� Ż���Ͻø� �� ����Ʈ���� �����ϴ� ���񽺿� ������ �ް� �Ǹ�, ���Խ� ����ϼ̴� ȸ������ ������ ��� �����˴ϴ�. �簡���� ���Ͻ� ��� ȸ������ �޴��� �̿��Ͽ� �簡���Ͽ��ֽñ� �ٶ��ϴ�." /></p>
				  <p class="pt20"><a href="secessionOk.jsp" title="ȸ�� Ż���ϱ�"><img src="../images/member/btn_secession.gif" alt="ȸ�� Ż���ϱ�" /></a></p>
              </div>
            </div>
      </div>
    
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
