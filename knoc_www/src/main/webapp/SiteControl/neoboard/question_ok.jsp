<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>  
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.participate.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="ParticipateBa" scope="page" class="kr.co.knoc.participate.ParticipateManager" />		
<% request.setCharacterEncoding("euc-kr"); %>

<%   	
	ParticipateBean pb =  new ParticipateBean();
	boolean result = false;
	int	questionNo = 0;
	String Question_text = "";
	
	if(!"".equals(request.getParameter("questionNo"))){
		
		questionNo = Integer.parseInt(request.getParameter("questionNo")); 
			 
	}else{
		
		questionNo	= 0;
		
	} 
	
	
	Question_text = EtcUtil.strBlockSpecialTags(request.getParameter("question_text"), "8859_1");
	ParticipateNewBean pnb = new ParticipateNewBean(); 
	
	//����
	if(questionNo > 0) {		
		pnb.setQuestionNo(questionNo);
		pnb.setQuestionText(Question_text);
		result = ParticipateBa.updateQuestion(pnb);
	
	if (!result) { 
%>
	<script language="javascript">
		alert("�纸 ���� ���� ���� ������ �����Ͽ����ϴ�.");
		history.back();
	</script>
<%
		return;
	} else {		
%>
	<script type="text/javascript">
		alert("�纸 ���� ���� ���� ������ �Ϸ�Ǿ����ϴ�.");
	    location.href = "board_03.jsp?question_nid=1";
	</script>
<% 	
  	}
%>
<%
}else{
	//���
	pnb.setQuestionText(Question_text);
	result = ParticipateBa.insertQuestion(pnb);
	
	
	if (!result) { 
%>
	<script language="javascript">
		alert("�纸 ���� ���� ���� ����� �����Ͽ����ϴ�.");
		history.back();
	</script>
<%
		return;
	} else {		
%>
	<script type="text/javascript">
		alert("�纸 ���� ���� ���� ����� �Ϸ�Ǿ����ϴ�.");
	    location.href = "board_03.jsp?question_nid=1";
	</script>
<% 	
  	}
%> 
  
<%
}
%>