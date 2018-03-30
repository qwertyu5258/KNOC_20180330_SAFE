<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.faq.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="FaqMa" scope="page" class="kr.co.knoc.faq.FaqManager" />
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

	application.setAttribute("gNavMenuDepth1", "05");
	application.setAttribute("gNavMenuDepth2", "01");
        
	String gNavPage = "FAQ����";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String menu = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("menu")));
	String gubun = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("gubun")));
	if (menu.equals("")) {
		menu = "1";
	}
	if (gubun.equals("")) {
		gubun = "1";
	}
	
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	ArrayList al = FaqMa.getFaqList(menu, gubun, pp.getNPage(), pp.getNPageSize());		
	
	int count = FaqMa.getFaqListCount(menu, gubun);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
%>
<%@ include file="../inc/top.jsp" %>
<script language="javascript">
	function goFind()
	{
		var t = document.schform;
		t.submit();
	}	
	function edit(no) {
         	document.bForm.action = 'faqEdit.jsp';
         	document.bForm.no.value = no;
           	document.bForm.submit();
	}
	function jsWrite() {
		location.href = "faqWrite.jsp";
	}
	function jsDelete(no) {
		var ff = document.bForm;	    
	    if (confirm("������ �Ͻðڽ��ϱ�?")) {	
	    	ff.action = "faqDeleteOk.jsp";
	    	ff.no.value = no;
	        ff.submit();
	
	    }
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
			<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> ��Ÿ ���� > FAQ ����</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6"> ��Ÿ ���� > FAQ ����</span></td>
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
<form name=schform method=post action="faqList.jsp">			
			<tr>
			<td class=descBorder_r>
			<input type=button value=' FAQ ���  ' class=button onClick="jsWrite();">
			</td>
			</tr>        
			</table>
			<br>
			<table align=center border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
			<td class=descBorder_l>			
			</td>
			<td class=descBorder_r>
			�޴� :
		      <select name=menu class=select onchange="document.schform.submit();">
		      <option <% if (!menu.equals("") && menu.equals("1")) { %>selected<% } %> value="1">ä��FAQ</option>
		      <option <% if (!menu.equals("") && menu.equals("2")) { %>selected<% } %> value="2">�����濵Q&A</option>
		      <option <% if (!menu.equals("") && menu.equals("3")) { %>selected<% } %> value="3">������FAQ</option>
		      </select> �з� : 
		      <select name=gubun class=select onchange="document.schform.submit();">
		      <% if (menu.equals("1")) { %>
		      <option <% if (!gubun.equals("") && gubun.equals("1")) { %>selected<% } %> value="1">��������</option>
		      <option <% if (!gubun.equals("") && gubun.equals("2")) { %>selected<% } %> value="2">ä������</option>
		      <option <% if (!gubun.equals("") && gubun.equals("3")) { %>selected<% } %> value="3">�ٹ�����</option>
		      <option <% if (!gubun.equals("") && gubun.equals("4")) { %>selected<% } %> value="4">��Ÿ</option>
		      <% } else if (menu.equals("3")) { %>
		      <option <% if (!gubun.equals("") && gubun.equals("1")) { %>selected<% } %> value="1">�������</option>
		      <option <% if (!gubun.equals("") && gubun.equals("2")) { %>selected<% } %> value="2">��������</option>
		      <option <% if (!gubun.equals("") && gubun.equals("3")) { %>selected<% } %> value="3">��������</option>
		      <option <% if (!gubun.equals("") && gubun.equals("4")) { %>selected<% } %> value="4">�Ϲݻ���</option>
		      <% } %>		      
		      </select>		
				<input type=button value=' �˻� ' class='button' onClick="javascript:goFind();">
			</td>		
			</tr>
			<tr height=10>
			<td></td>
			<td></td>
			</tr>
</form>		
			</table>	
<!-- ROW ���� -->	
			<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="bForm" method="post" action="faqList.jsp">
<input type=hidden name=page value="<%=nowpage%>">		
<input type="hidden" name="menu" value="<%=menu%>">	
<input type="hidden" name="gubun" value="<%=gubun%>">	
<input type="hidden" name="no" value="">	
			<tr height="25"  bgcolor="E7E7E7">
			<td align=center width="80">��ȣ</td>
			<td align=center>����</td>
			<td align=center width="150">����</td>
			</tr>    
<%  if(count==0) { %>				
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center colspan=3>��ϵ� �ڷᰡ �����ϴ�.</td>
			</tr>
<% 
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			FaqBean fb = (FaqBean)iter.next();
%>																																	
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center><%=seq %></td>			
			<td align=center><a href="javascript:edit('<%= fb.getNo() %>')"><%= fb.getTitle() %></a></td>
			<td align=center><input type=button value=' ����' class=button onClick="edit('<%=fb.getNo() %>');"> <input type=button value=' ���� ' class=button onClick="jsDelete('<%=fb.getNo() %>');"></td>
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
<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=FaqMa.getFaqListCount(menu,gubun)%>" />
	<table class="pagezig_table" align="center">
		<tr>
			<td><a href="<%=prevBlock.getAnchor("&menu="+menu+"&gubun="+gubun)%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> <a href="<%=prevPage.getAnchor("&menu="+menu+"&gubun="+gubun)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a></td>
			<td class="pagezig">
			<% int ll = 1; %>
			<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
			<% if ( p.getPage() == pp.getNPage()) { %>
			<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
			<% } else { %>
			<a href="<%=p.getAnchor("&menu="+menu+"&gubun="+gubun)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
			<% } %>
			<% ll++; %>
			</stl:loop>
			</td>
			<td><a href="<%=nextPage.getAnchor("&menu="+menu+"&gubun="+gubun)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> <a href="<%=nextBlock.getAnchor("&menu="+menu+"&gubun="+gubun)%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a></td>
		</tr>
	</table>			
		
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<%@ include file="../inc/bottom.jsp" %>	