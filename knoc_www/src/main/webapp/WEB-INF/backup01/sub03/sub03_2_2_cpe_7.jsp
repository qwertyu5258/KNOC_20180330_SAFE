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

                    

                   <h4><img src="../images/business/img_ttl_sub03_2_2_cpe_7.gif" alt="�ݷҺ�� CPE-7" /></h4>

                   <div class="mT10"><img src="../images/business/img_sub03_2_2_cpe_7.gif" alt="�ݷҺ�� CPE-7 ������" /></div>

                    

                    <p class="rtxt">[2014�� 12���� ����]</p>

					<table class="chart2" summary="�ݷҺ�� CPO-7 ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ݷҺ�� CPO-7 ���� ����</caption>

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

					<td>�ݷҺ��<br />CPE-7</td>

					<td>Pluspetrol<br />(�Ƹ���)</td>

					<td>'08.10</td>

					<td>30</td>

					<td>30</td>

					<td>-</td>

					</tr>

					</tbody>

					</table>
                    <p>CPE-7 ������ �ȵ��� �������� ���Ͽ� ������ ���� �� �ϳ��� �ݷҺ�� �߳뽺 ������ ���ʿ� ��ġ�ϰ� �ִ�. ������ ������ �� 12,317���̸�, ������ ���� ������ 30%�̴�.</p>
                    <p>2007�� 12��, ����� Pluspetrol���� �������� ��������� ������ �����ϰ� �Ǿ��µ�, ����-Pluspetrol-CNPC�� ������ ���������׷��� �����Ͽ� �ݷҺ�Ƽ���û(ANH)���κ��� CPE-7������ �о�������ν�, 2008�� 9�� ���ǰ��(TEA, ����򰡰��)�� �����Ͽ���.</p>
                    <p>2013�� 2�� ���� ķ���ο��� ����򰡰��(TEA) �� �ǹ�Ž�繰���� �Ϻ��� �������� 3���� �Ϸ��Ͽ�����, ����������� ���ö�� �ǻ縦 �����ȿ� ����, 2014�� 9�� �� ���ö���� �����Ͽ�����, ���� ��� ���Ḧ ���� ���̴�.</p>
              </div>

				<!--//��-->

		  </div>
		  
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
						<td><strong>���μ� : </strong>Ž����ó ��������Ž����</td>
						<td><strong>����ó : </strong>052-216-3170</td>
						<td><strong>������ : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->

		</div>

	</div>

	

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</div>

</body>

</html>