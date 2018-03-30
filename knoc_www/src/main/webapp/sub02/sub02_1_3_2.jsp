<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*"%>    
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","02");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>       
<% request.setCharacterEncoding("euc-kr"); %>
<%   	
	String grp = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("grp")));
	if (grp == null || grp.equals("")) {
		grp = "QNA1";
	}
%>
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

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
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵����</span>
                    &gt; <span class="locanow">�����濵 Q&amp;A</span>
				</div>
				<!--// location: end //-->
				<!-- [2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_3_2.gif" alt="�����濵 Q&amp;A" /></h3>
				</div>
				<!--����-->
				<div class="manageQna">
					<form name="grpForm" method="post" action="sub02_1_3_2.jsp">
					<fieldset>
						<legend>�׸��� �˻�</legend>
						<label for="grp" class="blindtext">Q&amp;A �׸� ����</label>
							<select id="grp" name="grp" class="qna_select">
							<option value="QNA1" <% if (grp != null && grp.equals("QNA1")) { %>selected="selected"<% } %>>�Ϲݻ��� �� �ٹ����� </option>
							<option value="QNA2" <% if (grp != null && grp.equals("QNA2")) { %>selected="selected"<% } %>>�����浹ȸ��</option>
							<option value="QNA3" <% if (grp != null && grp.equals("QNA3")) { %>selected="selected"<% } %>>��� �� ������ȣ</option>
							<option value="QNA4" <% if (grp != null && grp.equals("QNA4")) { %>selected="selected"<% } %>>��ǰ, ����, ����, ������ ��</option>
							<option value="QNA5" <% if (grp != null && grp.equals("QNA5")) { %>selected="selected"<% } %>>�ŷ���ü</option>
							<option value="QNA6" <% if (grp != null && grp.equals("QNA6")) { %>selected="selected"<% } %>>�Ű�� ó��</option>
							<option value="QNA7" <% if (grp != null && grp.equals("QNA17")) { %>selected="selected"<% } %>>������ ǳ������</option>
							</select>						
							<input type="image" src="/images/management/btn_sele.gif" title="������ Q&amp;A ������ ��ȸ�մϴ�." alt="������ Q&amp;A ������ ��ȸ�մϴ�."/>
							
						</fieldset>
					</form>               
					<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="BUSIQNA" adminURL="" sessionName="USERSESSION"/>
				</div>
				<!--//��-->				 
			</div>
			
			<div class="new_officer">
			<table summary="���μ� �� ����ó ������">
			<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2126</td>
					</tr>
				</tbody>
			</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>