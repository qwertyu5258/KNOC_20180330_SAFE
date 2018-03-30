<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.survey.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="SurveyMa" scope="page" class="kr.co.knoc.survey.SurveyManager" />
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")));
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")));

	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	ArrayList al = SurveyMa.getNeoSurveyList(schType, schText, pp.getNPage(), pp.getNPageSize());

	int count = SurveyMa.getNeoSurveyListCount(schType, schText);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();

	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	if(seq < 0) { seq = 1; }

%>
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
	function DoSurvey(survey_num) {
            	document.bForm.action = 'examinationForm.jsp';
            	document.bForm.survey_num.value = survey_num;
            	document.bForm.submit();
	}
	function Result(survey_num) {
            	document.bForm.action = 'surveyContent.jsp';
            	document.bForm.survey_num.value = survey_num;
            	document.bForm.submit();
	}

	window.onload = function(){
		window.open("/survey/survey.jsp", "_survey2011", "width=617px, height=800px, status=1, scrollbars=yes");
	}
</script>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->

		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_04.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>������</span>
					&gt; <span class="locanow">��������</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_7.gif" alt="��������" /></h3>
				</div>
				<div id="boardsec">
<form name="bForm" method="post" action="sub04_7.jsp">
<input type="hidden" name="page" value="<%=nowpage%>" />
<input type="hidden" name="schType" value="<%=schType%>" />
<input type="hidden" name="schText" value="<%=schText%>" />
<input type="hidden" name="survey_num" value="" />
				  <table cellspacing="0" cellpadding="0" class="listtype" summary="��ϵ� �������� ����� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�������� ���</caption>
					<colgroup><col width="55px" /><col width="150px" /><col width="214px" /><col width="100px" /><col width="60px" /><col width="60px" /><col width="60px" /></colgroup>

						<tr>
							<th>��ȣ</th>
							<th>�Ⱓ</th>
							<th>��������</th>
							<th>�����</th>
						    <th>������</th>
                            <th>����</th>
                            <th>�������</th>
						</tr>
<%  if(count==0) { %>
						<tr>
							<td colspan="7" align="center">��ϵ� ������ �������� �ʽ��ϴ�.</td>
						</tr>
<%
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			SurveyBean sb = (SurveyBean)iter.next();
%>
						<tr>
							<td><%=seq %></td>
							<td><%=StringUtil.getDateType(sb.getStartDate(),"-") %>~<%=StringUtil.getDateType(sb.getEndDate(),"-") %></td>
							<td class="subj"><%= sb.getTitle() %></td>
							<td><%=sb.getCreateDateString("yyyy-MM-dd") %></td>
						    <td>
						    <% if (sb.getTotalVote() == 0) { %>
								������
							<% } else { %>
								<%=sb.getTotalVote() %>
							<% } %>
							</td>
                            <td>
                            <% if (sb.getServiceFlag().equals("Y")) { %>
							<% 	if (Integer.parseInt(sb.getStartDate()) <= Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))
									&& Integer.parseInt(sb.getEndDate()) >= Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))
									&& (sb.getTotalVote() < sb.getMaxVote() || sb.getMaxVote() == 0)) { %>
								������
							<%	} else if (Integer.parseInt(sb.getStartDate()) > Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))
									&& Integer.parseInt(sb.getEndDate()) > Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))) { %>
								����
							<%  } else { %>
								����
							<%  } %>
							<% } else { %>
								�̻��
							<% } %>
                            </td>
                            <td>
                            <% if (sb.getServiceFlag().equals("Y")) { %>
							<% 	if (Integer.parseInt(sb.getStartDate()) <= Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))
									&& Integer.parseInt(sb.getEndDate()) >= Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))
									&& (sb.getTotalVote() < sb.getMaxVote() || sb.getMaxVote() == 0)) { %>
							<input type=button value=' ��ǥ ' class=button onclick="DoSurvey('<%=sb.getSurveyNum() %>');" onkeypress="return true;" />
							<%	} else if (Integer.parseInt(sb.getStartDate()) > Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))
									&& Integer.parseInt(sb.getEndDate()) > Integer.parseInt(DateUtil.getFormattedDate(new Date(),"yyyyMMdd"))) { %>

							<%  } else { %>
							<img src="/images/board/btn_view.gif" alt="����" onclick="Result('<%=sb.getSurveyNum() %>');" onkeypress="return true;" style="cursor:pointer" />
							<%  } %>
							<% } %>
                            </td>
						</tr>
<%
			seq--;
		}
	}
%>
					</table>
</form>
			  <div class="boardbtm">
						<div class="leftdv">
							<!--// paging: start //-->
<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=SurveyMa.getNeoSurveyListCount(schType,schText)%>" />
							<div class="paging">
								<a href="<%=prevBlock.getAnchor("&schType="+schType+"&schText="+schText)%>" title="ó�� �������� �̵�"><img src="/images/board/preview.gif" alt="ó�� �������� �̵�" /></a>
								<a href="<%=prevPage.getAnchor("&schType="+schType+"&schText="+schText)%>" title="���� �������� �̵�"><img src="/images/board/ppreview.gif" alt="���� �������� �̵�" /></a>
								<% int ll = 1; %>
								<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
								<% if ( p.getPage() == pp.getNPage()) { %>
								<span class="pagenow"><%=p.getPage()%></span> <% if (ll != pages.size()) {%> <% } %>
								<% } else { %>
								<a href="<%=p.getAnchor("&schType="+schType+"&schText="+schText)%>" title="<%=p.getPage()%>�������� �̵�"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> <% } %>
								<% } %>
								<% ll++; %>
								</stl:loop>
								<a href="<%=nextPage.getAnchor("&schType="+schType+"&schText="+schText)%>" title="���� �������� �̵�"><img src="/images/board/nnext.gif" alt="���� �������� �̵�" /></a>
								<a href="<%=nextBlock.getAnchor("&schType="+schType+"&schText="+schText)%>" title="�� �������� �̵�"><img src="/images/board/next.gif" alt="�� �������� �̵�" /></a>
							</div>
							<!--// paging: end //-->
						</div>
						<!--<div class="rightdv">
							<a href="#"><img src="/images/board/btn_write4.gif" alt="�������" /></a>
						</div>-->
					</div>
					<!--// searchbox: end //-->
					<div id="schsec">
<form name="searchform" method="get" action="sub04_7.jsp">
						<fieldset class="schset">
							<legend>Search Box</legend>

							<label for="schType" class="nlabel">��ϰ˻�����</label>
							<select id="schType" name="schType" style="width:80px;">
								<option value="title" <% if (schType != null && !schType.equals("") && schType.equals("title")) { %>selected="selected"<% } %>>��������</option>
								<option value="purpose" <% if (schType != null && !schType.equals("") && schType.equals("purpose")) { %>selected="selected"<% } %>>��������</option>
							</select>

							<label for="schText" class="nlabel">��ϰ˻�</label>
							<input type="text" value="<%=schText %>" id="schText" name="schText" class="input" />

							<div class="btndv"><img src="/images/board/btn_search.gif" alt="�˻�" onclick="document.searchform.submit()" onkeypress="return true;" style="cursor:pointer" /></div>
					  </fieldset>
</form>
					</div>
					<!--// searchbox: end //-->
				</div>
			</div>
		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>