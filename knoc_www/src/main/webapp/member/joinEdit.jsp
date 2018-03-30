<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.mgr.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MgrMa" scope="page" class="kr.co.knoc.mgr.MgrHelper" />
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","05");
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
		</script><noscript>�α��� �Ͻ� �� �̿� �����Ͻʴϴ�. <a href="login.jsp" title="�α��� �������� �̵��մϴ�.">[GO]</a>�� �����Ͻø� �α��� �������� �̵��մϴ�.</noscript>
</body>
</html>
		<%		
					return;
				}		
	}
	
	MgrDO mgr = MgrMa.queryMgr(userid);
	
	String phone1 = "";
	String phone2 = "";
	String phone3 = "";
	String mobile1 = "";
	String mobile2 = "";
	String mobile3 = "";
	String zipcode1 = "";
	String zipcode2 = "";
	
	int tag1 = 0;
	int tag2 = 0;
	if (mgr.getPhoneNumber() != null && !mgr.getPhoneNumber().equals("")) {
		tag1 = mgr.getPhoneNumber().indexOf("-");
       	tag2 = mgr.getPhoneNumber().indexOf("-", tag1+1);
       	if ((tag1 > 0) && (tag2 > 0))
       	{
       		phone1 = mgr.getPhoneNumber().substring(0, tag1);
            phone2 = mgr.getPhoneNumber().substring(tag1+1, tag2);
            phone3 = mgr.getPhoneNumber().substring(tag2+1, mgr.getPhoneNumber().length());
		}
	}
	if (mgr.getMobileNumber() != null && !mgr.getMobileNumber().equals("")) {
		tag1 = mgr.getMobileNumber().indexOf("-");
	    tag2 = mgr.getMobileNumber().indexOf("-", tag1+1);
	    if ((tag1 > 0) && (tag2 > 0))
	    {
	    	mobile1 = mgr.getMobileNumber().substring(0, tag1);
	        mobile2 = mgr.getMobileNumber().substring(tag1+1, tag2);
	        mobile3 = mgr.getMobileNumber().substring(tag2+1, mgr.getMobileNumber().length());
		}
	}
	if (mgr.getZipcode() != null && !mgr.getZipcode().equals("")) {
		tag1 = mgr.getZipcode().indexOf("-");
	    if (tag1 > 0)
	    {
	    	zipcode1 = mgr.getZipcode().substring(0, tag1);
	        zipcode2 = mgr.getZipcode().substring(tag1+1, mgr.getZipcode().length());
		}
	}
	
	String email_pre = "";
	String email = "";	
	if (mgr.getEmail() != null && !mgr.getEmail().equals("")) {
		String[] email_ar = mgr.getEmail().split("@");
		email_pre = email_ar[0];
		email = email_ar[1];
	}
%>
<%@include file="/include/comheader.jsp"%>
	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->



<script type="text/javascript">
	function do_join()
	{
		var f = document.joinform;
		if(f.passwd.value == "") {
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

	function openZipcode() {
		window.open("/member/pop_post.jsp","pop_post","width=362,height=280,scrollbars=yes");			
	}
	
	function setZipcode(zipcode1,zipcode2,addr1) {
		document.joinform.zipno1.value = zipcode1;
		document.joinform.zipno2.value = zipcode2;
		document.joinform.addr1.value = addr1;
	}
</script>



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
                    &gt; <span class="locanow">ȸ����������</span>
                </div>
                <!--// location: end //-->
            
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_sub_joine.gif" alt="ȸ����������" /></h3>
                </div>
                <div class="members4">
                	<!-- star_���� -->                						
						<!--table-->
					<div>
						<form name="joinform" method="post" action="<%=etcutil.SSL_DOMAIN_URL %>/member/joinEditOk.jsp">
						<input type="hidden" name="userid" value="<%=userid%>" />		
						<table summary="ȸ�������� ������ �� �ֽ��ϴ�.">
						<caption>ȸ���������� ���̺�</caption>
						<colgroup>
						<col width="100px" />
						<col width="500px" />
						</colgroup>
						<tbody>
						<tr>
						<th scope="row" class="th1">�̸�</th>
						<td class="td1"><%=mgr.getName()%></td>
						</tr>
						<tr>
						<th scope="row" class="th1">���̵�</th>
						<td class="cnts1"><%=mgr.getId() %></td>
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
							<input type="text" value="<%=phone1 %>" id="phone1" name="phone1" maxlength="3" class="input" style="width:50px;" title="������ȣ"/> - <input type="text" value="<%=phone2 %>" id="phone2" name="phone2" maxlength="4" class="input" style="width:60px;" title="����"/> -  <input type="text" value="<%=phone3 %>" id="phone3" name="phone3" maxlength="4" class="input" style="width:60px;" title="��ȭ��ȣ ���ڸ�"/></td>
						</tr>
						<tr>
						<th scope="row" class="th1"><label for="mobile1">�ڵ�����ȣ</label></th>
						<td class="cnts1">
							<select id="mobile1" name="mobile1" align="absbottom" title="�ڵ��� ���� ����">
							<option value="010" <% if (mobile1.equals("010")) { %>selected="selected"<% } %>>010</option>
							<option value="011" <% if (mobile1.equals("011")) { %>selected="selected"<% } %>>011</option>
							<option value="016" <% if (mobile1.equals("016")) { %>selected="selected"<% } %>>016</option>
							<option value="017" <% if (mobile1.equals("017")) { %>selected="selected"<% } %>>017</option>
							<option value="018" <% if (mobile1.equals("018")) { %>selected="selected"<% } %>>018</option>
							<option value="019" <% if (mobile1.equals("019")) { %>selected="selected"<% } %>>019</option>
							</select> <input type="text" value="<%=mobile2 %>" id="mobile2" name="mobile2" maxlength="4" class="input" style="width:60px;" title="�ڵ��� ���ڸ�"/> - <input type="text" value="<%=mobile3 %>" id="mobile3" name="mobile3" maxlength="4" class="input" style="width:60px;" title="�ڵ��� ���ڸ�"/></td>
						</tr>
						<tr>
						<th scope="row" class="th1" rowspan="3"><label for="zipno1">�ּ�</label></th>
						<td class="cnts1"><input type="text" value="<%=zipcode1 %>" id="zipno1" name="zipno1" maxlength="3" class="input" style="width:60px;" readonly onclick="openZipcode();return false;" title="�����ȣ ���ڸ�"/> - <input type="text" value="<%=zipcode2 %>" id="zipno2" name="zipno2" maxlength="3" class="input" style="width:60px;" readonly onclick="openZipcode();return false;" title="�����ȣ ���ڸ�"/> <a href="pop_post.jsp" onclick="openZipcode();return false;" title="�����ȣã��(�˾�)"><img src="/images/board/btn_se.gif" align="top" alt="�����ȣã��(�˾�)" style="cursor:pointer" /></a></td>
						</tr>
						<tr>
						<td><label for="addr1" class="blindtext">�����ּ�</label><input type="text" value="<%=mgr.getAddr1() %>" id="addr1" name="addr1" maxlength="200" class="input" style="width:560px;" readonly onclick="openZipcode();return false;" /></td>
						</tr>
						<tr>
						<td><label for="addr2" class="blindtext">���ּ�</label><input type="text" value="<%=mgr.getAddr2() %>" id="addr2" name="addr2" maxlength="200" class="input" style="width:560px;" /></td>
						</tr>
						<tr>
						<th scope="row" class="th1"><label for="email_pre">�̸���</label></th>
						<td class="cnts1"><input type="text" value="<%=email_pre %>" id="email_pre" name="email_pre" maxlength="100" class="input" style="width:60px;" /> @ <label for="email_post" class="blindtext">�����ε��</label><input type="text" value="<%=email %>" id="email_post" name="email_post" maxlength="100"  class="input" style="width:60px;" title="������ ���" />
							<select id="email" name="email" onChange="javascript:automail()" align="absbottom" title="�����μ���">
							<option value="" <% if (email.equals("")) { %>selected="selected"<% } %>>�����Է�</option>
							<option value="chol.com" <% if (email.equals("chol.com")) { %>selected="selected"<% } %>>chol.com</option>
							<option value="dreamwiz.com" <% if (email.equals("dreamwiz.com")) { %>selected="selected"<% } %>>dreamwiz.com</option>
							<option value="empal.com" <% if (email.equals("empal.com")) { %>selected="selected"<% } %>>empal.com</option>
							<option value="freechal.com" <% if (email.equals("freechal.com")) { %>selected="selected"<% } %>>freechal.com</option>
							<option value="gmail.com" <% if (email.equals("gmail.com")) { %>selected="selected"<% } %>>gmail.com</option>
							<option value="hanafos.com" <% if (email.equals("hanafos.com")) { %>selected="selected"<% } %>>hanafos.com</option>
							<option value="hanmail.com" <% if (email.equals("hanmail.com")) { %>selected="selected"<% } %>>hanmail.com</option>
							<option value="hitel.net" <% if (email.equals("hitel.net")) { %>selected="selected"<% } %>>hitel.net</option>
							<option value="hotmail.com" <% if (email.equals("hotmail.com")) { %>selected="selected"<% } %>>hotmail.com</option>
							<option value="korea.com" <% if (email.equals("korea.com")) { %>selected="selected"<% } %>>korea.com</option>
							<option value="lycos.co.kr" <% if (email.equals("lycos.co.kr")) { %>selected="selected"<% } %>>lycos.co.kr</option>
							<option value="nate.com" <% if (email.equals("nate.com")) { %>selected="selected"<% } %>>nate.com</option>
							<option value="naver.com" <% if (email.equals("naver.com")) { %>selected="selected"<% } %>>naver.com</option>
							<option value="netian.com" <% if (email.equals("netian.com")) { %>selected="selected"<% } %>>netian.com</option>
							<option value="paran.com" <% if (email.equals("paran.com")) { %>selected="selected"<% } %>>paran.com</option>
							<option value="yahoo.com" <% if (email.equals("yahoo.com")) { %>selected="selected"<% } %>>yahoo.com</option>
							<option value="yahoo.co.kr" <% if (email.equals("yahoo.co.kr")) { %>selected="selected"<% } %>>yahoo.co.kr</option>
							</select>
						</td>
						</tr>
						<tr>
						<th scope="row" class="th1">�̸��ϼ���</th>
						<td class="cnts1"><label for="letter1"><input type="radio" value="Y" id="letter1" name="letter" <% if (mgr.getLetter().equals("Y")) { %>checked="checked"<% } %> />����</label>
							<label for="letter2"><input type="radio" value="N" id="letter2" name="letter" <% if (mgr.getLetter().equals("N")) { %>checked="checked"<% } %> />�������� ����</label>
						</td>
						</tr>
						<tr>
						<th scope="row" class="th1"><label for="job">����</label></th>
						<td class="cnts1">
							<select id="job" name="job">
							<option value="��/��/����л�" <% if (mgr.getJob().equals("��/��/����л�")) { %>selected="selected"<% } %>>��/��/����л�</option>
							<option value="����(��)��" <% if (mgr.getJob().equals("����(��)��")) { %>selected="selected"<% } %>>����(��)��</option>
							<option value="������" <% if (mgr.getJob().equals("������")) { %>selected="selected"<% } %>>������</option>
							<option value="�ڿ���" <% if (mgr.getJob().equals("�ڿ���")) { %>selected="selected"<% } %>>�ڿ���</option>
							<option value="������" <% if (mgr.getJob().equals("������")) { %>selected="selected"<% } %>>������</option>
							<option value="�����" <% if (mgr.getJob().equals("�����")) { %>selected="selected"<% } %>>�����</option>
							<option value="������" <% if (mgr.getJob().equals("������")) { %>selected="selected"<% } %>>������</option>
							<option value="������" <% if (mgr.getJob().equals("������")) { %>selected="selected"<% } %>>������</option>
							<option value="�Ƿ���" <% if (mgr.getJob().equals("�Ƿ���")) { %>selected="selected"<% } %>>�Ƿ���</option>
							<option value="������" <% if (mgr.getJob().equals("������")) { %>selected="selected"<% } %>>������</option>
							<option value="����" <% if (mgr.getJob().equals("����")) { %>selected="selected"<% } %>>����</option>
							<option value="����" <% if (mgr.getJob().equals("����")) { %>selected="selected"<% } %>>����</option>
							<option value="��Ÿ" <% if (mgr.getJob().equals("��Ÿ")) { %>selected="selected"<% } %>>��Ÿ</option>							
							</select>
						</td>
						</tr>
						</tbody>	
						</table>
						<!--//table-->
						<!-- end_���� -->
						<div class="btnCen"><input type="image" src="/images/member/btn_pre_agree01.gif" alt="ȸ���������� "border="0" style="cursor:pointer" onclick="do_join(); return false;" />&nbsp;&nbsp;<a href="joinEdit.jsp" onclick="javascript:history.back();"><img src="/images/member/btn_pre_can.gif" alt="��� " border="0"/></a></div>
		</form>						
					</div>
				</div>
            </div>
        </div>
    
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
</body>
</html>