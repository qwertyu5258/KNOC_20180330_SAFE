<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","03");
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
                    &gt; <span>�Ǽ����</span>
                    &gt; <span class="locanow">��������Ǽ�</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_3_3.gif" alt="��������Ǽ�" /></h3>
				</div>
				<!--����-->
				<div class="business2">
					<h5 class="mT0">����ü� �������</h5>
                    <div><img src="/images/business/img_sub03_3_3_1.gif" alt="��Ʈ�� 11-2 ����ü�" /></div>
                    <table class="chart1" summary="����ü� ������Ҹ� Ȯ���� �� �ֽ��ϴ�.">

					<caption>����ü� �������</caption>
					<col width="150px;" />
					<col width="490px;" />
					<thead>
					<tr>
					<th scope="col" class="first">�������</th>
					<th scope="col">���</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">���� �÷���(Well head Platform)</td>
					<td>������ �ִ� �������� ����Ǿ� ���������κ��� źȭ���� ��ü�� ����, �����ϴ� ������</td>
					</tr>
					<tr>
					<td class="first">���� �÷���(PUQC Platform)</td>
					<td>���������κ��� ���ߵ� ��ü�� ��翡 �´� ����, ��������Ʈ�� �и��Ͽ� ó���ϴ� ���� ž��� ������</td>
					</tr>
					<tr>
					<td class="first">���� ���(Gas Export Pipeline)</td>
					<td>����� ������ ���� ó���ü��� �̼��ϱ����� ������ ��ġ�� ���</td>
					</tr>
					<tr>
					<td class="first">FSO(Floating Storage &amp; Offloading)</td>
					<td>�����÷������� ����� ��������Ʈ ���� �� �������� �������ִ� ����</td>
					</tr>
					</tbody>
					</table>
					<h5>����ó���ü� ��������</h5>
                    <div class="ltxt"><img src="../images/business/imgin1_sub03_3_3.gif" alt="����ó���ü� ����" />
						<ul class="blindtext">
						<li>������</li>
						<li>����/��ü(��������Ʈ, ��) �и� �� Liquid �� [ ��������Ʈ/���� �� �и� - ��������Ʈ ����ȭ - FSO - ������] �� Water �� ��ó�� �� ���</li>
						<li>��������</li>
						<li>�̽�������</li>
						<li>��������</li>
						<li>�������</li>
						<li>����ó</li>
						</ul>
					</div>
                    <table class="chart2" summary="����ó���ü� ��������� Ȯ���� �� �ֽ��ϴ�.">

					<caption>����ó���ü� �������</caption>
						<col width="150px;" />
						<col width="490px;" />
						<thead>
							<tr>
								<th scope="col" class="first">����</th>
								<th scope="col">���</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="first">����/��ü �и�</td>
								<td>���������� ����� ��ü�� ����/��ü(��������Ʈ, ��)�� �и�</td>
							</tr>
							<tr>
								<td class="first">��������</td>
								<td>�и��� ������ �����ϴ� ���� ����</td>
							</tr>
							<tr>
								<td class="first">�̽��� ����</td>
								<td>���� �ӿ� �����ϴ� ���ſ� źȭ����(C5��)�� ����</td>
							</tr>
							<tr>
								<td class="first">���� ���</td>
								<td>��������� ���� ���� ������ ���� ������ ������ ����</td>
							</tr>
							<tr>
								<td class="first">��������Ʈ/�� �и�</td>
								<td>��������Ʈ�� ���� ����</td>
							</tr>
							<tr>
								<td class="first">��������Ʈ ����ȭ</td>
								<td>��������Ʈ���� ���� ������ �ִ��� �и��� ����ȭ ��Ű�� ����</td>
							</tr>
							<tr>
								<td class="first">FSO</td>
								<td>����ȭ�� ��������Ʈ ���� �� �������� ����</td>
							</tr>
						</tbody>
					</table>
					<h5>�ֿ����</h5>
                    <div><img src="../images/business/img_sub03_3_3_2.gif" alt="�ֿ���� ���"/>
						<p class="blindtext">���� ��ġ, WHd �÷��� ��ġ, PJQC �÷��� ��ġ, ��Ʈ�� 11-2 �÷��� ��ġ�Ϸ�, ��������, FSO</p>
					</div>
				</div>
				<!--//��-->
			</div>

			<!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong></td>
					<td class="contact_team"><strong>���μ� : </strong>���߰Ǽ�ó ���μ�����</td>
					<td class="contact_user"><strong>����� : </strong>�����</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3949</td>
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