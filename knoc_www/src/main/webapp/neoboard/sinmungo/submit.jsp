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
	if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("1")){
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
		location.href = "/sinmungo/main.jsp";
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
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

	FileUpload fileUpload = new FileUpload();
	ArticleManager articleManager = new ArticleManager();
	SinmungoUserManager userManger = new SinmungoUserManager();


	ServletContext context = request.getSession().getServletContext();
	String realPath = context.getRealPath("/upload/sinmungo/")+"/";//���ø����̼� ��� ��°���.


	HashMap requestData = new HashMap();
	ArrayList fileList = fileUpload.articleFile(request, realPath, 10, requestData);

	int resultCnt = 0;
	String returnUrl = "/sinmungo/notice.jsp";
	String returnMsg = "";
	//System.out.println(requestData.toString());

	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	if(articleManager != null && userManger != null) {
		resultCnt = articleManager.insertArticle(requestData, fileList, userManger.getUserInfo(1));
	}

	if(resultCnt > -1){
		HashMap userMap = userManger.getMasterUserInfo();
		NeoBoardManager.insertSmsWait(userMap.get("PHONE").toString(), "1", "�Ź��� ���� ��ϵǾ����ϴ�.");
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


