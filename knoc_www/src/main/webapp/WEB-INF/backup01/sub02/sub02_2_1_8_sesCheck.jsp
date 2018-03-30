<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />    
<% 
String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));
String sague_nid = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("sague_nid")));

    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","08");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	
	
%>        
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
function goListPage(p_page){
	location.href= "./sub02_2_1_8_list.jsp?page="+p_page;
}

function goCommentExec(p_sague_nid){
	
	if(document.getElementById("user_name").value == ""){
		alert("������(������)�� �ۼ��� �ּ���.");
		document.getElementById("user_name").focus();
		return;
	}
	
	if(document.getElementById("tel_01").value == ""){
		alert("��ȭ��ȣ�� �Է��� �ּ���.");
		document.getElementById("tel_01").focus();
		return;
	}
	
	if(document.getElementById("tel_02").value == ""){
		alert("��ȭ��ȣ�� �Է��� �ּ���.");
		document.getElementById("tel_02").focus();
		return;
	}
	
	if(document.getElementById("tel_03").value == ""){
		alert("��ȭ��ȣ�� �Է��� �ּ���.");
		document.getElementById("tel_03").focus();
		return;
	}
	
	if(document.getElementById("user_opinion").value == ""){
		alert("�����ǰ��� �ۼ��� �ּ���.");
		document.getElementById("user_opinion").focus();
		return;
	}
	
	if(confirm("�ǰ��� ����Ͻðڽ��ϱ�?")){
		document.commentForm.submit();	
	}
}
</script>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<%
if (uid == "" || "".equals(uid)){
%>
<script type="text/javascript">
	alert(11);
	location.href= "/member/login.jsp?return_url=sub02_2_1_8_form.jsp";
</script>
<%			
}
%>
	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>�����濵</span>
                    &gt; <span>�濵����</span>
					&gt; <span>�Ϲ���Ȳ</span>
					&gt; <span class="locanow">��� �������� ����</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_1.gif" alt="�Ϲ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="status">
					<h4><img src="/images/management/tit_2_2_1_8.gif" alt="��� �������� ����"/></h4>				
				</div>
				<div class="rules">
					
					<fieldset>
					<legend>��� �������� ���� �ǰ� ���</legend>
					<form id="commentForm" name="commentForm" method="post" action="./sub02_2_1_8_comment_exec.jsp">
					<input type="hidden" id="sague_nid" name="sague_nid" value="<%=sague_nid %>" />
					<table class="cr_view" summary="��� �������� ���� �ǰ� ���">
					<caption>��� �������� ���� �ǰ� ���</caption>
					<colgroup>
						<col width="20%" />
						<col width="30%" />
						<col width="20%" />
						<col width="30%" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">�ǰ����� ��� ����</th>
							<td colspan="3">��������</td>
						</tr>
						<tr>
							<th scope="row"><label for="user_name">������(������)</label></th>
							<td><input type="text" id="user_name" name="user_name" class="s_01" value="<%=ses.getName()%>" disabled="disabled"/></td>
							<th scope="row"><label for="tel_no">��ȭ��ȣ</label></th>
							<td>
								<input type="text" id="tel_01" name="tel_01" class="s_02" /> -
								<input type="text" title="��ȭ��ȣ �߰��ڸ� �Է�" id="tel_02" name="tel_02" class="s_02" /> -
								<input type="text" title="��ȭ��ȣ �������ڸ� �Է�" id="tel_03" name="tel_03" class="s_02" />
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="user_opinion">�����ǰ�<br />(����,������� ��)</label></th>
							<td colspan="3">
								<p class="byte">���� <span>0</span> / �ִ�1200byte(�ִ��Է� ���ڼ��� �������� �ѱ�600���Դϴ�.)</p>
								<textarea rows="0" cols="0" id="user_opinion" name="user_opinion"></textarea>
							</td>
						</tr>
					</tbody>
					</table>
					</form>
					
					<div class="r_btn">
						<a href="#goListPage" onclick="goListPage('<%=nowpage%>'); return false;"><img src="/images/management/btn_list08.gif" alt="���" /></a>
						<a href="#goCommentExec" onclick="goCommentExec('<%=sague_nid%>');"><img src="/images/management/btn_ragist08.gif" alt="�ǰ� ����ϱ�" /></a>
					</div>
					</fieldset>
				
				</div><!-- rules end -->
	
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<colgroup>
						<col width="auto" />
						<col width="22%" />
						<col width="22%" />
					</colgroup>
					<tbody>
						<tr>
							<td><strong>���μ� : </strong>��ȹ������ ��ȹ������</td>
							<td><strong>����ó : </strong>031-380-2212</td>
							<td></td>
						</tr>
					</tbody>
					</table>
				</div><!-- new_officer end -->
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>	
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>