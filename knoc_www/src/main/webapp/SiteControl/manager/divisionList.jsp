<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.division.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="DivisionMa" scope="page" class="kr.co.knoc.division.DivisionListManager" />
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

    application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "�μ�����";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	ArrayList al = DivisionMa.getDivisionList();		
%>
<%@ include file="../inc/top.jsp" %>
<script language="javascript">	
	function jsWrite() {
		var f = document.wform;
		if (f.d_name.value == "") {
			alert("�μ����� �Է��� �ּ���.");
			f.d_name.focus();
		} else if (f.d_tell1.value == "" || f.d_tell2.value == "" || f.d_tell3.value == "") {
			alert("��ȭ��ȣ�� �Է��� �ּ���.");
			f.d_tell1.focus();
		} else if (!isNum(f.d_tell1.value) || !isNum(f.d_tell2.value) || !isNum(f.d_tell3.value)) {
			alert("��ȭ��ȣ�� ���ڸ� ����մϴ�.");
			f.d_tell1.focus();			
		} else {
			f.submit();
		}
	}
	
	function jsDelete() {
		var ff = document.bform;
	    if (!isSelect(document.bform, "d_code")) {
	        alert("������ �Խù��� �����ϼ���.");
	        return;
	    }
	    if (confirm("������ �Ͻðڽ��ϱ�?")) {	
	    	ff.action = "divisionDeleteOk.jsp";
	        ff.submit();
	
	    }
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
</script>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="195" valign="top">  
<%@ include file = "left.jsp" %>  
</td>  
<td valign=top>
	<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
	<tr>
	<td valign="top" align=center>
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td valign="top">			
			<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> �����ڰ��� > �μ�����</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�����ڰ��� > �μ�����</span></td>
			</tr>
			<tr>
			<td height="2" colspan="2" bgcolor="EAEAEC"></td>
			</tr>
			</table>
			<table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td></td>
			</tr>
			</table>				
<!-- ROW ���� -->	
			<table width="80%"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5" align=center>
<form name=bform method=post action="">				
			<tr height="25"  bgcolor="E7E7E7">
			<td align=center width="60"><a href="JavaScript:selectChkAll(document.bform,'d_code');">����</a></td>
			<td align=center>�μ���</td>
			<td align=center width="110">��ȭ��ȣ</td>
			</tr>    
<%  if(al.size()==0) { %>				
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center colspan=3>��ϵ� �μ��� �����ϴ�.</td>
			</tr>
<% 
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			DivisionListBean dlb = (DivisionListBean)iter.next();
%>																																	
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center><input type="checkbox" name="d_code" value="<%=dlb.getDCode() %>"></td>
			<td align=center><%=dlb.getDName()%></td>
			<td align=center><%=dlb.getDTell()%></td>
			</tr>
<%				
		}
	}
%>				
</form>
			</table>
		</td>
		</tr>
		</table>
		<br>
		<table align=center class=tableBorder border="0" cellpadding="0" cellspacing="0" width="80%">		
		<tr>
		<td align="right">
		<input type=button value=' ���� ' class=button onClick="jsDelete();">
		</td>
		</tr>        
		</table>
		<br>		
		<table width="80%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="wform" method="post" action="divisionWriteOk.jsp">
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�μ���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="d_name" value="" maxlength=100 style="width:100px" class=input></td>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��ȭ��ȣ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="d_tell1" value="" maxlength=3 style="width:25px" class=input>
		- <input type="text" name="d_tell2" value="" maxlength=4 style="width:35px" class=input>
		- <input type="text" name="d_tell3" value="" maxlength=4 style="width:35px" class=input>
		</td>
		<td bgcolor="#FFFFFF" align=center><input type=button value="���" onclick="javascript:jsWrite()"></td>
		</tr>	
</form>		
		</table>		
		<br>
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<%@ include file="../inc/bottom.jsp" %>	