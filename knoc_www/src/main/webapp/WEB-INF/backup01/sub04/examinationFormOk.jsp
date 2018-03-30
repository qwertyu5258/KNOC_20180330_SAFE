<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import="kr.co.knoc.survey.*"%>    
<%@ page import="kr.co.knoc.mgr.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>           
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />

<%	request.setCharacterEncoding("euc-kr");	%>
<jsp:useBean id="sf" class="kr.co.knoc.survey.SurveyForm">
	<jsp:setProperty name="sf" property="*"/>
</jsp:useBean>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")),"8859_1");
	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")),"8859_1");
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")),"8859_1");

	SurveyManager sm = new SurveyManager();
	SurveyView view = sm.getSurveyView(sf.getSurveyNum());
	if(view == null) {
%>		
		<stl:msgBack msg="�������� �ʴ� �����Դϴ�."/>
<%		
	}
		
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	Cookie[] co = request.getCookies();
	String dupleChkCookie = "";
	for (int i=0; i<co.length; i++) {
		if (co[i].getName().equals("NEOSURVEY_" + sf.getSurveyNum())) {
			dupleChkCookie = co[i].getValue();
		}
	}
	SurveyEntry entry = new SurveyEntry();
	if("1".equals(view.getSurvey().getDupleType())) {
		/* �α��� �� ȸ���� ���ؼ� �ѹ� �� */
		/* ���� �˻� �� �ڵ� */
		MgrSession user = (MgrSession)session.getAttribute("USERSESSION");
		if(user == null) { 
%>			<stl:msgBack msg="�α����� �ʿ��մϴ�."/> <%
		}
		SurveyEntry surveyEntry = sm.getSurveyEntry(sf.getSurveyNum(), etcutil.checkNull(user.getUserID()));  // ���Ⱦ��� ��ġ 2016.03.21 ECJ
		if(surveyEntry.getEntryNum() > 0) {
%>
		<stl:msgBack msg="�̹� �����Ͻ� �����Դϴ�."/>
<%	
		}
		entry.setEntryId(etcutil.checkNull(user.getUserID()));  // ���Ⱦ��� ��ġ 2016.03.21 ECJ
	} else {
		/* ������ ���� �� ��Ű�� ��� */
		if(dupleChkCookie != null && "1".equals(dupleChkCookie)){
%>
			<stl:msgBack msg="�̹� �����Ͻ� �����Դϴ�."/>
<%			
		}
		entry.setEntryId("");
	}
	
	entry.setEntryIp(request.getRemoteAddr());
	entry.setSurveyNum(sf.getSurveyNum());	
	
	Map answerExamples = new HashMap();
	Iterator i = view.getQuestions().iterator();
	while(i.hasNext()) {
		SurveyQuestionView questionView = (SurveyQuestionView)i.next();
		SurveyQuestionBean question = questionView.getQuestion();
		String[] ex = request.getParameterValues("example" + question.getQuestionNum());
		String msg = "";
		if(ex == null) {
			if("0".equals(question.getQuestionType()) ) {
				
				/* �������� ��� */
				msg = question.getQuestion() + "������ ���� �ϳ��̻��� ���⸦ �����ؾ߸� �մϴ�.";
%>		
				<stl:msgBack msg="<%=msg %>"/>
<%				
			} else {
				
				/* �ְ����� ��� */
				msg = question.getQuestion() + "������ ���� �ǰ��� �Է��� �ּ���.";
%>				
				<stl:msgBack msg="<%=msg %>"/>
<%				
			}
		}
		answerExamples.put(Integer.toString(question.getQuestionNum()),ex);
	}
	
	
	
	boolean result = sm.insertVoteSurvey(entry,view,answerExamples);
	
	if(result == false) {
	%><stl:msgBack msg="������ǥ�� �����Ͽ����ϴ�."/><%
	}
	else {
		if(!"1".equals(view.getSurvey().getDupleType())) {
			Cookie cookie = new Cookie ("NEOSURVEY_" + sf.getSurveyNum(),"1");
			cookie.setMaxAge(3600);  // ���Ⱦ��� ��ġ 2016.03.21 ECJ
			response.addCookie(cookie);
		}
	%><stl:msgRedirect msg="������ǥ�� �Ϸ�Ǿ����ϴ�." url="surveyList.jsp?page=<%=nowpage %>&schType=<%=schType %>&schText=<%=schText %>"/><%
	}
%> 