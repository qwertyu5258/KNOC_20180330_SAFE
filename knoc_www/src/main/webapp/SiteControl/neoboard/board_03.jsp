<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.participate.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="ParticipateBa" scope="page" class="kr.co.knoc.participate.ParticipateManager" />

<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "�纸��������";  		// ���� Depth ����
    String gNavSubName = "neoboard";				// ���� Depth �̸�
    String gNavDepthTitle1 = "04"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

    application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "�Խ��ǻ���";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")), "8859_1");
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")), "8859_1");	

	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	
	int	questionSeq	= (request.getParameter("question_nid")==null)?0:Integer.parseInt(request.getParameter("question_nid"));
	
	ParticipateBean pb = ParticipateBa.getParticipateQuestion(questionSeq); //������ ���� ����
	
	ArrayList al = ParticipateBa.getParticipateBbsList(pp.getNPage(), pp.getNPageSize(),questionSeq,schType, schText); //�纸 ���� ���� �Խ��� ����Ʈ		

	int count = ParticipateBa.getParticipateBbsListCount(questionSeq,schType, schText); //�纸 ���� ���� �Խ��� ����Ʈ ī��Ʈ
	
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
	
	String QuestionContents = "";
	
	if(null == pb.getQuestion_contents() || "".equals(pb.getQuestion_contents()) || "null".equals(pb.getQuestion_contents())){
		QuestionContents = "";
	}else{
		QuestionContents = pb.getQuestion_contents();
	}
%>
<jsp:include flush="true" page="../inc/top.jsp" />

<script language=javascript>

	function jsWrite(){
		
		var q = document.qform;
		if(q.question_text.value == "") {
			alert("���� ������ �Է��� �ּ���.");
			q.question_text.focus();
		} else {
			try{			
				q.submit();
			}catch(e){}					
		}		
		
	}
	
	
	function goFind()
	{
		var t = document.searchform;
		t.submit();
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
										<td><img src="../images/admin_left_03.gif" width="11" height="11"> �Խ��� ���� > �纸 ���� ����</td>
										<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">�Խ��� ���� > �纸 ���� ����</span></td>
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
				      		
								<form id="qform" name="qform" method="post" action="question_ok.jsp">
									<input type="hidden" id="questionNo" name="questionNo"  value="<%=pb.getQuestion_nid() %>" />
									<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="B5B5B5">
									
										<tr>
											<td width="100px" height="25" bgcolor="E7E7E7" align="center">����</td>
											<td bgcolor="#FFFFFF" style="padding-left:10;"><textarea id="question_text" name="question_text" rows="5"  cols="30" style="width:100%;"><%=QuestionContents %></textarea></td>
										</tr>
										<tr>
											<td bgcolor="#FFFFFF" colspan="2"></td>
										</tr>
										<tr>
											<td width="100px" height="25" bgcolor="#FFFFFF" align="center"></td>
											<td bgcolor="#FFFFFF" align="right"><input type="button" value="���" style="width:100px; padding-top:4px;" onclick="jsWrite(); return false;"></td>
										</tr>
									</table>			
								</form>		
								
								<form name="searchform" id="searchform" method="post" action="/SiteControl/neoboard/board_03.jsp">	
									<input type="hidden" id="question_nid" name="question_nid" value="1" />
									<input type="hidden" id="page" name="page" value="1" />	
									
									<table align=center border="0" cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td class=descBorder_l>			
											</td>
											<td class=descBorder_r>
												�˻����� :
							     			 	<select name=schType class=select>
					     			 				<option value="bbs_title" <% if (schType != null && !schType.equals("") && schType.equals("bbs_title")) { %>selected="selected"<% } %>>����</option>
													<option value="writer" <% if (schType != null && !schType.equals("") && schType.equals("writer")) { %>selected="selected"<% } %>>�۾���</option>
								      			</select>
								      		
								      			<input type=text name=schText size=15 maxlength=20 value="<%=schText %>" class=input_re>
												<input type=button value='�˻� ' class='button' onclick='goFind(); return false;' >
											</td>		
										</tr>
										<tr height=10>
											<td></td>
											<td></td>
										</tr>
									</table>	
								</form>		

								<form name="pform" method="post" action="/">
									<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
										<tr height="25"  bgcolor="E7E7E7">
											<td align=center width="80">��ȣ</td>
											<td align=center >����</td>
											<td align=center width="200">�۾���</td>
											<td align=center width="200">�����</td>
										</tr>
							<%  if(count==0) { %>				
										<tr height="25"  bgcolor="#FFFFFF">
										<td align=center colspan=6>��ϵ� �ڷᰡ �����ϴ�.</td>
										</tr>
							<% 
								} else {
									String beginTitle="";
									Iterator iter = al.iterator();
									while(iter.hasNext()){
										ParticipateBean pcb = (ParticipateBean)iter.next();
										if("qna".equals(pcb.getBegin_title())){
											beginTitle="[��������]";
										}else if("cnq".equals(pcb.getBegin_title())){
											beginTitle="[�纸�ǰ�]";
										}else{
											beginTitle="[�纸��û]";
										}
							%>			
										<tr height="25"  bgcolor="#FFFFFF">
											<td align="center"><%=seq %></td>
											<td align="left">
												<span style="color:brown; margin-right:10px;"><%=beginTitle%></span>
												<a href="/SiteControl/neoboard/board_03_view.jsp?question_nid=1&participate_bbs_nid=<%=pcb.getParticipate_bbs_nid()%>&page=<%=nowpage%>&schType=<%=schType%>&schText=<%=schText%>">
													<strong><%=pcb.getBbs_title() %></strong>
												</a>
											</td>
											<td align="center"><%=pcb.getWriter() %></td> 
											<td align="center"><%=pcb.getRegi_dt() %></td>
										</tr>
							<%				
										seq--;
									}
								}
							%>			
									</table>
								</form>	
								<br>		
								
								<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=ParticipateBa.getParticipateBbsListCount(questionSeq,schType, schText)%>" />
								<table class="pagezig_table" align="center">
									<tr>
										<td>
											<a href="<%=prevBlock.getAnchor("&question_nid=1&schType="+schType+"&schText="+schText)%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> 
											<a href="<%=prevPage.getAnchor("&question_nid=1&schType="+schType+"&schText="+schText)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a>
										</td>
										<td class="pagezig">
										<% int ll = 1; %>
										<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
										<% if ( p.getPage() == pp.getNPage()) { %>
										<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
										<% } else { %>
										<a href="<%=p.getAnchor("&question_nid=1&schType="+schType+"&schText="+schText)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
										<% } %>
										<% ll++; %>
										</stl:loop>
										</td>
										<td>
											<a href="<%=nextPage.getAnchor("&question_nid=1&schType="+schType+"&schText="+schText)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> 
											<a href="<%=nextBlock.getAnchor("&question_nid=1&schType="+schType+"&schText="+schText)%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a>
										</td>
									</tr>
								</table>
											
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr height=20px>
				
			</tr>
		</table>
	</td>
	</tr>
</table>
<jsp:include flush="true" page="../inc/bottom.jsp"/>