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
	int	questionNo = 0;
	int participate_bbs_seq = 0;

	boolean result = false;
	String returnMsg = "";	
	
	if(!"".equals(request.getParameter("questionSeq"))){
		if(!"".equals(request.getParameter("participateSeq"))){	
			questionNo = Integer.parseInt(request.getParameter("questionSeq"));
			participate_bbs_seq = Integer.parseInt(request.getParameter("participateSeq"));
		}else{
			questionNo	= 0;
			participate_bbs_seq = 0;
		}
	}else{
		questionNo	= 0;
		participate_bbs_seq = 0;
	} 
	
	ParticipateNewBean pnb = new ParticipateNewBean(); 
	
	
	//����
	if(participate_bbs_seq > 0) {		
		pnb.setQuestionNo(questionNo);
		pnb.setParticipate_bbs_seq(participate_bbs_seq);
		
		result = ParticipateBa.deleteParticipateBbs(pnb);
		
	}
	 
	if(!result){ 
		returnMsg = "������ ������ �߻��Ͽ����ϴ�.";
	}else{
		returnMsg = "���� �Ǿ����ϴ�.";
		
	}
%>

<script type="text/javascript">
<!--

	alert("<%=returnMsg %>");	
	location.href = "/SiteControl/neoboard/board_03.jsp?question_nid=1";  
		
//-->
</script>