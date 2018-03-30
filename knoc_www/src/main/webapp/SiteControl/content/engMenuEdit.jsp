<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.content.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MenuMa" scope="page" class="kr.co.knoc.content.EngMenuManager" />		
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "�޴�����";  		// ���� Depth ����
    String gNavSubName = "content";				// ���� Depth �̸�
    String gNavDepthTitle1 = "03"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "�����޴�����";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	int no = request.getParameter("no") == null ? 0 : Integer.parseInt(request.getParameter("no"));
	String depth1 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("depth1")),"8859_1");
	if (no <=0) {
%>
<script language="javascript">
	alert("�߸��� ȣ���Դϴ�.");
	history.back();
</script>
<%	
		return;
	}
	EngMenuBean mb = MenuMa.getMenu(no);
	
	String menu = "";

	// ���Ⱦ��� ��ġ 2016.03.21 ECJ
	// �޴�üũ����
	if(mb.getMCode() == null || mb.getMCode().substring(0,2).length() != 2 ){
%>
<script language="javascript">
	alert("�߸��� �޴��Դϴ�.");
	history.back();
</script>
<%				
		return;
	}// ���Ⱦ��� �޴�üũ����		
	
	if (mb.getMCode().substring(0,2).equals("01")) { 
		menu = "Who we are";
	} else if (mb.getMCode().substring(0,2).equals("02")) { 
		menu = "Corporate Responsibility";
	} else if (mb.getMCode().substring(0,2).equals("03")) { 
		menu = "Operations";
	} else if (mb.getMCode().substring(0,2).equals("04")) { 
		menu = "Investor Relations";
	} else if (mb.getMCode().substring(0,2).equals("05")) { 
		menu = "Service";
	} else if (mb.getMCode().substring(0,2).equals("06")) { 
		menu = "E&P Technology Institute";	
	} else if (mb.getMCode().substring(0,2).equals("07")) { 
		menu = "Site Search";	
	}
	menu += MenuMa.getMenuName(mb.getMCode());
%>
<script type="text/javascript">
	function jsEdite()
	{
		var f = document.f_regi;
		if(f.name.value == "") {
			alert("�޴����� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.name.focus();	
		} else if(f.url.value == "") {
			alert("���ϰ�θ� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.url.focus();		
		} else {
			f.action = "engMenuEditOk.jsp";
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
			<td><img src="../images/admin_left_03.gif" width="11" height="11"> �޴����� > �����޴�����</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�޴����� > �����޴�����</span></td>
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
		<td>�޴�����</td>
		</tr>
		</table>
		<table width="80%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="f_regi" method="post" action="engMenuEdit.jsp">
<input type="hidden" name="no" value="<%=no %>">
<input type="hidden" name="depth1" value="<%=depth1 %>">
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�޴����</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><%=menu %></td>
		</tr>			
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�޴���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="name" value="<%=mb.getName() %>" maxlength=100 style="width:400px" class=input></td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">���ϰ��</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="url" value="<%=etcutil.checkNull(mb.getUrl()) %>" maxlength=100 style="width:400px" class=input></td>
		</tr>				
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��뿩��</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type=radio name="status" value="Y" <% if (etcutil.checkNull(mb.getStatus()).equals("Y")) { %>checked<% } %>>���
		<input type=radio name="status" value="N" <% if (etcutil.checkNull(mb.getStatus()).equals("N")) { %>checked<% } %>>������</td>
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
					<td><input type=button value="����" onclick="javascript:jsEdite()"></td>
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