<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@page import="com.neoboard.NeoBoardManager"%>
<%@page import="kr.co.knoc.sinmungo.ArticleManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.knoc.util.FileUpload"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.co.knoc.sinmungo.SinmungoUserManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>    
<% request.setCharacterEncoding("euc-kr"); %>
<%
boolean isMaster = false;
boolean isUser = false;

if(session.getAttribute("SINMUNGO_STATUS_NO") != null){ 
	if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("3")){
		isMaster = true;
	}else if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("2")){
		isUser = true;
	} 
}
%>
  
 <% 
 if(!isMaster){
	 if( !isUser) {
	 %>
	 <script type="text/javascript">
		alert("���� ������ �����ϴ�.");
		location.href = "/ombudsman/main.jsp";
		</script>
	 <%
	 	return;
	 }
 }%> 

<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	
	FileUpload fileUpload = new FileUpload();
	ArticleManager articleManager = new ArticleManager();
	SinmungoUserManager userManger = new SinmungoUserManager();
	
	
	ServletContext context = request.getSession().getServletContext();
	String realPath = context.getRealPath("/upload/ombudsman/")+"/";//���ø����̼� ��� ��°���.
	
	
	HashMap requestData = new HashMap();
	
	ArrayList fileList = fileUpload.articleObmFile(request, realPath, 10, requestData);
	
	int resultCnt = 0;
	String returnUrl = "/ombudsman/obmChoice.jsp";
	String returnMsg = "";
	System.out.println("::::::::::::::::::" + requestData.toString());
	resultCnt = articleManager.insertObmArticle(requestData, fileList, userManger.getUserInfo(3 , requestData));	 
	
	 
	if(resultCnt > -1){ 
		HashMap userMap = userManger.getMasterUserInfo();		
		NeoBoardManager.insertSmsWait(userMap.get("PHONE").toString(), "1", "�Ⱥ���� �Ű��Ϳ� ���� ��ϵǾ����ϴ�.");
		returnMsg = "��� �Ǿ����ϴ�.";
	}else{
		returnMsg = "����� ������ �߻��Ͽ����ϴ�.";
	}
%>

<script type="text/javascript">
<!--

	alert("<%=returnMsg %>");	
	location.href = "<%=returnUrl %>"; 
		
//-->
</script>


