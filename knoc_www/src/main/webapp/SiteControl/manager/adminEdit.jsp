<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.sitectrl.mgr.*"%>
<%@ page import = "kr.co.knoc.division.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MgrMa" scope="page" class="kr.co.knoc.sitectrl.mgr.MgrHelper" />
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "�����ڰ���";  		// ���� Depth ����
    String gNavSubName = "manager";				// ���� Depth �̸�
    String gNavDepthTitle1 = "01"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

    application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "����������/���Ѽ���";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String key_gbn = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_gbn")),"8859_1");
	String key_word = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_word")),"8859_1");
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")),"8859_1");	
	String userid = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("userid")),"8859_1");	
	
	MgrDO mgr = MgrMa.queryMgr(userid);
	
	String phone1 = "";
	String phone2 = "";
	String phone3 = "";
	String mobile1 = "";
	String mobile2 = "";
	String mobile3 = "";
	String fax1 = "";
	String fax2 = "";
	String fax3 = "";
	
	int tag1 = 0;
	int tag2 = 0;
	if (mgr.getPhone() != null && !mgr.getPhone().equals("")) {
		tag1 = mgr.getPhone().indexOf("-");
       	tag2 = mgr.getPhone().indexOf("-", tag1+1);
       	if ((tag1 > 0) && (tag2 > 0))
       	{
       		phone1 = mgr.getPhone().substring(0, tag1);
            phone2 = mgr.getPhone().substring(tag1+1, tag2);
            phone3 = mgr.getPhone().substring(tag2+1, mgr.getPhone().length());
		}
	}
	if (mgr.getMobile() != null && !mgr.getMobile().equals("")) {
		tag1 = mgr.getMobile().indexOf("-");
	    tag2 = mgr.getMobile().indexOf("-", tag1+1);
	    if ((tag1 > 0) && (tag2 > 0))
	    {
	    	mobile1 = mgr.getMobile().substring(0, tag1);
	        mobile2 = mgr.getMobile().substring(tag1+1, tag2);
	        mobile3 = mgr.getMobile().substring(tag2+1, mgr.getMobile().length());
		}
	}
	if (mgr.getFax() != null && !mgr.getFax().equals("")) {
		tag1 = mgr.getFax().indexOf("-");
	    tag2 = mgr.getFax().indexOf("-", tag1+1);
	    if ((tag1 > 0) && (tag2 > 0))
	    {
	    	fax1 = mgr.getFax().substring(0, tag1);
	        fax2 = mgr.getFax().substring(tag1+1, tag2);
	        fax3 = mgr.getFax().substring(tag2+1, mgr.getFax().length());
		}
	}
%>
<script type="text/javascript">
	function do_edit()
	{
		var f = document.f_regi;
		if(f.name.value == "") {
			alert("�̸��� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.name.focus();
		} 
		/*
		else if(f.userpwd.value == "") {
			alert("��й�ȣ�� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.userpwd.focus();		
		}
		*/
		else if (f.userpwd.value && (f.userpwd.value.length < 4 || f.userpwd.value.length > 12)) {
			alert("�����ȣ�� �����ҹ��ڿ� ������ �������� 4~12���Դϴ�.");
			f.passwd.focus();
		} else if(f.userpwd.value && f.userpwd.value != f.userpwd2.value) {
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			f.passwd.focus();	
		} else {
			f.submit();						
		}		
	}	
</script>
<%@ include file="../inc/top.jsp" %>	
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="195" valign="top">
<%@ include file = "left.jsp" %>    
</td>
<td valign="top">
	<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
	<tr>
	<td valign="top">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td valign="top">
			<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td><img src="../images/admin_left_03.gif" width="11" height="11"> ������ ���� > ����������/���Ѽ���</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">������ ���� > ����������/���Ѽ���</span></td>
			</tr>
			<tr>
			<td height="2" colspan="2" bgcolor="EAEAEC"></td>
			</tr>
			</table>
		</td>
		</tr>
		</table>
		<table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td></td>
		</tr>
		</table>
		<table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
		<tr height=30>
		<td>�����ڱ⺻����</td>
		</tr>
		</table>
		<table width="80%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="f_regi" method="post" action="adminEditOk.jsp">
<INPUT TYPE="hidden" name="key_gbn" value="<%=key_gbn%>">
<INPUT TYPE="hidden" name="key_word" value="<%=key_word%>">
<INPUT TYPE="hidden" name="page" value="<%=nowpage%>">
<INPUT TYPE="hidden" name="userid" value="<%=userid%>">
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�μ���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="d_code">
		<%=DivisionListManager.getDivisionSelect(mgr.getDCode()) %>
		</select>
		</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�̸�</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="name" value="<%=mgr.getName() %>" maxlength=10 style="width:100px" class=input> (������� ���� �ѱ۷θ�)</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">ID</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><%=mgr.getId() %></td>
		</tr>				
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��й�ȣ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="password" name="userpwd" value="" maxlength=10 style="width:100px" class=input> (����,���� ���� 4~12�� - ��ҹ��� ����) </td>
		</tr>	
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��й�ȣȮ��</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="password" name="userpwd2" value="" maxlength=10 style="width:100px" class=input></td>
		</tr>	
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��ȭ��ȣ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="phone1" value="<%=phone1 %>" maxlength=3 style="width:25px" class=input>
		- <input type="text" name="phone2" value="<%=phone2 %>" maxlength=4 style="width:35px" class=input>
		- <input type="text" name="phone3" value="<%=phone3 %>" maxlength=4 style="width:35px" class=input></td>
		</tr>				
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�ڵ�����ȣ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><select name="mobile1">
		<option value="010" <% if (mobile1.equals("010")) { %>selected<% } %>>010</option>
		<option value="011" <% if (mobile1.equals("011")) { %>selected<% } %>>011</option>
		<option value="016" <% if (mobile1.equals("016")) { %>selected<% } %>>016</option>
		<option value="017" <% if (mobile1.equals("017")) { %>selected<% } %>>017</option>		
		<option value="018" <% if (mobile1.equals("018")) { %>selected<% } %>>018</option>		
		<option value="019" <% if (mobile1.equals("019")) { %>selected<% } %>>019</option>		
		</select>
		- <input type="text" name="mobile2" value="<%=mobile2 %>" maxlength=4 style="width:35px" class=input>
		- <input type="text" name="mobile3" value="<%=mobile3 %>" maxlength=4 style="width:35px" class=input></td>
		</tr>	
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�ѽ���ȣ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="fax1" value="<%=fax1 %>" maxlength=3 style="width:25px" class=input>
		- <input type="text" name="fax2" value="<%=fax2 %>" maxlength=4 style="width:35px" class=input>
		- <input type="text" name="fax3" value="<%=fax3 %>" maxlength=4 style="width:35px" class=input></td>
		</tr>					
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�����ּ�</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="email" value="<%=mgr.getEmail() %>" maxlength=40 style="width:400px" class=input></td>
		</tr>					
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��Ÿ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="etc" value="<%=mgr.getEtc() %>" maxlength=100 style="width:400px" class=input></td>
		</tr>		
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�����ڷ���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="u_level">
              <option value="1" <% if (etcutil.checkNull(mgr.getLevel()).equals("1")) { %>selected<% } %>>�Ѱ�������</option>
              <option value="5" <% if (etcutil.checkNull(mgr.getLevel()).equals("5")) { %>selected<% } %>>�μ�������</option>
              </select> 
        </td>
		</tr>
		<tr>
			<td width="100px" height="25" bgcolor="E7E7E7" align="center">��������</td>
			<td bgcolor="#FFFFFF" style="padding-left:10;"><%=mgr.getLastLoginDateTime()%> (<%=mgr.getIp()%>)</td>		
		</tr>
		<tr>
			<td width="100px" height="25" bgcolor="E7E7E7" align="center">�α��ο���ȸ��</td>
			<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="cntError" value="<%=mgr.getCntError() %>" maxlength=10 style="width:100px" class=input></td>
		</tr>
</form>				
		</table>
		<table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
		<td height="10"></td>
		</tr>
		<tr>
		<td align="right">
			<table cellSpacing="0" cellPadding="0" border="0" style="color:#4c4c4c;">
			<tr>
			<td>
				<table cellSpacing="0" cellPadding="0" border="0" style="color:#4c4c4c;">
				<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" border="0">
					<tr height="22">
					<td></td>
					<td><input type=button value="����" onclick="javascript:do_edit()"></td>
					<td></td>
					</tr>
					</table>
				</td>
				</tr>
				</table>
			</td>
			<td width="15"></td>
			<td>
				<table cellSpacing="0" cellPadding="0" border="0">
				<tr height="22">
				<td></td>
				<td><input type=button value="���" onclick="javascript:history.back()"></td>
				<td></td>
				</tr>
				</table>
			</td>
			</tr>
			</table>
		</td>
		</tr>
		<tr>
		<td height="8" align="center"></td>
		</tr>
		</table>
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<%@ include file="../inc/bottom.jsp" %>