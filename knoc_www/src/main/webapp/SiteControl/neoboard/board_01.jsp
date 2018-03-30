<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import="kr.co.knoc.sitectrl.mgr.*" %>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "�Խ��ǰ���";  		// ���� Depth ����
    String gNavSubName = "neoboard";				// ���� Depth �̸�
    String gNavDepthTitle1 = "04"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

    application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "�Խ��ǻ���";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	MgrSession ses = (MgrSession)session.getAttribute("ADMINSESSION");
	String userLevel = ""; 
	if (ses != null) {
		if (ses.getUserLevel().equals("") || !ses.getUserLevel().equals("1")) {
%>
<script language="javascript">
	alert("���� ������ �����ϴ�.");
	history.back();
</script>
<%			
			return;
		}		
	}
%>
<jsp:include flush="true" page="../inc/top.jsp" />

<script language=javascript>
function checkField(obj, type, length) {
	if(obj.value == "") return;
	var value = obj.value;
	if(type == "number") {
		if(length == null) {
			var reg = RegExp("^[0-9]+$");
			if(!reg.test(value)) msgFocus(obj,"���ڸ� �Է��� �ּ���.");
		}
		else {
			var reg = RegExp("^[0-9]{" + length + "}$");
			if(!reg.test(value)) msgFocus(obj,length + "�ڸ� ���ڸ� �Է��� �ּ���.");
		}
		
	}
	else if(type == "alpha") {
		if(length == null) {
			var reg = RegExp("^[a-zA-Z]+$");
			if(!reg.test(value)) msgFocus(obj,"�����ڸ� �Է��� �ּ���.");
		}
		else {
			var reg = RegExp("^[a-zA-Z]{" + length + "}$");
			if(!reg.test(value)) msgFocus(obj,length + "�ڸ� �����ڸ� �Է��� �ּ���.");
		}
	}
	else if(type == "alphanumeric"){ 
		if(length == null) {
			var reg = RegExp("^[a-zA-Z0-9,\-]+$");
			if(!reg.test(value)) msgFocus(obj,"���� �Ǵ� ���ڸ� ','�Է��� �ּ���.");
		}
		else {
			var reg = RegExp("^[a-zA-Z0-9,\-]{" + length + "}$");
			if(!reg.test(value)) msgFocus(obj,length + "�ڸ��� ���� �Ǵ� ���� ','�� �Է��� �ּ���.");
		}
	}
}
function msgFocus(obj,msg) {
	alert(msg);
	obj.focus();
	obj.select();
}

function saveBoard(f) {
	if(f == null) f = document.boardform;
	if(f.categoryID.selectedIndex == 0 ) {
		alert("ī�װ��� ������ �ּ���");
		return;
	}
	if(f.boardName.value == "") {
		alert("�Խ��� �̸��� �Է��� �ּ���.");
		return;
	}
	if(f.boardID.value == "") {
		alert("�Խ��� ���̵��� �Է��� �ּ���.");
		return;
	}
	if(f.skinID.selectedIndex == 0) {
		alert("�Խ��� ��Ų�� ������ �ּ���.");
		return;
	}
	if(f.maxSubjectLength.value == "") {
		alert("���� �ִ� ���� ���� �Է��� �ּ���.");
		return;
	}
	if(f.listPerPage.value == "") {
		alert("�������� ��� ���� �Է��� �ּ���.");
		return;
	}
	if(f.pagePerBlock.value == "") {
		alert("���� ������ ���� �Է��� �ּ���.");
		return;
	}	
	if(f.maxUpload.value =="") {
		alert("�ִ� ÷��ȭ�� �뷮�� �Է��� �ּ���.");
		return;
	}
	
	f.categoryName.value = f.categoryID.options[f.categoryID.selectedIndex].text;
	f.skinName.value = f.skinID.options[f.skinID.selectedIndex].text;
	if(confirm(f.boardName.value + " �Խ����� �����Ͻðڽ��ϱ�?")) {
		f.submit();
	}
}

function openCommon(comGubun) {
	window.open("commonList.jsp?comGubun="+comGubun, "common", "width=400px; height=400px; scrollbars=yes;");
}
</script>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="195" valign="top">  
<jsp:include flush="true" page="left.jsp"/>
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
			<td><img src="../images/admin_left_03.gif" width="11" height="11"> �Խ��� ���� > �Խ��� ����</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�Խ��� ���� > �Խ��� ����</span></td>
			</tr>
			<tr>
			<td height="2" colspan="2" bgcolor="EAEAEC"></td>
			</tr>
			</table>

<form name=boardform action="board_01_ok.jsp" method=post>
				<table cellSpacing="0" cellPadding="0" border="0" width="100%">
				<col width="55%" />
				<col width="6" />
				<col />
				<tr valign="top">
					<td>
						<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
						<col width="125" align="center" />
						<col />
						<tr height="25">
							<td align="center" colSpan="2" style="background:#E7E7E7; color:#000;padding-left:10px">�Խ��� ����</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">�Խ���ī�װ�</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input type=hidden name=categoryName value="">
								<select style="width:160;" name=categoryID>
									<option value="">----------����----------</option>
									<%=com.neoboard.PropertyManager.getCommons("CATE","")%>													
								</select> <input type=button value=" �Խ���ī�װ� ���� " style="height:19px" onclick="openCommon('CATE');">
							</td> 
						</tr>			
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;">�Խ��Ǹ�</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input type="text" style="width:160; heigth:20;" name=boardName maxlength=32 value=""><br>
								(�ѱ� 32��, ���� 64�� �̳�)
							</td>
						</tr>			
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">�Խ���ID</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input type="text" style="width:160; heigth:20;" name=boardID maxlength=8 onblur="checkField(this,'alphanumeric');"><BR>
								���� ���� ���� 8 �� �̳��� �Է��� �ּ���.(�ʼ�)
							</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">�Խ���Ÿ��</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<select style="width:160;" name=boardType>
									<option value="DEFAULT" selected>�⺻��</option>
									<option value="SANGDAM">�����</option>
									<option value="INFOOPEN">����������</option>
								</select>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�Խ��ǽ�Ų</td>
							<input type=hidden name=skinName value="">
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<select style="width:160;" name=skinID>
									<option value="">----------����----------</option>	
									<%=com.neoboard.PropertyManager.getCommons("SKIN","")%>													
								</select> <input type=button value=" �Խ��ǽ�Ų ���� " style="height:19px" onclick="openCommon('SKIN');">
							</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">���� �ִ� ���ڼ�</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input type="text" value="90" style="width:160; heigth:20;" name=maxSubjectLength onblur="checkField(this,'number');">
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�������� ��� ��</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input type="text" value=12 style="width:160; heigth:20;" name=listPerPage onblur="checkField(this,'number');">
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">���� ������ ��</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input type="text" value=10 style="width:160; heigth:20;" name=pagePerBlock onblur="checkField(this,'number');">
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�Խ��ǻ�ܿ�<br>����� ����</td>
							<td style="padding-top:7; padding-bottom:7; padding-left:10;" bgcolor="#FFFFFF">
								<textarea name=topIncludeText style="width:90%; height:50;"></textarea>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�Խ����ϴܿ�<br>����� ����</td>
							<td style="padding-top:7; padding-bottom:7; padding-left:10;" bgcolor="#FFFFFF">
								<textarea name=bottomIncludeText style="width:90%; height:50;"></textarea>
							</td>
						</tr>
						<tr height="30">
							<td style="padding-top:5; padding-bottom:3; background:#f9f9f9; color:#000;padding-left:10px">��� ����</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000; font-size:11;">
								<tr>
									<td><input type="checkbox" style="border:0px" name=useRegistration value="1" checked></td>
									<td style="padding-top:2;">���</td>
									<td><input type="checkbox" style="border:0px" name=useReply value="1" checked></td>
									<td style="padding-top:2;">�亯</td>
									<td><input type="checkbox" style="border:0px" name=useEdit value="1" checked></td>
									<td style="padding-top:2;">����</td>
									<td><input type="checkbox" style="border:0px" name=useDelete value="1" checked></td>
									<td style="padding-top:2;">����</td>
								</tr>
								<tr>
									<td><input type="checkbox" style="border:0px" name=useComment value="1" checked></td>
									<td style="padding-top:2;">���</td>
									<td><input type="checkbox" style="border:0px" name=useImageView value="1" checked></td>
									<td style="padding-top:2;">�̹����Խ���</td>
									<td><input type="checkbox" style="border:0px" name=useSecret value="1"></td>
									<td style="padding-top:2;">��б�</td>
									<td><input type="checkbox" style="border:0px" name=useNotice value="1"></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�α��� ����</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name=useAuth value="1" checked></td>
									<td style="padding-top:2;">�α��� üũ</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name=useAuth value="0"></td>
									<td style="padding-top:2;">�α��� üũ����</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">÷�� ���ε� Ȯ����</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input name=allowedExtension type="text" style="width:110; heigth:20;">�� ������ ��� �������� ����
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">÷�� ���ε� �뷮</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input name=maxUpload type="text" style="width:110; heigth:20;" value="10000" onblur="checkField(this,'number');">
								KB ����
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">÷�� ���� ���� ����</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<select style="width:160;" name=maxFileAttach>
								<option value="0">����
								<option value="1">1��
								<option value="2" selected>2��
								<option value="3">3��
								<option value="4">4��
								<option value="5">5��
								<option value="6">6��
								<option value="7">7��
								<option value="8">8��
								<option value="9">9��
								<option value="10">10��
								</select>
								
							</td>
						</tr>

						<tr height="30">
							<td style="padding-top:5; padding-bottom:3; background:#f9f9f9; color:#000;padding-left:10px">�׷��� ���</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000000;">
								<tr>
									<td><input type="radio" style="border:0px" name=useGroup value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name=useGroup value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
								
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">����ǥ�� ��뿩��</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name="useNew" value="1" checked></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name="useNew" value="0"></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="padding-top:5; padding-bottom:3; background:#f9f9f9; color:#000;padding-left:10px">����ǥ�� ����ϼ�</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">���Ϻ��� 
								<select style="width:40;" name=newLimit>
								<option value="1" selected>1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								</select> �ϱ���
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�α��ǥ�� ��뿩��</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name="useCool" value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name="useCool" value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="padding-top:5; padding-bottom:3; background:#f9f9f9; color:#000;padding-left:10px">�α�� ��ȸ��</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">��ȸ�� 
								<input name=coolLimit type="text" style="width:40; heigth:20;" value="100" onblur="checkField(this,'number');">�̻�
							</td>
						</tr>
<script language=javascript>
function enableMailing(s) {
	if(s.selectedIndex == 0 ){
		var dd = document.getElementById("MAILINGCONFIG");
		if(dd) dd.style.display = "none";
	}
	else {
		var dd = document.getElementById("MAILINGCONFIG");
		if(dd) dd.style.display = "block";
	}
}
</script>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">���ϱ�ɻ�뿩��</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td>
									<select name=useMailing onchange="enableMailing(this);">
									<option value="0">������</option>
									<option value="W">�۵�Ͻ� ���</option>
									<option value="WR">�۵��,�亯��Ͻ� ���</option>
									<option value="EWR">�ۼ���,�۵��,�亯��Ͻ� ���</option>
									<option value="E">�ۼ����� ���</option>
									<option avlue="ER">�ۼ���,�亯��Ͻ� ���</option>
									<option avlue="WE">�۵��,�ۼ����� ���</option>									
									<option value="R">�亯 ��Ͻ� ���</option>
									</select>
									</td>
								</tr>
								</table>
								<div id="MAILINGCONFIG" style="display:none">
								<table cellSpacing="1" cellPadding="3" border="0" width=100% style="color:#000000;" bgcolor="#FFFFFF">
								<TR>
								<TD bgcolor="#EFEFEF" width=100>���� ������ ���</td>
								<TD bgcolor="#FFFFFF"><input name=mailFrom type="text" style="width:98%; heigth:20;" value=""><BR>������ ����� �������� ������ �� ������� �̸����� ����մϴ�.</TD>
								</tr>
								<TR>
								<TD bgcolor="#EFEFEF" width=100>���� �޴� ���</td>
								<TD bgcolor="#FFFFFF"><input name=mailTo type="text" style="width:98%; heigth:20;" value=""><BR>�޴� ����� �������� ������ �۵������ �̸��Ϸ� ������ �߼��մϴ�.</TD>
								</tr>
								<TR>
								<TD bgcolor="#EFEFEF" width=100>���ϼ���</td>
								<TD bgcolor="#FFFFFF"><input name=mailServer type="text" style="width:98%; heigth:20;" value="localhost"></TD>
								</tr>
								<TR>
								<TD bgcolor="#EFEFEF" width=100>���ϼ�������</td>
								<TD bgcolor="#FFFFFF"><input name=mailAccount type="text" style="width:98%; heigth:20;" value=""></TD>
								</tr>
								<TR>
								<TD bgcolor="#EFEFEF" width=100>���ϼ���������й�ȣ</td>
								<TD bgcolor="#FFFFFF"><input name=mailPasswd type="text" style="width:98%; heigth:20;" value=""></TD>
								</tr>
								</table>
								<table cellSpacing="1" cellPadding="2" border="0" width=100% style="color:#000000;" bgcolor="#FFFFFF">
								<TR>
								<TD bgcolor="#EFEFEF" align=center height=22>���� Template</TD>
								</TR>
								<TR>
								<TD><textarea name=mailTemplate rows=6 cols=20 style="width:99%">[##�̸�##]���� [##����##]�� [##������##]�� [##�����##] �� ����̽��ϴ�.

�Խù� URL : [##�Խù�URL##]</textarea>
[##�̸�##] : �ۼ��� �̸�<br>
[##�����##] : �� �ۼ���<br>
[##����##] : �� ����, ���� ����<br>
[##������##] : ���� ����(�Ϲݱ�,�亯��,����)<br>
[##����##] : �� ����<br>
[##�Խù�URL##] : �Խù��� URL<br>
</TD>
								</TR>
								</table>
								</div>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">��ø(�Խñ� �̵�,�ߺ��Է�)���</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name="useDouble" value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name="useDouble" value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">RSS��뿩��</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name="useRss" value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name="useRss" value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">������URL ��뿩��</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name="useMovie" value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name="useMovie" value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">�Խ��� ��뿩��</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000;">
								<tr>
									<td><input type="radio" style="border:0px" name="status" value="1" checked></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name="status" value="0"></td>
									<td style="padding-top:2;">���</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">������</td>
							<td style="padding-top:7; padding-bottom:7; padding-left:10;" bgcolor="#FFFFFF">
								<textarea name=banwd style="width:90%; height:50;"></textarea>
								<br>(","�� ������ �ּ���.)
							</td>
						</tr>
						<tr height="30">
							<td style="background:#EBEBEB; color:#000;padding-left:10px">����IP</td>
							<td style="padding-top:7; padding-bottom:7; padding-left:10;" bgcolor="#FFFFFF">
								<textarea name=banIp style="width:90%; height:50;"></textarea>
								<br>(","�� ������ �ּ���.)
							</td>
						</tr>
						<tr height="30">
							<td style="padding-top:5; padding-bottom:3; background:#f9f9f9; color:#000;padding-left:10px">���հ˻� ���</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000000;">
								<tr>
									<td><input type="radio" style="border:0px" name=useSearch value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name=useSearch value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
								
							</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">������ ���</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input name=pageUrl type="text" style="width:210; heigth:20;">
								<br>�� �˻����� ������ �̵��ÿ� �ʿ��մϴ�.
								<br>(����� �������� ������ ��θ� �Է��� �ּ���.)
							</td>
						</tr>
						<tr height="30">
							<td style="padding-top:5; padding-bottom:3; background:#f9f9f9; color:#000;padding-left:10px">SMS ���</td>
							<td style="padding-left:6;" bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" style="color:#000000;">
								<tr>
									<td><input type="radio" style="border:0px" name=useSms value="1"></td>
									<td style="padding-top:2;">���</td>
									<td width="42"></td>
									<td><input type="radio" style="border:0px" name=useSms value="0" checked></td>
									<td style="padding-top:2;">������</td>
								</tr>
								</table>
								
							</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">SMS �޼���</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input name=smsText type="text" style="width:210; heigth:20;">
							</td>
						</tr>
						<tr height="30">
							<td style="background:#f9f9f9; color:#000;padding-left:10px">SMS �޴»�� ��ȣ</td>
							<td style="padding-left:10;" bgcolor="#FFFFFF">
								<input name=smsNumber type="text" style="width:210; heigth:20;">
								<br>(��������� ��� ";"�� ������ �ּ���.  ��)010-2222-3333;011-5555-6666;)
							</td>
						</tr>
						</table>
					</td>



					<td></td>



					<td>
						<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#B5B5B5" width="100%" style="margin-top:20; color:#000;">
						<tr height="25">
							<td align="center" style="background:#E7E7E7; color:#000;padding-left:10px">���� ����</td>
						</tr>
						<tr valign="top">
							<td bgcolor="#FFFFFF">
								<table cellSpacing="0" cellPadding="0" border="0" bgcolor="#FFFFFF">
								<col width="9" />
								<col />
								<col width="9" />
								<tr valign="top">
									<td></td>
									<!--�ϴ� ��������-->
									<td width="96%" style="padding-top:10; padding-bottom:150;" bgcolor="#FFFFFF">

										<table cellSpacing="0" cellPadding="0" border="0" style="table-layout:fixed;" bgcolor="#FFFFFF">
										<col width="100" />
										<col />
										<tr valign="top">
											<td>
												<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#B5B5B5" frame="below" rules="rows" width="100%" style="margin-top:26; text-align:center; color:#000000;">
												<tr height="29">
													<td style="background:#EBEBEB;padding-left:10px">����Ʈ ����</td>
												</tr>
												<tr height="30">
													<td style="background:#f9f9f9;padding-left:10px">���뺸��</td>
												</tr>
												<tr height="30">
													<td style="background:#EBEBEB;padding-left:10px">���</td>
												</tr>
												<tr height="30">
													<td style="background:#f9f9f9;padding-left:10px">�亯</td>
												</tr>
												<tr height="30">
													<td style="background:#EBEBEB;padding-left:10px">����</td>
												</tr>
												<tr height="30">
													<td style="background:#f9f9f9;padding-left:10px">����</td>
												</tr>
												<tr height="30">
													<td style="background:#EBEBEB;padding-left:10px">��۾���</td>
												</tr>
												<tr height="30">
													<td style="background:#f9f9f9;padding-left:10px">��ۻ���</td>
												</tr>
												<tr height="30">
													<td style="background:#f9f9f9;padding-left:10px">������</td>
												</tr>
												<tr height="30">
													<td style="background:#f9f9f9;padding-left:10px">�ٿ�ε�</td>
												</tr>
												</table>
											</td>
											<td bgcolor="#FFFFFF">
												<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#B5B5B5" width="100%" style="text-align:center; border-right:none; color:#000;">
												<col width="30%" />
												<col width="70%" />
												<tr height="25">
													<td style="background:#EBEBEB;padding-left:10;">���� ����</td>
													<td style="background:#EBEBEB;padding-left:10;">Ư�� ���̵�</td>
												</tr>
												<tr height="29" bgcolor="#FFFFFF">
													<td style="padding-left:10;" bgcolor="#FFFFFF">
														<select style="width:90%;" name=levelList>
															<option value="1">1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9" selected>9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=listAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelView>
															<option value="1">1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9" selected>9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=viewAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelRegistration>
															<option value="1">1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8" selected>8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=registrationAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelReply>
															<option value="1">1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8" selected>8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=replyAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelEdit>
															<option value="1" selected>1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=editAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelDelete>
															<option value="1" selected>1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=deleteAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelCommentWrite>
															<option value="1">1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8" selected>8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=commentWriteAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelCommentDelete>
															<option value="1" selected>1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=commentDeleteAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelNotice>
															<option value="1" selected>1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9">9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=noticeAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												<tr height="30" bgcolor="#FFFFFF">
													<td style="padding-left:10;">
														<select style="width:90%;" name=levelDown>
															<option value="1">1 ����</option>
															<option value="2">2 ����</option>
															<option value="3">3 ����</option>
															<option value="4">4 ����</option>
															<option value="5">5 ����</option>
															<option value="6">6 ����</option>
															<option value="7">7 ����</option>
															<option value="8">8 ����</option>
															<option value="9" selected>9 ����</option>
														</select>
													</td>
													<td style="padding-left:10;padding-right:10;">
														<input name=downAllowedUser type="text" style="width:100%; heigth:20;" maxlength=200>
													</td>
												</tr>
												</table>
											</td>
										</tr>
										</table>

										<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#B5B5B5" width="100%" style="margin-top:20; text-align:center; border-right:none; color:#000;">
										<col width="120" />
										<col />
										<tr height="30" bgcolor="#FFFFFF">
											<td style="background:#f9f9f9;padding-left:10px">�Խ����Ѱ�������</td>
											<td style="padding-left:10;padding-right:10;">
												<input type="text" style="width:100%; heigth:20;" name=master onblur="checkField(this,'alphanumeric');" maxlength=1500>
											</td>
										</tr>
										</table>

										<div style="margin-top:20; padding-left:10; color:#000;">
											�� Master(����1) �� �Խ��� �Ѱ� �����ڴ� ��� ���� �ο�
											<br>����1 : �Ѱ� ������ (��� ���� �ο�)
											<br>����5 : �μ�������
											<br>����8 : �Ϲ�ȸ��
											<br>����9 : Guest
										</div>
									</td>
									<td></td>
								</tr>
								</table>


						</td>
						</table>
					</td>
				</tr>
				</table>

				<div style="text-align:center; margin-top:10;">
					<input type=button value=" �Խ��� ����� " style="height:19px" onclick="saveBoard();">
				</div>
				<BR>

		</td>
		</tr>
		</table>
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<jsp:include flush="true" page="../inc/bottom.jsp"/>