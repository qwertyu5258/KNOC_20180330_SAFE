<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.ebook.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="EbookMa" scope="page" class="kr.co.knoc.ebook.EbookManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "��Ÿ ����";  		// ���� Depth ����
    String gNavSubName = "etc";				// ���� Depth �̸�
    String gNavDepthTitle1 = "05"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

	application.setAttribute("gNavMenuDepth1", "06");
	application.setAttribute("gNavMenuDepth2", "01");
        
	String gNavPage = "EBOOK����";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String key_gbn = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_gbn")));
	String key_word = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_word")));
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));	
%>
<script type="text/javascript">	
	function jsWrite()
	{
		var f = document.wForm;
		if(f.menu[0].selected) {
			alert("�޴��� ������ �ֽñ� �ٶ��ϴ�.");
		} else if(f.title.value == "") {
			alert("������ �Է��� �ֽñ� �ٶ��ϴ�.");
			f.title.focus();
		} else if(f.link.value == "") {
			alert("URL�� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.link.focus();			
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
			<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > EBOOK����</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6"> ��Ÿ ���� > EBOOK����</span></td>
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
		<table width="80%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="wForm" method="post" action="ebookWriteOk.jsp" enctype="multipart/form-data">
<INPUT TYPE="hidden" name="key_gbn" value="<%=key_gbn%>">
<INPUT TYPE="hidden" name="key_word" value="<%=key_word%>">
<INPUT TYPE="hidden" name="page" value="<%=nowpage%>">
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�޴���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="menu">
		<option value="0">== ���� ==</option>
		<option value="1">Annual Report</option>
		<option value="2">�������(���ڻ纸)</option>
		<option value="3">��ȭ</option>
		<option value="4">��Ʈ�θ��̼�</option>
		<option value="5">���������</option>
		<option value="6">������ȭ��</option>
		<option value="7">��������Ʈ(Annual Report)</option>
		</select>
		</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">����</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="title" value="" maxlength=200 style="width:430px" class=input></td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">e-book URL</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="link" value="" maxlength=200 style="width:430px" class=input></td>
		</tr>		
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�̹��� ���ε�</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="file" name="file1" value="" maxlength=200 style="width:350px" class=input></td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">PDF���� ���ε�</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="file" name="file2" value="" maxlength=200 style="width:350px" class=input></td>
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
					<td><input type=button value="���" onclick="javascript:jsWrite()"></td>
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