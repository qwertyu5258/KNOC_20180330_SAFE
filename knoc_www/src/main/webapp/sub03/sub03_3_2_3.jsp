<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","03");
	application.setAttribute("gNavMenuDepth3","02");
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
					&gt; <span>����Ұ�
</span>
                    &gt; <span>�Ǽ����</span>
                    &gt; <span class="locanow">��������Ǽ�</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_3_2.gif" alt="��������Ǽ� " /></h3>
				</div>
				<!--����-->
                <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_3_2.jsp" title="����������" ><img src="/images/business/img_tab_sub03_3_1_01.gif" alt="����������" /></a></li>
						<li><a href="sub03_3_2_1.jsp" title="���Ϻ������" ><img src="/images/business/img_tab_sub03_3_1_02.gif" alt="���Ϻ������" /></a></li>
						<li><a href="sub03_3_2_2.jsp" title="�Ǽ���ĺ����" ><img src="/images/business/img_tab_sub03_3_1_03.gif" alt="�Ǽ���ĺ����" /></a></li>
						<li><a href="sub03_3_2_3.jsp" title="ǰ��, ����, ȯ�����" ><img src="/images/business/img_tab_sub03_3_1_04_on.gif" alt="ǰ��, ����, ȯ�����" /></a></li>
						</ul>
							<p class="contTop mT30">�ѱ����������� �� ��������� ǥ��ȭ�� �����Ʒ� �����ϰ� ȿ�������� �����˴ϴ�.<br />����� ISO 9002(ǰ��)�� ISO 14001(ȯ��)�� ȹ���Ͽ� �Ǽ����������ȹ �������� �����������, �Ǽ� �� ��� �̸������ ��� �ܰ踦 �����԰ݿ� ���յǴ� ǰ�� �ý��� �Ʒ� �����ϰ� �ֽ��ϴ�.<br />���� ������� ��ܰ迡���� KOSHA 18001�� �ֽ��� ������������� �ְ��� ȯ������� �����Ͽ� ������� û������ �������(COD 40ppm)�� 1/5�������� ���� ��ȭ ó���Ͽ� �����ϴ� �� ȯ������� ������ ��� ���� 20���Ⱓ �� �Ѱ��� ȯ���� �߻����� �ʾҽ��ϴ�.</p>
							<div><img src="../images/business/img_sub03_3_2_6.gif" alt="ISO9002 �� ISO14001 ����ȹ��, ���������� �� ���� ���" /></div>

						</div>
				<!--//��-->
		  </div>
		</div>

		<!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>����ü�ó �Ǽ������</td>
					<td class="contact_user"><strong>����� : </strong>�赿��</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-5328</td>
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