<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","08");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","01");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>       
<%@include file="/include/sub08_auth.jsp"%>
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_08.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�̻�ȸ</span>
					&gt; <span>�̻�ȸ�</span>
                    &gt; <span>���ȹ �� ��������</span>
					&gt; <span class="locanow">�̻�ȸ���ȹ</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/directors/ttl_sub08_2_2_1.gif" alt="�̻�ȸ���ȹ" /></h3>
				</div>
				<!--����-->
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="PLAN" adminURL="" sessionName="USERSESSION"/>
				 <!--//��-->
			</div>
			
			<!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ��ȹ������</td>
					<td class="contact_user"><strong>����� : </strong>�̻�</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2209</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->	
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>