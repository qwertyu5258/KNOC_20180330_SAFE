<%@page import="com.neoboard.session.UserSession"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>    
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.channel.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="ChannelMa" scope="page" class="kr.co.knoc.channel.ChannelManager" />
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>   
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String mode = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("m")));

UserSession userSession = (UserSession)session.getAttribute("USERSESSION");
%>

<%		

	
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("1")));
	String pwd = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("1234")));
	String obm_type = etcutil.strBlockSpecialTags("obm1");
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	
	ArrayList al = new ArrayList();
	int count = 0;
	int seq = 0;

	boolean isMaster = true;
	boolean isUser = false;
/*
	if(session.getAttribute("SINMUNGO_STATUS_NO") != null){ 
		if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("3")){
			isMaster = true;
		}else if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("2")){
			isUser = true;
		} 
	}*/
	//out.print("<script>if(!"+isUser+"){alert(\"���� ������ �����ϴ�.\");location.href = \"/sub04/sub04_8.jsp\";}</script>");
%>        

     
<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<div id="contentsLayer">
<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->

<script type="text/javascript">

	if(false){
		alert("���� ������ �����ϴ�.");
		location.href = "/ombudsman/main.jsp";
	}
	
	function onSubmit(){
	
		if(document.getElementById("subject").value == ""){
			alert("������ �Է��� �ּ���.");
			document.getElementById("subject").focus();
			return;
		}
		if(document.getElementById("article_pwd").value == ""){
			alert("�н����带 �Է��� �ּ���.");
			document.getElementById("article_pwd").focus();
			return;
		}
		

		if(document.getElementById("content").value == ""){
			alert("������ �Է��� �ּ���.");
			document.getElementById("content").focus();
			return;
		}
		
		if(confirm("��� �Ͻðڽ��ϱ�?")){
			document.getElementById("form01").submit();
		}
	}
	
	

//-->
</script>
	<div id="rightarea">
		<div id="subcnts">			
		
			<!-- �������� ������û[start] -->
			<%@include file="/include/subtop_04.jsp"%>
			<!-- �������� ������û[end] -->
			
			<!--// location: start //-->
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
				&gt; <span>������</span>&gt; <span class="locanow">û�� �Ⱥ�� �Ű���</span>
			</div>
			<!--// location: end //-->

			<div class="pagetle">
				<h3><img src="/images/omb/ttl_sub04_8_10.gif" alt="û�� �Ⱥ�� �Ű���" /></h3> 
			</div>
			<div id="boardsec">

<form action="submit.jsp" method="post" name="form01" id="form01" enctype="multipart/form-data">
	<input type="hidden" name="order_no" value="0">
	<input type="hidden" name="status_no" value="1">
	<input type="hidden" name="level_no" value="0">
	<input type="hidden" name="type" value="0">		
	<input type="hidden" name="obm_type" value="<%=obm_type %>" />
	<input type="hidden" id="article_pwd" name="article_pwd" value="<%=userSession.getUserVirtualno() %>"/>			
				<table cellspacing="0" cellpadding="0" class="viewtype" summary="GREAT WAY �Խ����� �������� �Է��մϴ�.">
					<caption>GREAT WAY �۾���</caption>
					<colgroup>
						<col width="100px" />
						<col width="620px" />
					</colgroup>			
					<tr>
						<th scope="row" class="th1" colspan="2"><label for="subject">������ :  <%=obm_type %></label></th>
					</tr>	
					<tr>
						<th scope="row" class="th1" colspan="2"><label for="subject">1. �Ű����(�������� ���)</label></th>						
					</tr>
					<tr>
						<th scope="row" class="th1"><label for="subject">��&nbsp;&nbsp;��</label></th>
						<td class="td1"><input type="text" value="" id="subject" name="subject" maxlength="200" class="input" style="width:570px;" /></td>
					</tr>
					
						
					
					<tr>
						<th scope="row" class="th1"><label for="content">��&nbsp;&nbsp;��</label></th>
						<td class="cnts1"><textarea name="content" id="content" cols="120" style="width:100%;height:300px" class="inputST"></textarea></td>
					</tr>
					<tr>
						<th scope="row" class="th1" colspan="2"><label for="subject">3. �������� ÷��</label></th>						
					</tr>
					<tr>
						<th scope="row" class="th1"><label for="pwd">÷������</label></th>
						<td class="cnts1">
							<input type="file" name="filex1"/> ���� ũ��� 10MB���� �����մϴ�.								
							<div style="margin-top: 5px"></div>
							<input type="file" name="filex2"/> ���� ũ��� 10MB���� �����մϴ�.								
						</td>
					</tr>				
				</table>
</form>					
					<div class="boardbtm mtm10">
						<div class="btnsec">
							<a href="#content" onclick="onSubmit();return false;"><input type="image" src="/images/board/btn_ok.gif" alt="Ȯ��" /></a>
							<a href="/ombudsman/obmChoice.jsp"><img src="/images/board/btn_cancel.gif" alt="���" /></a>
						</div>
					</div>								
							
			</div>	
		</div>
	</div>
</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</body>
</html>