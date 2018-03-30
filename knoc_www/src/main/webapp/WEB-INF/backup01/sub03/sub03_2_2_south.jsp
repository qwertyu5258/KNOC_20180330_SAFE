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

                   <h4><img src="../images/business/img_ttl_sub03_2_2_sangaw_south.gif" alt="�̶�ũ Sangaw S." /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_krg_south.gif" alt="�̶�ũ Sangaw S.������" /></div>

                   <p class="rtxt">[2016�� 4���� ����]</p>
					<table class="chart2" summary="�̶�ũ - Sangaw South ���� ������ Ȯ���� �� �ֽ��ϴ�.">

					<caption>�̶�ũ - Sangaw South ���� ����</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="70px" />
					<col width="50px" />
					<col width="50px" />
					<col width="60px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>

					<th scope="col">������</th>

					<th scope="col">�����</th>

					<th scope="col">����� �Ű���</th>

					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>

					<th scope="col">�ѱ�������<br />����</th>

					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž����</td>
					<td>�̶�ũ<br /> Sangaw S.</td>
					<td>��������</td>
					<td>'08.12</td>
					<td>60</td>
					<td>60</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>

                    <p class="mT20">�̶�ũ �Ϻ� ���� ������ ��ġ�� Sangaw South ������ 2008�� 12�� �̶�ũ ���� ��ġ���ο� ���깰�й����� ���� ������ ����Ͽ���. �ѱ��������簡 ����ڷμ� 60%�� ������ ������ �ִ�. ��11�� 11�� ù ��° Ž����(SwS-1)��, ��14�� 11���� �� ��° Ž����(Mass-1)�� ���� �Ϸ� �Ͽ���. 2015�� 4������ 3D ����Ž�� �ڷ� ��� �� ó��, �ؼ����̸� �Ϲݱ⿡ ����(Mass-2) ���߸� �Ϸ��Ͽ���. </p>
                </div>
				<!--//��-->
		  </div>

		  <!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-05-09</td>
					<td class="contact_team"><strong>���μ� : </strong>Ž����ó �ƽþ�Ž����</td>
					<td class="contact_user"><strong>����� : </strong>�Ѽ���</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3149</td>
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