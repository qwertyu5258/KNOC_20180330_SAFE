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

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>

                   <h4><img src="../images/business/img_ttl_sub03_2_2_uae.gif" alt="UAE �ƺδٺ� 3������" /></h4>
                    <div class="mT10"><img src="../images/business/img_sub03_2_2_uae.gif" alt="UAE �ƺδٺ� 3������" /></div>

                    <p class="rtxt">[2016�� 10���� ����]</p>
					<table class="chart2" summary="�ƺδٺ� 3������ ���� ������ Ȯ���� �� �ֽ��ϴ�.">

					<caption>�ƺδٺ� 3������ ���� ����</caption>
					<col width="10%" />
					<col width="20%" />
					<col width="20%" />
					<col width="10%" />
					<col width="13%" />
					<col width="10%" />
					<col width="16%" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>

					<th scope="col">������</th>

					<th scope="col">�����</th>

					<th scope="col">�����<br /> �Ű���</th>

					<th scope="col">�ѱ�������<br />����(%)</th>

					<th scope="col">��������<br />(%)</th>

					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž����</td>
					<td>UAE �ƺδٺ� 3������ </td>
					<td>�����(OPCO<sup>*</sup>)<br /><span style="font-size:11px">*Al Dhafra Petroleum Operations Company</span></td>
					<td>'12.03.12</td>
					<td>40</td>
					<td>30%</td>
					<td>GS������</td>
					</tr>
					</tbody>
					</table>

                    <p class="mT20" style="text-align:justify;">
UAE �ƺδٺ� 3������(Area 1, 2, 3)����� 2�� ���󱤱�(Area 1, 2)�� 1�� �ػ󱤱�(Area 3)�� �̷���� �ִ�. ��12�⿡ 2D/3D ź���� �ڷ� ������ó�� �۾��� �Ϸ��Ͽ��� ��14�� Area 1 �Ҹ��� ���� ���� ����(2��)�� ���� �ϻ� 1�� 8õ�跲�� ������迡 �����Ͽ���. ��14�� Area 1, 2�� 3D ź���� �ڷ����(1,869km2)�� �Ϸ��Ͽ���, ��15�⿡�� Area 3 �ű� 3D ź����Ž�� �ڷ����(413km2)�� �Ϸ��Ͽ�����, Area 1 ���� 4���� ���� ���߸� ���� �Ҹ��� �������� ���差 131�鸸�跲�� Ȯ���Ͽ���. Area 1 �Ҹ��� ������ ���� ���߰�ȹ ���� �� EPC �غ� �ܰ�� ���� �ϻ� �ִ� 3���跲�� ������ ���� ������ �����̴�. 
					</p>
                </div>
				<!--//��-->
		  </div>

		   <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-11-23</td>
					<td class="contact_team"><strong>���μ� : </strong>Ž����ó ��������Ž����</td>
					<td class="contact_user"><strong>����� : </strong>���Ͽ�</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3169</td>
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