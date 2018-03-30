<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.survey.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="SurveyMa" scope="page" class="kr.co.knoc.survey.SurveyManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")),"8859_1");
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")),"8859_1");
	int	survey_num	= (request.getParameter("survey_num")==null)?0:Integer.parseInt(request.getParameter("survey_num"));

	SurveyView view = new SurveyView();
	view = SurveyMa.getSurveyView(survey_num);
	if(view == null) {
%>
		<stl:msgBack msg="�������� �ʴ� �����Դϴ�."/>
<%
		return;
	}
	SurveyBean sb = view.getSurvey();
	List questionViewList = view.getQuestions();
%>
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<%@include file="/include/subleftmenu.jsp"%><!--// leftmenu: start //-->

		<div id="rightarea">
			<div id="subcnts">
				<h1><img src="/images/board/sub_title.jpg" alt="����Ұ�(About Us) ���ѹα� ������ �����̴� ������,�� ������ ������ �ѱ����������Դϴ�" /></h1>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
					&gt; <span>CEO�Ұ�</span>
					&gt; <span class="locanow">�����ڷ�</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h2 class="tleimg"><img src="/images/board/stle_1.gif" alt="�����ڷ�" /></h2>
				</div>

				<div id="boardsec">
					<table cellspacing="0" cellpadding="0" class="viewtype" summary="�ش�Խ��ǿ� �Խù��� ����մϴ�">
					<caption>�Խù����</caption>
					<colgroup><col width="100px" /><col width="590Px" /></colgroup>
						<tr>
							<th class="th1">��������</th>
							<td class="td1"><%=sb.getTitle() %></td>
						</tr>
                        <tr>
							<th class="th1">��������</th>
							<td class="td1"><%=sb.getPurpose() %></td>
						</tr>
                        <tr>
							<th class="th1">�����Ⱓ</th>
							<td class="td1"><%=StringUtil.getDateType(sb.getStartDate(),"-") %> ~ <%=StringUtil.getDateType(sb.getEndDate(),"-") %></td>
						</tr>
<%

for (int q = 0; q < questionViewList.size(); q++) {
	SurveyQuestionView questionView = (SurveyQuestionView)questionViewList.get(q);
	SurveyQuestionBean sqb = questionView.getQuestion();
	List exampleList = questionView.getExamples();
%>
                        <tr>
							<th class="th1">����-<%=q+1 %></th>
							<td class="td1"><%=sqb.getQuestion() %>&nbsp;&nbsp;
							<% if (sqb.getQuestionType().equals("1")) { %>
								<a href="subjectiveResult.jsp?survey_num=<%=survey_num %>&exNum=<%=sqb.getQuestionNum() %>" target="_blank">�ְ��� �亯 ����</a>
							<% } %>
							</td>
						</tr>
				<% if (sqb.getQuestionType().equals("1")) { %>
				<% } else { %>
<%
	int questionVoteTotal = 0;
	for (int e = 0; e < exampleList.size(); e++) {
		SurveyExampleBean seb = (SurveyExampleBean)exampleList.get(e);
		questionVoteTotal = questionVoteTotal + seb.getVote();
	}
%>
<%
	for (int e = 0; e < exampleList.size(); e++) {
		SurveyExampleBean seb = (SurveyExampleBean)exampleList.get(e);
%>
                        <tr>
                        	<th class="th1"></th>
							<td class="td1"><span><%=e+1 %>.&nbsp;<%=seb.getExample() %></span> <span class="reseh" style="width:100px;">&nbsp;</span>
							<span><strong>
							<%=seb.getVote() %>
							/
							<%=sb.getTotalVote() %>
							(
							<%
							/**
							* 2016. 03. 21 / MYM
							* ���Ⱦ��� ��ġ
							*/
							int intTotalVote = sb.getTotalVote() * 1;
							if(intTotalVote < 0) { intTotalVote = 0; }

							if (intTotalVote != 0) { %>
							<%=seb.getVote()/sb.getTotalVote()*100 %>%
							<% } else { %>
							0.0%
							<% } %>
							)
							</strong></span></td>
						</tr>
<%
	}
%>
					<% } %>
<%
}
%>
					</table>
                    <!--// prev/next list: end //-->

					<div class="boardbtm mtm10">
						<div class="btnsec">
						    <a href="#"><img src="/images/board/btn_modi.gif" alt="����" /></a>
							<a href="surveyList.jsp?schType=<%=schType %>&schText=<%=schText %>&page=<%=nowpage %>"><img src="/images/board/btn_list.gif" alt="���" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>