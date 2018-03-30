<%@page import="kr.co.knoc.sinmungo.ArticleManager"%>
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
   
request.setCharacterEncoding("euc-kr");

	

	ArticleManager articleManager = new ArticleManager(); 
	HashMap dataMap = articleManager.getObmArticleInfo(etcutil.checkNullInt(request.getParameter("article_nid").toString(), 0));  
	ArrayList article_comment = null; 
	article_comment = articleManager.getArticleCommentInfo(etcutil.checkNullInt(request.getParameter("article_nid").toString(), 0));
	
	ArrayList fileList = articleManager.getArticleFileList(etcutil.checkNullInt(request.getParameter("article_nid").toString(), 0));
	
	
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
	String pwd = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("qpwd")));
	String obm_type = etcutil.checkNull(dataMap.get("OBM_TYPE").toString());
	
	
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	
	ArrayList al = new ArrayList();
	int count = 0;
	int seq = 0;

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

     
<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<div id="contentsLayer">
<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->

<script type="text/javascript">
<!--
	if(!<%=isMaster %> && !<%=isUser %>){
		alert("���� ������ �����ϴ�.");
		location.href = "/ombudsman/main.jsp";
	}
	
	function onSubmit(){
	
		
		
		if(document.getElementById("subject").value == ""){
			alert("������ �Է��� �ּ���.");
			document.getElementById("subject").focus();
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
	
	function fileDownFn(p_file_nid){		
		location.href = "/common/fileDown.jsp?file_nid="+p_file_nid;
	}
	
	function goListPage(){
		document.getElementById("form01").submit();
	}
	
	function goDeletePage(article_nid){
		if(confirm("���� �Ͻðڽ��ϱ�?")){
		location.href = "/ombudsman/delete_submit.jsp?article_nid="+article_nid;
		}
	}
	
	function goModifyPage(article_nid){
		location.href = "/ombudsman/modify.jsp?article_nid="+article_nid+"&obm_type=<%=obm_type%>";
	}
	
	function goUpdateCommentViewCheck(p_no){
		$("comment_div_"+p_no).toggle();
	}
	
	function goSubmitFn(){
		if(document.getElementById("comment_comtents").value == ""){
			alert("������ �Է��� �ּ���.");
			document.getElementById("comment_comtents").focus();
			return;
		}
		
		if(confirm("��� �Ͻðڽ��ϱ�?")){
			document.getElementById("com_form").submit();
		}
	}
	
	function goUpdateComment(p_no){
		if(document.getElementById("comment_comtents").value == ""){
			alert("������ �Է��� �ּ���.");
			
			return;
		}
		if(confirm("���� �Ͻðڽ��ϱ�?")){
			document.getElementById("comment_form_"+p_no).submit();
		}
	}
	
	function goDeleteFn(p_no){
		if(confirm("���� �Ͻðڽ��ϱ�?")){
			document.getElementById("comment_del_form_"+p_no).submit();
		}
	}

//-->
</script>
	<div id="rightarea">
		<div id="subcnts">			
		
			<!-- �������� ������û[start] -->
			<div class="subTop04">
				<h2><img src="/images/customer/tit_customer.gif" alt="������(Customer Participation)" /></h2>
				<p><img src="/images/customer/txt_customer.gif" alt="������ ���ɼ��� Ȯ���� ���� �ð���, ���ο� ȯ��� ����� �����ϸ� ������ ���並 �������� �ֽ��ϴ�." /></p>
			</div>
			<!-- �������� ������û[end] -->
			
			<!--// location: start //-->
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
				&gt; <span>������</span>&gt; <span>û�� �Ⱥ���� �Ű���</span><!-- &gt; <span class="locanow"></span>  -->
			</div>
			<!--// location: end //-->
			<div class="pagetle">
				<h3>û�� �Ⱥ���� �Ű���</h3>
			</div>
			<div id="boardsec">

<form action="list.jsp" method="post" name="form01" id="form01">
	<input type="hidden" name="article_pwd" value="<%=dataMap.get("ARTICLE_PWD") %>">
	<input type="hidden" name="page" value="<%=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page"))) %>">
	<input type="hidden" name="field" value="<%=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("field"))) %>">
	<input type="hidden" name="searchValue" value="<%=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("searchValue"))) %>">
			
				<table cellspacing="0" cellpadding="0" class="viewtype" summary="GREAT WAY �Խ����� �������� �Է��մϴ�.">
					<caption>GREAT WAY �۾���</caption>
					<colgroup>
						<col width="100px" />
						<col width="620px" />
					</colgroup>			
					
					
					<tr>
						<th scope="row" class="th1"><label for="subject">��&nbsp;&nbsp;��</label></th>
						<td class="td1">
							<%=etcutil.checkNull(dataMap.get("SUBJECT").toString())  %>
						</td>
					</tr>
					
					<tr>
						<th scope="row" class="th1"><label for="subject">��&nbsp;&nbsp;��&nbsp;&nbsp;��</label></th>
						<td class="td1">
							<%=etcutil.checkNull(dataMap.get("REG_DATE").toString())  %>
						</td>
					</tr>
					<tr>
						<th scope="row" class="th1"><label for="content">��&nbsp;&nbsp;��</label></th>
						<td class="cnts1" style="height:250px;vertical-align:top;padding:20px 10px;"><%=etcutil.checkNull(dataMap.get("CONTENTS").toString().replaceAll("\r\n","</br>"))  %></td>
					</tr>
			
					<tr>
						<th scope="row" class="th1"><label for="pwd">÷������</label></th>
						<td class="cnts1">
					<%
						for(int i=0; i<fileList.size(); i++){
							HashMap fileMap = (HashMap)fileList.get(i);
					%>
						<%if(!"".equals(etcutil.checkNull(fileMap.get("ORG_FILENM").toString()))){ %>
							<a href="#" onclick="fileDownFn(<%=etcutil.checkNullInt(fileMap.get("FILE_NID").toString(), 0) %>); return false;"><%=etcutil.checkNull(fileMap.get("ORG_FILENM").toString()) %></a>
							<BR />
						<%} %>	
					<%		
							
						}
						
					%>									
						</td>
					</tr>
									
				</table>
				</form>	
				
	<!-- ��۸�� start -->
	<div class="board_re_list">
	<p>ó����Ȳ ��ȸ</p>
		<ul>
 		<%for(int i=0; i< article_comment.size(); i++ ){ 
 			HashMap commentMap = (HashMap)article_comment.get(i);
 		%>
 		
		<li>
			<div class="board_re_name"><%=etcutil.checkNull(commentMap.get("LAST_MODIFIER").toString()) %></div>
			<ul>
			<%
			if(isMaster){
			%>
			<li class="board_re_modify"><a href="#comment_form_<%=i %>" onclick="goUpdateCommentViewCheck('<%=i %>');return false">����</a></li>
			<li class="board_re_del">
			<form id="comment_del_form_<%=i %>" method="post" action="delete_comment_submit.jsp">
				<input name="article_comment_seq" id="article_comment_seq" type="hidden" value="<%=etcutil.checkNull(commentMap.get("ARTICLE_COMMENT_SEQ").toString()) %>"/> 	
				<input name="article_nid" id="article_nid" type="hidden" value="<%=etcutil.checkNull(dataMap.get("ARTICLE_NID").toString())  %>"/>
			<a href="#comment_form_<%=i %>" onclick="goDeleteFn('<%=i%>');return false">����</a>
			</form>
			</li>
			<%}else{ %>
				<li class="board_re_modify_none"> </li>
				<li class="board_re_del"> </li>
			<%} %>
			<li class="board_re_cont"><%=etcutil.checkNull(commentMap.get("COMMENT_COMTENTS").toString().replaceAll("\r\n","</br>")) %></li>
			<li class="board_re_date"><%=etcutil.checkNull(commentMap.get("LAST_UPDATE_DATE").toString().substring(0,10)) %></li>
 
				<!-- ��� ���� start -->
				<form id="comment_form_<%=i %>" action="modify_comment_submit.jsp" method="post">			
					<input name="article_comment_seq" id="article_comment_seq" type="hidden" value="<%=etcutil.checkNull(commentMap.get("ARTICLE_COMMENT_SEQ").toString()) %>"/>
					<input name="last_modifier" id="last_modifier" type="hidden" value="�����"/> 	
					<input name="article_nid" id="article_nid" type="hidden" value="<%=etcutil.checkNull(dataMap.get("ARTICLE_NID").toString())  %>"/>
				<div class="reply_modify" id="comment_div_<%=i %>" style="display:none;">
					<fieldset><legend>��ۼ���</legend>
						<div class="board_re_text"><textarea name="comment_comtents" id="comment_comtents" cols="0" rows="0" title="��� ������ �Է��ϼ���."><%=etcutil.checkNull(commentMap.get("COMMENT_COMTENTS").toString()) %></textarea></div>
						<div class="board_re_btn"><input type="button" value="��ۼ���" onclick="goUpdateComment(<%=i %>);" /></div>
					</fieldset>									
				</div>
				</form>
				<!-- //��� ���� end -->
			</ul>
		</li>

 	<%} %>
 
		</ul>
	
	</div>
	<!-- //��۸�� end -->
 
 
	<!-- ��� ��� start -->
	<form name="com_form" id="com_form" method="post" action="insert_comment_submit.jsp" >	
		<input name="article_nid" id="article_nid" type="hidden" value="<%=etcutil.checkNull(dataMap.get("ARTICLE_NID").toString())  %>"/>
		<input name="last_modifier" id="last_modifier" type="hidden" value="�����"/>
		<input type="hidden" name="article_pwd" value="<%=dataMap.get("ARTICLE_PWD") %>">
		<!-- <input type="hidden" name="page" value="<%=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page"))) %>">
		<input type="hidden" name="field" value="<%=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("field"))) %>">
		<input type="hidden" name="searchValue" value="<%=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("searchValue"))) %>"> 
		-->
	<%
		if(isMaster){
	%>
	<div class="board_re_write">
	<fieldset><legend>��۵��</legend>
		<div class="board_re_name2">����Է�</div>
		<div class="board_re_text"><textarea name="comment_comtents" id="comment_comtents" cols="0" rows="0" title="��� ������ �Է��ϼ���."></textarea></div>
		<div class="board_re_btn"><input type="button" value="��۵��" onclick="goSubmitFn();"/></div>
	</fieldset>
	</div>
	<%} %>
	</form>
	<!-- //��� ��� end -->
 
 
 

				
				
				<div class="boardbtm mtm10">
					<div class="btnsec">
					<%
						if(isUser){ 
					%>
						<a href="#Modify" onclick="goModifyPage('<%=etcutil.checkNull(dataMap.get("ARTICLE_NID").toString())  %>');return false;"><input type="image" src="/images/board/btn_modi.gif" alt="����" /></a>
					<%
						}
					%>
						<a href="#Delete" onclick="goDeletePage('<%=etcutil.checkNull(dataMap.get("ARTICLE_NID").toString())  %>');return false;"><input type="image" src="/images/board/btn_del.gif" alt="����" /></a>
						<a href="#content" onclick="goListPage();return false;"><input type="image" src="/images/board/btn_list.gif" alt="���" /></a>
					</div>
				</div>								
							
			</div>	
		</div>
	</div>
</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</body>
</html>