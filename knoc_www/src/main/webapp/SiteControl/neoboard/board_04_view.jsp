<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.sague.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="Saguemanager" scope="page" class="kr.co.knoc.sague.SagueManager" />

<% request.setCharacterEncoding("euc-kr"); %>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	int sague_nid = Integer.parseInt(etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("sague_nid"))));
	
	SagueManager sague = new SagueManager();
	HashMap hash = sague.getSaguebeanView(sague_nid);
	
	hash.get("sagueBean"); 
	hash.get("sagueFileBean");
	
	SagueBean sb = (SagueBean)hash.get("sagueBean");
	SagueFileBean sfb = (SagueFileBean)hash.get("sagueFileBean");
	
	Saguemanager.updateSagueViewsCount(sague_nid);  //��ȸ�� ������Ʈ
//�ڸ�Ʈ	
	pp.setPage(nowpage);
	pp.setPageSize("5");
	pp.setPageUrl("");
	ArrayList saguecomment = Saguemanager.getCommentList(sague_nid, pp.getNPage(), pp.getNPageSize());		
	
	int count = Saguemanager.getCommentListCount(sague_nid);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","01");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<script language=javascript>
	
	function goModifyPage(sague_nid){
		document.boardmodify01.action="board_04_edit.jsp?sague_nid="+ sague_nid +"&page=<%=nowpage%>";
		document.boardmodify01.submit();
	}
	
	function goDeletePage(p_sague_nid){
		if(confirm("���� �����Ͻðڽ��ϱ�?\n�����Ŀ� ������ �Ұ��� �մϴ�.")){
			location.href = "./board_04_delete.jsp?sague_nid=" + p_sague_nid;
		}
	}
	
	function goCommentDelete(p_comment_nid, p_sague_nid){
		if(confirm("���� �����Ͻðڽ��ϱ�?\n�����Ŀ� ������ �Ұ��� �մϴ�.")){
			location.href = "./board_04_comment_delete.jsp?sague_nid=" + p_sague_nid + "&comment_nid=" + p_comment_nid;
		}
	}
	
	function goListPage(p_page){
		location.href= "./board_04.jsp?page="+p_page;
	}
</script>

<script type="text/javascript" src="/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<jsp:include flush="true" page="../inc/top.jsp" />
	
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
												<td><img src="../images/admin_left_03.gif" width="11" height="11"> �Խ��� ���� > ��� �������� ����</td>
												<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�Խ��� ���� > ��� �������� ����</span></td>
											</tr>
											<tr>
												<td height="2" colspan="2" bgcolor="EAEAEC"></td>
											</tr>
										</table>
										
										<div style="clear:both; height:45px;"></div>
									
									<form name="boardmodify01" action="board_04_edit_ok.jsp" method="post" enctype="multipart/form-data">	
									<input type="hidden" name="page" value="<%=nowpage%>">
									
										<table width="950" align="center"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
											<tr height="25">
												<td width="120" align="left" bgcolor="#e7e7e7">1. ����� ��Ī</td>
												<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
													<%=etcutil.checkNull(sb.getSubject()) %>
												</td>
											</tr>	
											<tr height="25">
												<td align="left" bgcolor="#e7e7e7">2. �������� ����(����)</td>
											    <td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<%=etcutil.checkNull(sb.getReason()) %>
											  	</td>
											</tr>		
											<tr height="25">
											    <td align="left" bgcolor="#e7e7e7">3. �ֿ��������� ����</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;" class="cnts1">
											 		<%=etcutil.checkNull(sb.getContents()) %>
											  	</td>
											</tr>
											<tr height="25">
											  	<td align="left" bgcolor="#e7e7e7">4. �ǰ� ����</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<%=etcutil.checkNull(sb.getOpinion()) %>
											  	</td>
											</tr>
											<tr height="25">
											  	<td align="left" bgcolor="#e7e7e7">5. �ǰ� �������<br />(��������)</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<%=etcutil.checkNull(sb.getOpinion_term()) %>
											  	</td>
											</tr>				
											<tr height="25">
												<td align="left" bgcolor="#e7e7e7">6. �����ǰ�</td>
												<td colspan="3" align="left" bgcolor="#e7e7e7" style="padding-left:10;"></td>
											</tr>	
											<tr height="25">
												<td align="center" bgcolor="#e7e7e7">- �����μ�</td>
											  	<td align="left" bgcolor="#FFFFFF" style="padding-left:10;" width="320">
											  		<%=etcutil.checkNull(sb.getDepartment()) %>
											  	</td>
												<td  align="center" bgcolor="#e7e7e7">- �����</td>
												<td align="left" bgcolor="#FFFFFF" style="padding-left:10;" width="320">
													<%=etcutil.checkNull(sb.getRepresentatives()) %>
												</td>
										  	</tr>	
											<tr height="25">
											  	<td align="center" bgcolor="#e7e7e7">- ��ȭ��ȣ</td>
											  	<td bgcolor="#FFFFFF" align="left" style="padding-left:10;">
											  		<%=etcutil.checkNull(sb.getTel_no()) %>
											  	</td>
												<td  align="center" bgcolor="#e7e7e7">- �ѽ���ȣ</td>
											  	<td bgcolor="#FFFFFF" align="left" style="padding-left:10;">
											  		<%=etcutil.checkNull(sb.getFax_no()) %>
											  	</td>
											</tr>
											<tr height="25">
											  	<td align="center" bgcolor="#e7e7e7">- �̸���</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<%=etcutil.checkNull(sb.getEmail()) %>
											  	</td>
											</tr>
											<tr height="25">
											  	<td align="left" bgcolor="#e7e7e7">7. ÷������</td>
											  	<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
											  		<a href="board_04_filedown.jsp?sague_nid=<%=sb.getSague_nid() %>"><%=etcutil.checkNull(sfb.getOrg_filenm()) %></a>
												</td>
											</tr>
										</table>
									</form>	
										
										<table width="70%"  border="0" align="center" cellpadding="0" cellspacing="0">
											<tr>
												<td height="10"></td>
											</tr>
											<tr>
												<td align="left"><input type=button value="���" onclick="goListPage('<%=nowpage%>'); return false;" /></td>
												<td align="right">
													<input type=button onclick="goModifyPage(<%=sb.getSague_nid() %>); return false;" value="����" />
													<input type=button onclick="goDeletePage(<%=sb.getSague_nid() %>); return false;" value="����" />
												</td>
											</tr>
											<tr>
												<tr height=20px>
											</tr>
										</table>
										<br /><br /><br />
				<!------------------------------------------ ����� ��� ��� ------------------------------------------------------------------>
								<%  if(count==0) { %>
								
								<%}else{ %>
									<table width="70%" align="center"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
										<tr height="25">
											<td width="120" align="left" bgcolor="#e7e7e7">�ǰ������� ����</td>
											<td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
												<%=etcutil.checkNull(sb.getSubject()) %>
											</td>
										</tr>	
										<%
											Iterator iter = saguecomment.iterator();
											while(iter.hasNext()){
												SagueCommentBean scb = (SagueCommentBean)iter.next();
										%>
										<tr height="25">
											<td align="center" bgcolor="#e7e7e7">
												<%=etcutil.checkNull(scb.getUser_name()) %><br />
												<%=etcutil.checkNull(scb.getTel_no()) %>
												<br /><input type=button onclick="goCommentDelete('<%=scb.getComment_nid()%>','<%=sb.getSague_nid()%>'); return false;" value="����" />
											</td>
										    <td colspan="3" align="left" bgcolor="#FFFFFF" style="padding-left:10;">
										  		<%=etcutil.checkNull(scb.getUser_opinion().replaceAll("\n","<br />")) %>
										  	</td>
										</tr>	
										<%
											seq--;
											}
										%>	
									</table>
									
									<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=Saguemanager.getCommentListCount(sague_nid)%>" />
									<table class="pagezig_table" align="center">
										<tr>
											<td>
												<a href="<%=prevBlock.getAnchor()%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> 
												<a href="<%=prevPage.getAnchor("&sague_nid="+sague_nid)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a>
											</td>
											<td class="pagezig">
											<% int ll = 1; %>
											<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
											<% if ( p.getPage() == pp.getNPage()) { %>
											<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
											<% } else { %>
											<a href="<%=p.getAnchor("&sague_nid="+sague_nid)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
											<% } %>
											<% ll++; %>
											</stl:loop>
											</td>
											<td>
												<a href="<%=nextPage.getAnchor("&sague_nid="+sague_nid)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> 
												<a href="<%=nextBlock.getAnchor()%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a>
											</td>
										</tr>
									</table>
									
								<%} %>
									<br /><br /><br />
				<!------------------------------------------ ����� ��� ��� �� ------------------------------------------------------------------>						
										
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	<%@ include file="../inc/bottom.jsp" %>