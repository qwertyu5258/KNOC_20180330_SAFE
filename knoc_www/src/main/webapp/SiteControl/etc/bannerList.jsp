<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.banner.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
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
	
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	
	String search_pageLang = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("search_pageLang")),"8859_1");
	if("".equals(search_pageLang)) search_pageLang = "KOR";
	
	ArrayList al = BannerMa.getBannerList(pp.getNPage(), pp.getNPageSize(), search_pageLang);		
	
	int count = BannerMa.getBannerListCount(search_pageLang);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
	
	String addParams = "&search_pageLang="+search_pageLang;
%>
<%@ include file="../inc/top.jsp" %>
<script language="javascript">
	function goFind()
	{
		var t = document.schform;
		t.submit();
	}	
	function edit(no) {
         	document.bForm.action = 'bannerEdit.jsp?search_pageLang=<%=search_pageLang %>';
         	document.bForm.no.value = no;
           	document.bForm.submit();
	}
	function jsWrite() {
		location.href = "bannerWrite.jsp?search_pageLang=<%=search_pageLang %>";
	}
	function getBannerList(p_obj){
		location.href = "bannerList.jsp?search_pageLang=" + p_obj.value; 
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
	<td valign="top">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td valign="top">			
			<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > ��ʰ���</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6"> ��Ÿ ���� > ��ʰ���</span></td>
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
			<table align=center class=tableBorder border="0" cellpadding="0" cellspacing="0" width="100%">			
			<tr>
			<td class=descBorder_r>
			<input type=button value=' ��ʵ��  ' class=button onClick="jsWrite();">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="search_pageLang" onchange="getBannerList(this); return false;">
				<option value="KOR" <%="KOR".equals(search_pageLang)?"selected":"" %>>����</option>
				<option value="ENG" <%="ENG".equals(search_pageLang)?"selected":"" %>>����</option>
			</select>
			</td>
			</tr>        
			</table>	
			<br>		
<!-- ROW ���� -->	
			<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="bForm" method="post" action="bannerList.jsp">
<input type=hidden name=page value="<%=nowpage%>">	
<input type="hidden" name="no" value="">	
			<tr height="25"  bgcolor="E7E7E7">
			<td align=center width="80">��ȣ</td>
			<td align=center width="150">����̹���</td>
			<td align=center>����</td>
			<td align=center width="150">�Ⱓ</td>
			<td align=center width="150">��ü�ؽ�Ʈ</td>
			<td align=center width="80">�����</td>
			</tr>    
<%  if(count==0) { %>				
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center colspan=6>��ϵ� �ڷᰡ �����ϴ�.</td>
			</tr>
<% 
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			BannerBean pb = (BannerBean)iter.next();
%>																																	
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center><%=seq %></td>
			<td align=center><% if (pb.getNewFilename() != null && !pb.getNewFilename().equals("")) { %><img src="/upload/BANNER/<%=pb.getNewFilename() %>" width="130" height="70" /><% } %></td>			
			<td align=center><a href="javascript:edit('<%= pb.getNo() %>')"><%= pb.getTitle() %></a></td>
			<td align=center><%=etcutil.checkNull(StringUtil.getDateType(pb.getStartDate(),"-")) %> ~ <%=etcutil.checkNull(StringUtil.getDateType(pb.getEndDate(),"-")) %></td>
			<td align=center><%=etcutil.checkNull(pb.getAlttext()) %></td>
			<td align=center><%=pb.getRegDateString("yyyy-MM-dd") %></td>
			</tr>
<%				
			seq--;
		}
	}
%>				
			</table>
		</td>
		</tr>
</form>		
		</table>
		<br>		
<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=BannerMa.getBannerListCount(search_pageLang)%>" />
	<table class="pagezig_table" align="center">
		<tr>
			<td><a href="<%=prevBlock.getAnchor(addParams)%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> <a href="<%=prevPage.getAnchor(addParams)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a></td>
			<td class="pagezig">
			<% int ll = 1; %>
			<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
			<% if ( p.getPage() == pp.getNPage()) { %>
			<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
			<% } else { %>
			<a href="<%=p.getAnchor(addParams)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
			<% } %>
			<% ll++; %>
			</stl:loop>
			</td>
			<td><a href="<%=nextPage.getAnchor(addParams)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> <a href="<%=nextBlock.getAnchor(addParams)%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a></td>
		</tr>
	</table>			
		
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<%@ include file="../inc/bottom.jsp" %>	