<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","08");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->

		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_03.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>�������</span>
                    &gt; <span class="locanow">����ȸ������</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_9_3.gif" alt="����ȸ������" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                    ȸ�������� ���� EOR ����� ������ �ܷ� ���� ��ȭ�� Ȥ�� ���� �������� ���߰ų� ���ϰ� ���� �������� ���ҽ�Ű�� �Ͱ� �ַ� ������ �ֽ��ϴ�. ����� ���Ⱓ�� ���������� ���� ���� EOR ����� Ȯ���Ͽ�����, Ư�� �̻�ȭź�� ���Թ� ������ ���� �ؿ� ���� �����ǰ� �����Ͽ����ϴ�. �Դٰ�, ����� ���緡 Ȥ�� ������ ������������ ������ ����ȸ�縦 �μ��Ͽ� ȸ���������� ���� ǳ���� ���� �� ������ �����Ͽ����ϴ�. ����� UAE ź�꿰�� ������ �������� ������� �� ���������� �����ϰ� �ֽ��ϴ�.
						<br /><br />
						ȸ������ ��� Ȯ���� ������ ���ְ��߷� Ȯ�� �� ������ �������� �ߵ����ϱ� ���� �ʼ�����Դϴ�.
						
						
				</div>
				<!--//��-->

				<!-- new_officer -->
				<div class="new_officer" style="left:2%">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-08-20</td>
						<td class="contact_team"><strong>���μ� : </strong>�������ó ����Ѱ���</td>
						<td class="contact_user"><strong>����� : </strong>�ֿ���</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-3506</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- new_officer -->
			</div>
		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>