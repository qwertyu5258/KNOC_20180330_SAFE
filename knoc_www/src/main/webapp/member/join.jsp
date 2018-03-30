<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.mgr.*"%>    
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MgrMa" scope="page" class="kr.co.knoc.mgr.MgrHelper" />		
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	
	Kcookie.setCookie(response , "okurl","/member/login.jsp" );
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>     
<% request.setCharacterEncoding("euc-kr"); %>
<%!
    String getSession(HttpSession session, String attrName)
    {
        return session.getAttribute(attrName) != null ? (String)session.getAttribute(attrName) : "";
    }
%>
<%
	String name = getSession(session, "realName");
	String msg = "G-PIN������ ���� �ʾҽ��ϴ�.";
	String url = "/member/pre_join_1.jsp";
	if( name == null || name.equals("")){ 
%>
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
		<html lang="en">
		<head>
		<title>�������� Ȩ�������� ���Ű��� ȯ���մϴ�.</title>
		<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
		<meta http-equiv="refresh" content="30;url=<%=url%>" >
		</head>
		<body>
		<script type="text/javascript" >
		//<![CDATA[
		//<!--
		alert("<%=msg%>");
		location.href = "<%=url%>";
		//-->
		//]]>

		</script><noscript>
		<%=msg%> <a href="<%=url%>" >[Ȯ��]</a>
		</noscript>
		</body>
		</html> 
<%
			return;
	}

	String virtualno = getSession(session, "virtualNo");
	String gpin_aq_service_site_user_confirm = getSession(session, "GPIN_AQ_SERVICE_SITE_USER_CONFIRM");


	boolean checkVirtualno = MgrMa.checkVirtualNo(virtualno);
   	if (checkVirtualno) {
%>
<script type="text/javascript">
		alert("�̹� ��ϵ� ȸ�� �Դϴ�.");
		history.back();
</script>	
<%   	
		return;
   	}
%>

<%@include file="/include/comheader.jsp"%>

<script type="text/javascript" language="javascript">
	function do_join()
	{
		var f = document.joinform;
		if(f.userid.value == "") {
			alert("���̵� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.userid.focus();			
		} else if (f.userid.value.length < 4 || f.userid.value.length > 10) {
			alert("���̵�� �����ҹ��ڿ� ���ڿ��� �������� 4~10���Դϴ�.");
			f.userid.focus();	
		} else if(document.loginchkform.idck.value != "OK") {
			alert("���̵� �ߺ�Ȯ���� ���ֽñ� �ٶ��ϴ�.");
			f.userid.focus();			
			return false;
		} else if(f.passwd.value == "") {
			alert("��й�ȣ�� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.passwd.focus();		
		} else if (f.passwd.value.length < 5 || f.passwd.value.length > 10) {
			alert("�����ȣ�� �����ҹ��ڿ� ������ �������� 5~10���Դϴ�.");
			f.passwd.focus();
		} else if(f.passwd.value != f.passwd2.value) {
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			f.passwd.focus();				
		} else if(f.phone1.value =="" || f.phone2.value =="" || f.phone3.value =="") { 
			alert("��ȭ��ȣ�� �Է��� �ֽñ� �ٶ��ϴ�"); 
			f.phone1.focus(); 
		} else if(!isNum(f.phone1.value) || !isNum(f.phone2.value)  || !isNum(f.phone3.value)) { 
			alert("��ȭ��ȣ�� ���ڸ��� ����մϴ�."); 
			f.phone1.focus(); 
		} else if(!isNum(f.mobile1.value) || !isNum(f.mobile2.value)  || !isNum(f.mobile3.value)) { 
			alert("�ڵ�����ȣ�� ���ڸ��� ����մϴ�."); 
			f.mobile1.focus(); 
		} else if(f.email_pre.value == "" || f.email_post.value == "") {
			alert("�̸��� �ּҸ� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.email_pre.focus();	
		} else {
			f.submit();						
		}		
	}
	
	function automail(){
		var am = document.joinform.email.value;
		document.joinform.email_post.value = am;
	}

	
	function isNum(str)
	{
		var vString = "1234567890";
		for (var i=0 ;i<str.length;i++)
		{
			if(vString.indexOf(str.charAt(i)) <0)
			{
				return false;
			}
		}
		return true;
	}	
	
	function idCheck() {
		var frm = document.loginchkform;
		if (document.joinform.userid.value == "") {
			alert("���̵� �Է��� �ֽñ� �ٶ��ϴ�.");
			document.joinform.userid.focus();
			return false;
		} else {
			window.open("","pop_id","width=302,height=202,scrollbars=no");
			frm.userid.value = document.joinform.userid.value;
			frm.target = "pop_id";
			frm.action = "pop_id.jsp";
			frm.submit();
			return false;
		}
	}
	
	function openZipcode() {
		window.open("/member/pop_post.jsp","pop_post","width=362,height=280,scrollbars=yes");			
	}
	
	function setZipcode(zipcode1,zipcode2,addr1) {
		document.joinform.zipno1.value = zipcode1;
		document.joinform.zipno2.value = zipcode2;
		document.joinform.addr1.value = addr1;
	}
</script>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

    <div id="contents">
    <%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
    
        <div id="rightarea">
            <div id="subcnts">
               <%@include file="/include/subtop_member.jsp"%>
                <!--// location: start //-->
                <div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
                    &gt; <span>��Ÿ����</span>
                    &gt; <span>ȸ������</span>
                    &gt; <span class="locanow">ȸ������</span>
                </div>
                <!--// location: end //-->
            
                <!-- [2009-09-29 ǥ���ڵ��� ���� ����] �ۼ���:������ -->
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_join.gif" alt="ȸ������" /></h3>
                </div>
                <div class="members4">
                	<!-- star_���� -->
                	<div class="step"><img src="../images/member/tit_step03.gif" alt="03.�������Է�-�پ��� ���񽺸� �̿��غ�����" />
						<ul class="stepCon">
						<li class="mL0"><img src="../images/member/img_step01.gif" alt="STEP 01.�������" /></li>
						<li><img src="../images/member/img_step02.gif" alt="STEP 02.����Ȯ��" /></li>
						<li><img src="../images/member/img_step03on.gif" alt="STEP 03.�������Է�(����������)" /></li>
						<li><img src="../images/member/img_step04.gif" alt="STEP 04.���ԿϷ�" /></li>
						</ul>
					</div>
						<!--table-->
					<div class="mT20" id="boardsecss">
					<table cellspacing="0" cellpadding="0" class="viewtypess" summary="ȸ�������� ���� �������� �Է��մϴ�.">
					<caption>ȸ������ �������Է�</caption>
					<colgroup><col width="100px" /><col width="500px" /></colgroup>
<form name="loginchkform" method="post" action="">					
<input type="hidden" name="idck" value="" />	
<input type="hidden" name="userid" value="" />	
</form>							
<form name="joinform" method="post" action="<%=etcutil.SSL_DOMAIN_URL %>/member/joinOk.jsp">

						<tr>
							<th scope="row" class="th1">�̸�</th>
							<td class="td1"><%=name%></td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="userid">���̵�</label></th>
							<td class="cnts1"><input type="text" value="" id="userid" name="userid" maxlength="20" class="input" style="width:100px;" /> <a href="pop_id.jsp" onclick="idCheck();return false;" title="�˾�â"><img src="../images/member/btn_pass.gif" alt="ID�ߺ�Ȯ��" style="cursor:pointer" /></a></td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="passwd">��й�ȣ</label></th>
							<td class="cnts1"><input type="password" value="" id="passwd" name="passwd" maxlength="32" class="input" style="width:100px;" /></td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="passwd2">��й�ȣȮ��</label></th>
							<td class="cnts1"><input type="password" value="" id="passwd2" name="passwd2" maxlength="32" class="input" style="width:100px;" /> </td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="phone1">��ȭ��ȣ</label></th>
							<td class="cnts1">
							<input type="text" value="" id="phone1" name="phone1" maxlength="3" class="input" style="width:50px;"  title="������ȣ"/> - <input type="text" value="" id="phone2" name="phone2" maxlength="4" class="input" style="width:60px;" title="����"/> - <input type="text" value="" id="phone3" name="phone3" maxlength="4" class="input" style="width:60px;"  title="��ȭ��ȣ ���ڸ�"/></td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="mobile1">�ڵ�����ȣ</label></th>
							<td class="cnts1">
							<select id="mobile1" name="mobile1" align="absbottom" title="�ڵ��� ��������">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select><input type="text" value="" id="mobile2" name="mobile2" maxlength="4" class="input" style="width:60px;" title="�ڵ��� ���ڸ�"/> - <input type="text" value="" id="mobile3" name="mobile3" maxlength="4" class="input" style="width:60px;"  title="�ڵ��� ���ڸ�"/></td>
						</tr>
						<tr>
							<th scope="row" class="th1" rowspan="3"><label for="zipno1">�ּ�</label></th>
							<td class="cnts1"><input type="text" value="" id="zipno1" name="zipno1" maxlength="3" class="input" style="width:60px;" readonly onclick="openZipcode();return false" title="�����ȣ ���ڸ�"/> - <input type="text" value="" id="zipno2" name="zipno2" maxlength="3" class="input" style="width:60px;" readonly onclick="openZipcode();return false"  title="�����ȣ ���ڸ�"/> <a href="pop_post.jsp" onclick="openZipcode();return false" title="�˾�â"><img src="/images/board/btn_se.gif" align="top" alt="�����ȣã��" style="cursor:pointer" /></a></td>
						</tr>
						<tr>
							<td><input type="text" value="" id="addr1" name="addr1" maxlength="200" class="input" style="width:560px;" readonly onclick="openZipcode();" title="�⺻�ּ�"/></td>
						</tr>
						<tr>
							<td><input type="text" value="" id="addr2" name="addr2" maxlength="200" class="input" style="width:560px;"  title="���ּ�"/></td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="email_pre">�̸���</label></th>
							<td class="cnts1"><input type="text" value="" id="email_pre" name="email_pre" maxlength="100" class="input" style="width:60px;" /> @ <label for="email_post" class="blindtext">������ ���</label><input type="text" value="" id="email_post" name="email_post" maxlength="100"  class="input" style="width:60px;" />
							<select id="email" name="email" onchange="javascript:automail()" align="absbottom" title="������ ����">
								<option value="" selected="selected">�����Է�</option>
								<option value="chol.com">chol.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="empal.com">empal.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanafos.com">hanafos.com</option>
								<option value="hanmail.com">hanmail.com</option>
								<option value="hitel.net">hitel.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="korea.com">korea.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="nate.com">nate.com</option>
								<option value="naver.com">naver.com</option>
								<option value="netian.com">netian.com</option>
								<option value="paran.com">paran.com</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
							</select>
							</td>
						</tr>
						<tr>
							<th scope="row" class="th1">�̸��ϼ���</th>
							<td class="cnts1"><input type="radio" value="Y" id="letter1" name="letter" checked="checked" /><label for="letter1">����
</label>
							<input type="radio" value="N" id="letter2" name="letter" /><label for="letter2">�������� ����
</label>
							</td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="job">����</label></th>
							<td class="cnts1">
							<select id="job" name="job">
								<option value="-- ���� --" selected="selected">-- ���� --</option>
								<option value="��/��/���">��/��/���</option>
								<option value="����(��)��">����(��)��</option>
								<option value="������">������</option>
								<option value="�ڿ���">�ڿ���</option>
								<option value="������">������</option>
								<option value="�����">�����</option>
								<option value="������">������</option>
								<option value="������">������</option>
								<option value="�Ƿ���">�Ƿ���</option>
								<option value="������">������</option>
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="��Ÿ">��Ÿ</option>
							</select>
							</td>
						</tr>
					
					</table>
					<!--//table-->
                    <!-- end_���� -->
					<div class="btnCen"><input type="image" src="/images/member/btn_pre_agree01.gif" alt="ȸ������" onclick="do_join();return false;" style="width:87px; height:21px;"/>&nbsp;&nbsp;<a href="/index.jsp" onclick="history.back();return false;" ><img src="/images/member/btn_pre_can.gif" alt="��� " border="0" style="cursor:pointer" /></a></div>
				</form>	
                </div>
            </div>
        </div>
		<!-- G-PIN����Ʈ�� �Ѱ��� userid�� ���ǻ���  -->
	    <% session.setAttribute("userid", null); %>
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
</body>
</html>