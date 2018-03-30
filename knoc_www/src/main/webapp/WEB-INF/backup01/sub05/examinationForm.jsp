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
	}
	SurveyBean sb = view.getSurvey();
	if("Y".equals(sb.getServiceFlag())) {
		/* ���� �Ⱓ �ȿ� �ְ� �ִ� ���� �ο��� �ʰ����� �ʾ��� ��� ���� */
		String today = StringUtil.getCurrentDate("yyyyMMdd");
		if( ( today.compareTo(sb.getStartDate()) >= 0
				&& today.compareTo(sb.getEndDate()) <= 0 
				&& (sb.getMaxVote() == 0 || sb.getTotalVote() 
						< sb.getMaxVote() ))) {
			;
		} else {
%>			
			<stl:msgBack msg="���� �Ⱓ�� �ƴմϴ�."/>
<%			
			return;
		}
	} else {
%>
			<stl:msgBack msg="������� ������ �ƴմϴ�."/>
<%		
		 	return;
	}
	List questionViewList = view.getQuestions();
%>
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
//<![CDATA[
	function applySurvey(f) {
		for( var i = 1 ; i <= parseInt(f.elements["questionCount"].value) ; i++)
		{
				var ele = f.elements["questionType" + i];
				if(ele.value == "1") {
					// �ְ���
					if(f.elements["example"+i].value == ""){
						alert("���������ּ���");
						return;
					}
				}
				else {
					// ������
					maxSelect = parseInt(f.elements["maxSelection" + i ].value);
					example = f.elements["example"+i];
					if(typeof(example.length) == "undefined"){
						if(!example.checked) {
							alert("���⸦ ������ �ּ���.");
							example.focus();
							return;
						}
					} else {
						clickCount = 0;
						for(var k=0; k < example.length;k++) {
							if(example[k].checked) clickCount++;
						}
						if(clickCount < 1) {
							alert("���⸦ ������ �ּ���.");
							example[0].focus();
							return;
						}
						else if( maxSelect < clickCount) {
							alert("����� �ִ� " + maxSelect + "�� ��ŭ ���ð����մϴ�.");
							return;
						}
					}
				}
		}

		f.submit();	
	}

	function list() {
    	document.pollform.action = 'surveyList.jsp';
    	document.pollform.submit();
	}
//]]>
</SCRIPT>

	<%@include file="/include/subtopnavi.jsp"%><!--// subtopNavi: start //-->
	
	<div id="contents">
		<%@include file="/include/subleftmenu.jsp"%><!--// leftmenu: start //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<h1><img src="/images/board/sub_title.jpg" alt="����Ұ�(About Us) ���ѹα� ������ �����̴� ������,�� ������ ������ �ѱ����������Դϴ�" /></h1>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>����Ұ�</span>
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
					<colgroup><col width="100px" /><col width="580Px" /></colgroup>
<form name="pollform" method="post" action="examinationFormOk.jsp">
<input type="hidden" name="surveyNum" value="<%=survey_num%>">
<input type=hidden name=page value="<%=nowpage%>">		
<input type="hidden" name="schType" value="<%=schType%>">	
<input type="hidden" name="schText" value="<%=schText%>">
<input type="hidden" name="questionCount" value="<%=questionViewList.size()%>">					
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
							<td class="td1"><%=sb.getStartDate() %> ~ <%=sb.getEndDate() %></td>
						</tr>
<%	

for (int q = 0; q < questionViewList.size(); q++) {
	SurveyQuestionView questionView = (SurveyQuestionView)questionViewList.get(q);	
	SurveyQuestionBean sqb = questionView.getQuestion();
	List exampleList = questionView.getExamples();	
%>							
                        <tr>
							<th class="th1">����-<%=q+1 %></th>
							<td class="td1"><%=sqb.getQuestion() %></td>
						</tr>
<input type=hidden name="questionNum" value="<%=sqb.getQuestionNum()%>">
<input type=hidden name="maxSelection<%=q+1 %>" value="<%=sqb.getMaxSelection()%>">						
				<% if (sqb.getQuestionType().equals("1")) { %>
						<input type="hidden" name="questionType<%=q+1 %>" value="1">
                        <tr>
                        	<th class="th1">&nbsp;</th>
							<td class="td1"><TEXTAREA NAME="example<%=q+1 %>" ROWS="10" COLS="100"></TEXTAREA></td>
						</tr>
				<% } else { %>
						<input type="hidden" name="questionType<%=q+1 %>" value="0">
					
				<%
						int questionVoteTotal = 0;
						String example = "";
						for (int e = 0; e < exampleList.size(); e++) {
							SurveyExampleBean seb = (SurveyExampleBean)exampleList.get(e);
							questionVoteTotal = questionVoteTotal + seb.getVote();
						}
						for (int e = 0; e < exampleList.size(); e++) {
							SurveyExampleBean seb = (SurveyExampleBean)exampleList.get(e);
				%>						
                        <tr>
                        	<th class="th1">&nbsp;</th>
							<td class="td1">
							<% if (sqb.getMaxSelection() == 1) { %>
									<input type="radio" name="example<%=q+1 %>" 
											value="<%=seb.getExampleNum() %>" />
							<% } else { %>
									<input type="checkbox" name="example<%=q+1 %>" 
											value="<%=seb.getExampleNum()%>" />
							<% } %>
							<%=seb.getExample() %>
							</td>
						</tr>
				<%					
						}
				 	} 
				%>
<%
}
%>				             
</form>           
					</table>
                    <!--// prev/next list: end //-->
					
					<div class="boardbtm mtm10">
						<div class="btnsec">
						    <img src="/images/board/btn_send.gif" alt="����" onclick="applySurvey(document.pollform);" onkeypress="return true;" style="cursor:pointer" />
							<img src="/images/board/btn_refr.gif" alt="�ٽþ���" onclick="list();" onkeypress="return true;" style="cursor:pointer" />
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