<%@page import="com.neoboard.data.AttachFile"%>
<%@page import="java.io.File"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.co.knoc.sitectrl.mgr.MgrSession"%>
<%@page import="java.util.Iterator"%>
<%@page import="kr.co.knoc.gov_public.GovPublicBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>

<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>

<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="govPublicManager" scope="page" class="kr.co.knoc.gov_public.GovPublicManager" />

<% request.setCharacterEncoding("euc-kr"); %>

<%
	MgrSession ms = (MgrSession)request.getSession().getAttribute("ADMINSESSION");
	if(ms == null || (ms != null && (Integer.parseInt(ms.getUserLevel()) > 5))){
		out.print("<script>alert('���ٱ����� �����ϴ�.');history.back();</script>");
	}
%>

<%
	String gpk = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gpk")));
	String nowpage = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("page")));
	
	String search_type = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("search_type")));
	String search_keyword = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("search_keyword")));
	
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
			
	ArrayList<HashMap<String, String>> govPublicList = govPublicManager.getGovPublicListTest(gpk, pp.getNPage(), pp.getNPageSize(), search_type, search_keyword);
	//ArrayList<GovPublicBean> govPublicList = govPublicManager.getGovPublicList(gpk, pp.getNPage(), pp.getNPageSize(), search_type, search_keyword);
	
	int count = govPublicManager.getGovPublicListCount(gpk, search_type, search_keyword);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
%>

<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
    application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","01");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<jsp:include flush="true" page="../inc/top.jsp" />

<script language=javascript>

	function getGovPublicKindList(p_obj){
		location.href = "/SiteControl/neoboard/board_05.jsp?gpk=" + p_obj.value;
	}
	
	function goSearchFn(){
		var fm = document.schFm;
		fm.submit();
	}

	function goWriteFn(){
		location.href = "/SiteControl/neoboard/board_05_edit.jsp?gpk=<%=gpk%>&page=<%=nowpage %>&search_type=<%=search_type %>&search_keyword=<%=search_keyword %>";
	}

	function goModifyFn(p_gov_public_nid){
		location.href = "/SiteControl/neoboard/board_05_edit.jsp?gpk=<%=gpk%>&page=<%=nowpage %>&search_type=<%=search_type %>&search_keyword=<%=search_keyword %>&gov_public_nid=" + p_gov_public_nid;
	}
	function goFileListFn(p_gov_public_nid){		
		location.href = "/SiteControl/neoboard/board_05_filelist.jsp?gpk=<%=gpk%>&page=<%=nowpage %>&search_type=<%=search_type %>&search_keyword=<%=search_keyword %>&gov_public_nid=" + p_gov_public_nid;
	}
	
</script>

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
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
											<td><img src="../images/admin_left_03.gif" width="11" height="11"> �Խ��� ���� &gt; ������������</td>
											<td width="500" align="right" style="padding-right:20;">HOME &gt; <span class="style6">�Խ��� ���� &gt; ������������</span></td>
										</tr>
										<tr>
											<td height="2" colspan="2" bgcolor="EAEAEC"></td>
										</tr>
									</table>
									<table width="100%" height="15" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td></td>
										</tr>
									</table>

									<select name="gpk" onchange="getGovPublicKindList(this);">
										<option value="" <%="".equals(gpk)?"selected":"" %>>��ü</option>
										<option value="1" <%="1".equals(gpk)?"selected":"" %>>ȸ����Ȳ</option>
										<option value="2" <%="2".equals(gpk)?"selected":"" %>>HSEQ</option>
										<option value="3" <%="3".equals(gpk)?"selected":"" %>>����</option>
										<option value="4" <%="4".equals(gpk)?"selected":"" %>>�����ȹ</option>
										<option value="5" <%="5".equals(gpk)?"selected":"" %>>������</option>
										<option value="6" <%="6".equals(gpk)?"selected":"" %>>��ȸ����</option>
										<option value="7" <%="7".equals(gpk)?"selected":"" %>>�λ纹��</option>
										<option value="8" <%="8".equals(gpk)?"selected":"" %>>�����繫</option>
										<option value="9" <%="9".equals(gpk)?"selected":"" %>>�������</option>
										<option value="10" <%="10".equals(gpk)?"selected":"" %>>�������</option>
										<option value="11" <%="11".equals(gpk)?"selected":"" %>>��������</option>
										<option value="12" <%="12".equals(gpk)?"selected":"" %>>��������</option>
										<option value="13" <%="13".equals(gpk)?"selected":"" %>>�˶�������</option>
										<option value="14" <%="14".equals(gpk)?"selected":"" %>>��������</option>
										<option value="15" <%="15".equals(gpk)?"selected":"" %>>ȫ��</option>
									</select>
									
									<div style="clear:both; height:6px;"></div>
									
									<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
										<colgroup>
										<col width="5%">
										<col width="10%">
										<col width="*">
										<col width="10%">
										<col width="5%">
										<col width="5%">
										<col width="24%">
										<col width="7%">
										<col width="12%">  
										</colgroup>
										<tr height="25" bgcolor="E7E7E7">
											<td align="center">��ȣ</td>
											<td align="center">������ϱ���</td>
											<td align="center">�������</td>
											<td align="center">���μ�</td>
											<td align="center">�����ñ�</td>
											<td align="center">�����ֱ�</td>
											<td align="center">��ũ</td>
											<td align="center">���ϵ��</td>
											<td align="center">������� �⺻���� ����</td>
										</tr>
									<%if(count == 0){ %> 
										<tr height="25" bgcolor="#FFFFFF">
											<td align="center" colspan="9">��ϵ� �ڷᰡ �����ϴ�.</td>
										</tr>
									<% 
										}else{
											Iterator<HashMap<String, String>> iter = govPublicList.iterator();
											while(iter.hasNext()){
												HashMap<String, String> hashMap = (HashMap<String, String>)iter.next();
									%>
										<tr height="25" bgcolor="#FFFFFF">
											<td align="center"><%=seq %></td>
											<td align="center"><%=EtcUtil.checkNull(hashMap.get("GOV_PUBLIC_KIND_NM")) %></td>
											<td align="left" style="padding-left:10px;">
												<a href="#view" onclick ="goFileListFn('<%=hashMap.get("GOV_PUBLIC_NID") %>');">
												<strong><%=EtcUtil.checkNull(hashMap.get("TITLE")) %></strong></a>
											</td>
											<td align="center"><%=EtcUtil.checkNull(hashMap.get("DEPARTMENT")) %></td>
											<td align="center"><%=EtcUtil.checkNull(hashMap.get("PUBLIC_TIME")) %></td>
											<td align="center" style="word-break:break-all;"><%=EtcUtil.checkNull(hashMap.get("PUBLIC_CYCLE")) %></td>																					
											<td align="center" style="word-break:break-all;"><%=EtcUtil.checkNull(hashMap.get("PUBLIC_LINK")) %></td>
											<td align="center" style="word-break:break-all;">
												<a href="#view" onclick ="goFileListFn('<%=hashMap.get("GOV_PUBLIC_NID") %>')"><input style="cursor:pointer;" type="button" value="���ϵ��"></a>												
											</td> 
											<td align="center" style="word-break:break-all;">												
												<a href="#view" onclick ="goModifyFn('<%=hashMap.get("GOV_PUBLIC_NID") %>')"><input style="cursor:pointer;" type="button" value="������� �⺻���� ����"></a>
											</td> 
										</tr>
									<%				
												seq--;
											}
										}
									%>	
									</table>
									<br />
									<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="B5B5B5">
										<tr>
											<td width="100px" height="25" bgcolor="#FFFFFF" align="center"></td>
											<td bgcolor="#FFFFFF" align="right"><input type="button" value="������� �߰�" style="width:80px; padding-top:4px; cursor:pointer;" onclick="goWriteFn();"></td>
										</tr>
									</table>	
								
									<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=count %>" />
									<table class="pagezig_table" align="center">
										<tr>
											<td>
												<a href="<%=prevBlock.getAnchor()%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> 
												<a href="<%=prevPage.getAnchor()%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a>
											</td>
											<td class="pagezig">
											<%int ll = 1; %>
												<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
											<%if(p.getPage() == pp.getNPage()){ %>
												<span><b><%=p.getPage()%></b></span> <%if(ll != pages.size()){ %> / <% } %>
											<%}else{ %>
												<a href="<%=p.getAnchor("&gpk="+gpk+"&search_type="+search_type+"&search_keyword="+search_keyword)%>" class="num01"><%=p.getPage()%></a> <%if(ll != pages.size()){%> / <% } %> 
											<% } %>
											<% ll++; %>
												</stl:loop>
											</td>
											<td>
												<a href="<%=nextPage.getAnchor()%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> 
												<a href="<%=nextBlock.getAnchor()%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="20px"></tr>
			</table>
			<div style="text-align:center;">
				<form method="post" name="schFm" action="board_05.jsp">
				
					<input type="hidden" name="gpk" value="<%=gpk %>" />
				
					<select name="search_type" style="vertical-align:middle;">
						<option value="" <%="".equals(search_type)?"selected":"" %>>����</option>
						<option value="TITLE" <%="TITLE".equals(search_type)?"selected":"" %>>�������</option>
						<option value="DEPARTMENT" <%="DEPARTMENT".equals(search_type)?"selected":"" %>>���μ�</option>
					</select>
					<input type="text" name="search_keyword" style="vertical-align:middle;" value="<%=search_keyword %>" />
					<input type="button" onclick="goSearchFn();" style="width:80px; padding-top:4px; cursor:pointer;" value="�˻�" />
				</form>
			</div>
		</td>
	</tr>
</table>

<jsp:include flush="true" page="../inc/bottom.jsp"/>