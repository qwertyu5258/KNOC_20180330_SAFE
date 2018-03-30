<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.content.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MenuMa" scope="page" class="kr.co.knoc.content.MenuManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "�޴� �� ������ ����";  		// ���� Depth ����
    String gNavSubName = "content";				// ���� Depth �̸�
    String gNavDepthTitle1 = "03"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "�޴�����";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String depth1 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("depth1")),"8859_1");
	if (depth1 == null || depth1.equals("")) {
		depth1 = "01";
	}
	String depth2 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("depth2")),"8859_1");
	if (depth2 == null || depth2.equals("")) {
		depth2 = "00";
	}
	String depth3 =  etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("depth3")),"8859_1");
	if (depth3 == null || depth3.equals("")) {
		depth3 = "00";
	}
	String depth4 = "00";		
	String mcode = depth1 + depth2 + depth3 + depth4;
	if (mcode == null || mcode.equals("") || mcode.equals("00")) {
		mcode = "01000000";
	}
	ArrayList al01 = MenuMa.getMenu1List(depth1);
	if (depth2 != null && !depth2.equals("00")) {
		al01 = MenuMa.getMenu2List(depth1+depth2);
	}
	if (depth3 != null && !depth3.equals("00")) {
		al01 = MenuMa.getMenu3List(depth1+depth2+depth3);
	}
%>
<%@ include file="../inc/top.jsp" %>
<script language=javascript>
	var g_board_Arr = new Array();
	function Obj_Board(no,name,mcode)
	{
		this.no = no;
		this.name = name;
		this.mcode = mcode;		
	}
<%
	Iterator iter = al01.iterator();
	int i = 0;
	while(iter.hasNext()){		
		MenuBean mb = (MenuBean)iter.next();		
%>
	g_board_Arr[<%=i%>]=new Obj_Board("<%=mb.getNo()%>","<%=mb.getName()%>","<%=mb.getMCode()%>");
<%
		i++;
	}
%>

function do_up()
{
	var ub = document.boardform.menu;
	if(ub.selectedIndex<0)
	{
		alert("�޴� ��Ͽ��� �ϳ��� ������ �ּ���.");
		return;
	}
	if(ub.selectedIndex==0) 
	{
		return;
	}
	document.act_form.action = "menuDoUp.jsp";
	document.act_form.mno.value = g_board_Arr[ub.selectedIndex].no;
	document.act_form.mno2.value = g_board_Arr[ub.selectedIndex-1].no;
	document.act_form.mcode.value = g_board_Arr[ub.selectedIndex].mcode;
	
	document.act_form.submit();
}
function do_down()
{
	var ub = document.boardform.menu;
	if(ub.selectedIndex<0)
	{
		alert("�޴� ��Ͽ��� �ϳ��� ������ �ּ���.");
		return;
	}
	if(ub.selectedIndex==ub.options.length-1) 
	{
		return;
	}
	document.act_form.action = "menuDoDown.jsp";
	document.act_form.mno.value = g_board_Arr[ub.selectedIndex].no;
	document.act_form.mno2.value = g_board_Arr[ub.selectedIndex+1].no;
	document.act_form.mcode.value = g_board_Arr[ub.selectedIndex].mcode;
	
	document.act_form.submit();
}

function init()
{
	var sb = document.boardform.menu;
	for(i=0;i<g_board_Arr.length;i++)
	{
		sb.options[sb.options.length] = new Option(g_board_Arr[i].name,g_board_Arr[i].no);
	}
}
</script>
<body leftmargin=0 topmargin=0 border=0 onload="init();">
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="195" valign="top">  
<%@ include file = "left.jsp" %>  
</td>  
<td valign=top>
	<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
	<tr>
	<td valign="top">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td valign="top">			
			<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> �޴� ���� > �޴�����</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�޴� ���� > �޴�����</span></td>
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
<form name=act_form action="" method="post">
<input type=hidden name=mno value="">
<input type=hidden name=mno2 value="">
<input type=hidden name=mcode value="">
<input type=hidden name=name value="">
<input type=hidden name=depth1 value="<%=depth1 %>">
<input type=hidden name=depth2 value="<%=depth2 %>">
<input type=hidden name=depth3 value="<%=depth3 %>">
<input type=hidden name=depth4 value="<%=depth4 %>">
</form>	
<form name=boardform>			
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">1Depth</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="depth1" onChange="document.boardform.submit();">
		<option value="01" <% if (depth1.equals("01")) { %>selected<% } %>>����Ұ�</option>
		<option value="02" <% if (depth1.equals("02")) { %>selected<% } %>>�����濵</option>
		<option value="03" <% if (depth1.equals("03")) { %>selected<% } %>>����Ұ�</option>
		<option value="04" <% if (depth1.equals("04")) { %>selected<% } %>>������</option>		
		<option value="05" <% if (depth1.equals("05")) { %>selected<% } %>>��������</option>		
		<option value="06" <% if (depth1.equals("06")) { %>selected<% } %>>�����������</option>
		<option value="12" <% if (depth1.equals("12")) { %>selected<% } %>>���簳�߼���</option>			
		<option value="07" <% if (depth1.equals("07")) { %>selected<% } %>>���</option>
		<option value="08" <% if (depth1.equals("08")) { %>selected<% } %>>�̻�ȸ</option>
		<option value="09" <% if (depth1.equals("09")) { %>selected<% } %>>��Ÿ����</option>
		<option value="10" <% if (depth1.equals("10")) { %>selected<% } %>>����Ʈ�˻�</option>
		<option value="11" <% if (depth1.equals("11")) { %>selected<% } %>>���̹�ȫ����</option>	
	
		</select>
		</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">2Depth</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="depth2" onChange="document.boardform.submit();">
		<option value="00">== ���� ==</option>		
		<%=MenuManager.getMCodeSelect2(mcode) %>				
		</select>
		</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">3Depth</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="depth3" onChange="document.boardform.submit();">
		<option value="00">== ���� ==</option>		
		<%=MenuManager.getMCodeSelect3(mcode) %>				
		</select>
		</td>
		</tr>	
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�޴�����Ʈ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
			<table border="0" cellspacing="0" cellpadding="0">
			<tr>
			<td>
			<select name=menu size=20 style="width:400px">
			</select>
			</td>
			</tr>
			<tr>
			<td height="5"></td>
			</tr>
			<tr>
			<td class="tbright">
				<table border="0" cellspacing="0" cellpadding="0">
				<tr>
				<td><input type=button value="�����̵�" onclick="javascript:do_up()"></td>
				<td width=10></td>
				<td><input type=button value="�Ʒ����̵�" onclick="javascript:do_down()"></td>
				</tr>
				</table>
			</td>
			</tr>
			</table>
		</td>
		</tr>
</form>		
		</table>
	
	
	
		</td>
		</tr>
		</table>		
		<br>					
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<%@ include file="../inc/bottom.jsp" %>	