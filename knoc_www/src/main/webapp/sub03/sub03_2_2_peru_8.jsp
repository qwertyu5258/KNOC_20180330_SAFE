<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>


  <%@include file="/include/subtopnavi_new.jsp"%>
  <!--// subtopNavi: start //-->

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
                    &gt; <span>�ؿܻ��</span>
                    &gt; <span class="locanow">����������Ȳ��</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] ::  -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>

                   <h4><img src="../images/business/img_ttl_sub03_2_2_peru_8.gif" alt="���8" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_peru_8.gif" alt="���8 ������" /></div>

                   <p class="rtxt">[2016�� 9���� ����]</p>

				   <table summary="���8 �� ���� ǥ�� ����, ������, �����, �ѱ�������(%(�ۼ�Ʈ)), �ѱ������ ����, ������������� ���� ������ �����մϴ�." class="chart2">
					<caption>���8 �� ���� ����</caption>
					<colgroup>
					<col width="16%">
					<col width="20%">
					<col width="16%">
					<col width="16%">
					<col width="16%">
					<col width="16%">
					</colgroup>
					<thead>
					<tr>
						<th class="first" scope="col">����</th>
						<th scope="col">������</th>
						<th scope="col">�����</th>
						<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
						<th scope="col">�ѱ����������</th>
						<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">����</td>
						<td>��� 8</td>
						<td>Pluspetrol</td>
						<td>40%</td>
						<td>20%</td>
						<td>SK�̳뺣�̼� ,<br />������ͳ׼ų�</td>
					</tr>
					</tbody>
					</table>

                    <ul class="mT20">
                    	<li>������ġ : ��� �Ϻ� ���� �Ƹ��� �и����� Maranon ����</li>
                        <li>�������� : 1,823��</li>
                        <li>�� �� �� : Pluspetrol 60%(��ǻ�, �Ƹ���Ƽ��), �������� 20%, ������ͳ׼ų� 11��%, SK �̳뺣�̼� 8��%</li>
                        <li>���Ⱓ : 1996�� 7�� ~ 2024�� 5�� (���ǰ��)</li>
                        <li>�������갳�� : 1974��</li>
                        <li>���� ������� �� �������귮 : 132.5�鸸�跲 (2016�� 9����)</li>
                        <li>����� ���귮 : �� 6.8õ�跲/�� ���� (2016�� 9�� ��)</li>
                    </ul>
                </div>
				<!--//��-->
		  </div>

		  <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-12-05</td>
					<td class="contact_team"><strong>���μ� : </strong>������2ó ���ֻ���3��</td>
					<td class="contact_user"><strong>����� : </strong>�豤��</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3442</td>
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