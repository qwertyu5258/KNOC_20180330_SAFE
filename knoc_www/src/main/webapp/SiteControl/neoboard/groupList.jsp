<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import="java.util.*,com.neoboard.*,com.neoboard.data.*, com.neoboard.util.EtcUtil" %>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="com.neoboard.data.PageAttribute" scope="request"/>
<%
	String boardID = EtcUtil.strBlockSpecialTags(request.getParameter("bid"));
	String pg = EtcUtil.strBlockSpecialTags(request.getParameter("page"));
	pp.setPage(pg);
	pp.setPageSize("4");
	pp.setPageUrl("");
	PropertyManager pm = new PropertyManager();
	ArrayList grpList = pm.getGroupList(boardID, pp.getNPage(), pp.getNPageSize());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="../share/css/admin.css" rel="stylesheet" type="text/css">
<title>�׷����</title>
</head>
<body leftmargin=0 topmargin=0>
<script language=javascript>
function deleteGroup(bid, grp) {
	if(confirm("�����Ͻðڽ��ϱ�?")){
		var f = document.dform;
		f.bid.value = bid;
		f.grp.value = grp;
		f.submit();
	}
	
}
</script>
<form name=dform style="display:none" method=post action="groupDeleteOk.jsp">
<input type=hidden name=bid>
<input type=hidden name=grp>
</form>
<table cellpadding=1 cellspacing=1 border=0 width=100% bgcolor=#EFEFEF>
<TR bgcolor=#A1A1A1>
<TD style="font-weight:bold;color:white;text-align:center">ID</TD>
<TD style="font-weight:bold;color:white;text-align:center">�̸�</TD>
<TD width="20"  style="font-weight:bold;color:white;text-align:center">&nbsp;</TD>
</TR>
<%
	Iterator itr = grpList.iterator();
	while(itr.hasNext()) {
		Group grp = (Group)itr.next();
%>
	<TR bgcolor=white>
	<TD><%=grp.getGrp() %></TD>
	<TD ><%=grp.getGrpName() %></TD>
	<TD width="20" align=center><a title="����" href="javascript:deleteGroup('<%=boardID%>','<%=grp.getGrp() %>');"><B>x</B></a></TD>
	</TR>
<%
	}
%>
</table>

<BR>
<neo:neoPager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=pm.getGroupListCount(boardID)%>" />
	<table class="pagezig_table" align="center">
		<tr>
			<td><a href="<%=prevBlock.getAnchor("&bid="+boardID)%>"><img src="../images/btn_list_first.gif" alt="ó����������" align=absmiddle></a> <a href="<%=prevPage.getAnchor("&bid="+boardID)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a></td>
			<td class="pagezig">
			<% int ll = 1; %>
			<neo:loop name="pages" loopId="p" className="com.neoboard.data.NeoAnchor">
			<% if ( p.getPage() == pp.getNPage()) { %>
			<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
			<% } else { %>
			<a href="<%=p.getAnchor("&bid="+boardID)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
			<% } %>
			<% ll++; %>
			</neo:loop>
			</td>
			<td><a href="<%=nextPage.getAnchor("&bid="+boardID)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> <a href="<%=nextBlock.getAnchor("&bid="+boardID)%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a></td>
		</tr>
	</table>

<script language=javascript>
function chkGroupId(str) {
	var reg = new RegExp("^[a-zA-Z0-9]{1,12}$");
	return reg.test(str);
}
function doReg(f){
	if(!chkGroupId(f.grp.value)) {
		alert("�׷� ID �� ����, ���� 1~12���Դϴ�.");
		f.grp.focus();
	}
	else if(f.grpName.value =="") {
		alert("�׷� �̸��� �Է��� �ּ���.");
		f.grpName.focus();
	}
	else {
		if(confirm("�׷��� �Է��Ͻðڽ��ϱ�?")) {
			f.submit();
		}
	}
}
</script>
<form name=regform method=post action="groupWriteOk.jsp">
<input type=hidden name="bid" value="<%=boardID %>">
<table cellpadding=0 cellspacing=0 border=0 width=100%>
<TR>
<TD>ID:<input type=text name=grp value="" size=10 maxlength=12></TD>
<TD>�̸�:<input type=text name=grpName value="" size=10 maxlength=16></TD>
<TD align=right><input type=button name=regbtn value="�׷���" onclick="doReg(document.regform);"></TD>
</TR>
</table>
</form>

</body>
</html>