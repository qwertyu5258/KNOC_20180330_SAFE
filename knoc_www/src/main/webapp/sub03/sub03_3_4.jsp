<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","03");
	application.setAttribute("gNavMenuDepth3","04");
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
                    &gt; <span class="locanow">�ؿܻ������</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_3_4.gif" alt="�ؿܻ������" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                    <h5 class="mT0">����</h5>
                    <p>�ѱ���������� ���� 1970��� �� ������� �Ǽ��� �Ϸ�� ������ ����� �޸� 1980�� �� �ʺ��� ���ݱ��� ���Ϻ������ �Ǽ��� ��� ���ÿ� �̷������ �ִ� �� ���������� ������ ����� �� �о߿��� ���� �ְ��� ������� �����ϰ� �ֽ��ϴ�.</p>
					<p class="pt05 pl10">�̷��� ����°� ������ �������� ���� �����忡 ���� �������䰡 �����ϰ� �ִ� �߱�, �ε� ���� ���� �ؿ� ���� ������ �������� ���� �ΰ���ü���� ���� ������ ���������ν� �츮������ ������� ���蹫�뿡 �����ϰ� ���� �ΰ���ü�� �ؿ������� �����ϴ� �� �������� ������ �⿩�ϰ� �ֽ��ϴ�.</p>
					<h5>������Ȳ</h5>

						<table class="chart1" summary="�ؿܻ�� ������Ȳ�� Ȯ���� �� �ֽ��ϴ�.">

						<caption>�ؿܻ�� ������Ȳ</caption>
						<col width="150px;" />
						<col />
						<thead>
						<tr>
						<th scope="col" class="first">����</th>
						<th scope="col">���</th>
						</tr>
						</thead>
						<tbody>
						<tr>
						<td class="first">�ؿܻ�� ������� �ܰ�</td>
						<td><p>�������ȸ ���� �� �������̳� ����</p>
						<p>���ֱ�� �ʼ���� ����</p>
						<p>�߱� CPP, �ε� OIDB�� ������� ü��</p></td>
						</tr>
						<tr>
						<td class="first">������� �� Ȱ��ȭ</td>
						<td><p>�߱� ������ ���Ϻ������ Ÿ�缺���� �ڹ��뿪 ����</p>
						<p>�ε� Mangalore ������� �Ǽ����� �η� �İ�(1�� ����)</p>
						<p> ��Ʈ�� �������������÷�(��������ι�) ������������</p>
						<p>�̶�ũ ����Ȯ���� ���� ���������� SOC ��� ����</p></td>
						</tr>
						</tbody>
						</table>

						<div class="Cboth pT20"><img src="../images/business/img_sub03_3_4_1.gif" alt="������Ȳ ���"/>
							<ul class="blindtext">
							<li>�ε� OIDB�� MOU ü��(05.11��)</li>
							<li>�߱� CPP ��ǥ�� �������Ϻ������ �湮</li>
							<li>�߱� ������ ���Ϻ������ ������ (06.8��)</li>
							<li>�̶�ũ ���� ��������</li>
							<li>SOC ������ ���ü��</li>
							<li>��Ʈ�� ����������Ʈ�÷� �������� ȸ��</li>
							</ul>
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
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>����ü�ó �Ǽ������</td>
					<td class="contact_user"><strong>����� : </strong>�赿��</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-5328</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->

			<!-- new_officer -->
			<div class="new_officer mT10" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
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