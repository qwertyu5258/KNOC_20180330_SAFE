<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.banner.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="BannerMa" scope="page" class="kr.co.knoc.banner.BannerManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "��Ÿ ����";  		// ���� Depth ����
    String gNavSubName = "etc";				// ���� Depth �̸�
    String gNavDepthTitle1 = "05"; 			// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 			// Ȩ > ���� > ����1 > ����2 ����

	application.setAttribute("gNavMenuDepth1", "03");
	application.setAttribute("gNavMenuDepth2", "01");
        
	String gNavPage = "��ʰ���";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String search_pageLang = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("search_pageLang")));

	int	no	= (request.getParameter("no")==null)?0:Integer.parseInt(request.getParameter("no"));
	if(no <= 0) {
%>		
	<stl:msgBack msg="�������� �ʴ� �Խù��Դϴ�."/>
<%	
		return;
	}
	BannerBean pb = BannerMa.getBanner(no);
%>
<script type="text/javascript">
	function jsWrite()
	{
		var f = document.wForm;
		if(f.title.value == "") {
			alert("������ �Է��� �ֽñ� �ٶ��ϴ�.");
			f.title.focus();	
		} else {
			f.submit();						
		}		
	}

	function checkFile(c) {
		var fo = eval("document.wForm.filename");
		if(typeof(fo) != "object") return;
		
		if(c.checked) {
			fo.disabled = 0;
		}else {
		fo.disabled = 1;
		}
	}

	function jsDelete() {
	    if (confirm("������ �Ͻðڽ��ϱ�?")) {	
	    	location.href = "bannerDeleteOk.jsp?no=<%=no%>&nowpage=<%=nowpage%>&search_pageLang=<%=search_pageLang %>";	    		
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
			<td><img src="../images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > ��ʰ���</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">��Ÿ ���� > ��ʰ���</span></td>
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
<form name="wForm" method="post" action="bannerEditOk.jsp" enctype="multipart/form-data">
<INPUT TYPE="hidden" name="page" value="<%=nowpage%>">
<INPUT TYPE="hidden" name="no" value="<%=no%>">
<INPUT TYPE="hidden" name="oldFilename" value="<%=pb.getNewFilename()%>">
<INPUT TYPE="hidden" name="search_pageLang" value="<%=search_pageLang%>">

		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">����</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
			<select name="pageLang">
				<option value="KOR" <%="KOR".equals(pb.getPageLang())?"selected":"" %>>����</option>
				<option value="ENG" <%="ENG".equals(pb.getPageLang())?"selected":"" %>>����</option>
			</select>
		</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�Խñ���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<input name="StartDate" type="text" size=15 value="<%=etcutil.checkNull(StringUtil.getDateType(pb.getStartDate(),"-"))%>" readonly  class="input date">
		~ <input name="EndDate" type="text" size=15 value="<%=etcutil.checkNull(StringUtil.getDateType(pb.getEndDate(),"-"))%>" readonly  class="input date">
		</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">ǥ�⿩��</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="radio" name="visibility" value="Y" <% if (etcutil.checkNull(pb.getVisibility()).equals("Y")) { %>checked<% } %>>ǥ��<input type="radio" name="visibility" value="N" <% if (etcutil.checkNull(pb.getVisibility()).equals("N")) { %>checked<% } %>>ǥ�����</td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�Խü���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="shownum">
		<% for (int i = 0; i < 30; i++) { %>
		<option value="<%=i%>" <% if (pb.getShownum() == i) { %>selected<% } %>><%=i %></option>
		<% } %>
		</select>
		</td>
		</tr>				
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">����</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="title" value="<%=pb.getTitle() %>" maxlength=200 style="width:430px" class=input></td>
		</tr>	
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��ũURL</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="text" name="linkurl" value="<%=pb.getLinkUrl() %>" maxlength=200 style="width:430px" class=input></td>
		</tr>
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��ũ���</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;">
		<select name="linkType">
            <option value="_blank" <% if (etcutil.checkNull(pb.getLinkType()).equals("_blank")) { %>selected<% } %>>��â����</option>
			<option value="_top" <% if (etcutil.checkNull(pb.getLinkType()).equals("_top")) { %>selected<% } %>>����â����</option>
		</select>
		</td>
		</tr>	
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">�̹��� ����</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><input type="file" name="filename" value="" maxlength=200 style="width:350px" class=input <% if (pb.getFilename() != null && !pb.getFilename().equals("")) { %>disabled<% } %>> (���̴� 25px�� �����ּ���.)
		<% if (pb.getFilename() != null && !pb.getFilename().equals("")) { %>
		<div style="height:48px;">
			<a tabindex="0"><font style='font-size:8pt;color=gray'>÷������: <b><%=pb.getFilename()%></font></a>
			<br><input title="���ϻ���" type="checkbox" name="fileupdate" id="fileupdate" value="<%=pb.getNo()%>" onclick="checkFile(this);" onkeypress="checkFile(this);">
		<span style="padding-top:3px"><a tabindex="0"><font style='font-size:8pt;color=gray'>���� üũ�ڽ��� �����Ͻø� �̹� ÷�ε� ȭ���� �����˴ϴ�.</font></a></span>
		</div>
		<% } %>
		</td>
		</tr>				
		<tr>
		<td width="100px" height="25" bgcolor="E7E7E7" align="center">��ü �ؽ�Ʈ</td>
		<td bgcolor="#FFFFFF" style="padding-left:10;"><textarea id="alttext" name="alttext" rows="5"  cols="30" style="width:400px"><%=etcutil.checkNull(pb.getAlttext()) %></textarea></td>
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
					<td><input type=button value="����" onclick="javascript:jsWrite()"></td>
					<td></td>
					</tr>
					</table>
				</td>
				</tr>
				</table>
			</td>
			<td width="15"></td>
			<td>
				<table cellSpacing="0" cellPadding="0" border="0" style="color:#4c4c4c;">
				<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" border="0">
					<tr height="22">
					<td></td>
					<td><input type=button value="����" onclick="javascript:jsDelete()"></td>
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