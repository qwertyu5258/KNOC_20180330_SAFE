<%@page import="com.neoboard.util.EtcUtil"%>
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
	
	
	ArticleManager articleManager = new ArticleManager();
	SinmungoUserManager userManger = new SinmungoUserManager();
	
	
	
	
	
	HashMap requestData = new HashMap();	
	requestData.put("comment_comtents",EtcUtil.strBlockSpecialTags(request.getParameter("comment_comtents"), "8859_1"));
	requestData.put("article_comment_seq",EtcUtil.strBlockSpecialTags(request.getParameter("article_comment_seq")));
	requestData.put("article_nid",EtcUtil.strBlockSpecialTags(request.getParameter("article_nid")));
	requestData.put("last_modifier",EtcUtil.strBlockSpecialTags(request.getParameter("last_modifier"), "8859_1"));
	
	
	int resultCnt = 0;
	int article_nid = Integer.parseInt(EtcUtil.strBlockSpecialTags(request.getParameter("article_nid")));
	String returnUrl = "/sinmungo/view.jsp?article_nid="+article_nid;
	String returnMsg = "";
	//System.out.println(requestData.toString());
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */
	if(requestData!=null){
		resultCnt = articleManager.modifyCommentArticle(requestData);	 
	}	 
	
	 
	if(resultCnt > -1){ 
		returnMsg = "���� �Ǿ����ϴ�.";
	}else{
		returnMsg = "���� �� ������ �߻��Ͽ����ϴ�.";
	}
%>

<script type="text/javascript">
<!--

	alert("<%=returnMsg %>");	
	location.href = "<%=returnUrl %>"; 
		
//-->
</script>


