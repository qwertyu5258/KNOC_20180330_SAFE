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
	
	HashMap userMap = userManger.getUserInfo(3 , requestData);
	resultCnt = articleManager.insertObmArticle(requestData, fileList, userMap);	 
	
	if(resultCnt > -1){ 
		//HashMap userMap = userManger.getMasterUserInfo();	
		if(!"obm3".equals(userMap.get("USER_ID").toString())){ //sms�߼��� obm3�� ���� 2013 09 16��û
			//NeoBoardManager.insertSmsWait(userMap.get("PHONE").toString(), "1", "û�� �Ⱥ���� ������ ��ϵǾ����ϴ�.");
		}
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


