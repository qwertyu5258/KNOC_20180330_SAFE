<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<% 

    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	' Page Navigator section

	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

	application.setAttribute("gNavMenuDepth1","05");

	application.setAttribute("gNavMenuDepth2","13");

	application.setAttribute("gNavMenuDepth3","01");

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

				<%@include file="/include/subtop_05.jsp"%>

				<!--// location: start //-->

				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>��������</span> 
					&gt; <span>������������</span> 
					&gt; <span class="locanow">����������ǥ</span>
				</div>

				<!--// location: end //-->

				

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->

				<div class="pagetle">

					<h3 class="tleimg"><img src="/images/information/ttl_sub04_9_2.gif" alt="����������ǥ" /></h3>

				</div>

				<div class="information">

					<table  class="chart2" summary="����������ǥ�� Ȯ���� �� �ֽ��ϴ�.">

					<caption>����������ǥ</caption>
					

					<col width="150px" />

					<col width="300px" />

					<col width="70px" />

					<col width="70px" />

					<col width="70px" />

					<thead>

					<tr>

					<th scope="col" class="first">����</th>

					<th scope="col">���ξ���</th>

					<th scope="col">�����ֱ�</th>

					<th scope="col">�����ñ�</th>

					<th scope="col">�������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
                      <th rowspan="3" class="first" scope="row">�ֿ������ȹ</th>
					  <td class="tdleft"><strong>�濵��ǥ</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>���ȹ</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>��ȸ��������</strong></td>
					  <td>����</td>
					  <td>����</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <th rowspan="3" class="first" scope="row">�ֿ������� ��������</th>
					  <td class="tdleft"><strong>�ֿ��� ��Ȳ<BR />
				      (��������, ��������, ���߼�)</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�̻�ȸ ȸ�Ƿ�</strong></td>
					  <td>����</td>
					  <td>����</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>����ȸ�� ��Ȳ</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <th rowspan="6" class="first" scope="row">�繫����</th>
					  <td class="tdleft"><strong>�繫��ǥ/�ܺ�ȸ�谨�纸��</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�ں��� �� ������Ȳ</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�ſ��� �� �ŷڵ�</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�塤�ܱ� ���Ա���Ȳ</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>��ä����</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�ֿ��繫����</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <th rowspan="3" class="first" scope="row">�������� ��������</th>
					  <td class="tdleft"><strong>����� ����������</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>������ȹ</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�濵�δ��� �ʷ��� �� �ִ� ������</strong></td>
					  <td>����</td>
					  <td>����</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <th rowspan="7" class="first" scope="row">���� �򰡰�� ��<br />����ڷ�</th>
					  <td class="tdleft"><strong>��ȸ ��������</strong></td>
					  <td>����</td>
					  <td>����</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>����� ��������</strong></td>
					  <td>����</td>
					  <td>����</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>���ΰ�����</strong></td>
					  <td>����</td>
					  <td>����</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>���� �� �ο���Ȳ</strong></td>
					  <td>�б�1ȸ</td>
					  <td>�źб�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�濵�����򰡰��</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>�������� ������</strong></td>
					  <td>��1ȸ</td>
					  <td>1/4�б�</td>
					  <td>���ͳ�</td>
					  </tr>
					<tr>
                      <td class="tdleft"><strong>������ ����ǥ�� �������</strong></td>
					  <td>�б�1ȸ</td>
					  <td>�źб�</td>
					  <td>���ͳ�</td>
					  </tr>

					<tr>

					<th rowspan="2" class="first" scope="row">��Ÿ���� �ȳ�����</th>

					<td class="tdleft"><strong>���� �� ���ù���</strong></td>

					<td>����</td>

					<td>����</td>

					<td>���ͳ�</td>
					</tr>

					<tr>
					  <td class="tdleft"><strong>��������</strong></td>

					<td>����</td>

					<td>����</td>

					<td>���ͳ�</td>
					</tr>
					</tbody>
					</table>

			  </div>

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
						<td><strong>���μ� : </strong>�ѹ�����ó �ѹ���</td>
						<td><strong>����ó : </strong>031-380-2308</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
				</table>
			</div> <!--new_officer end -->

		</div>

	</div>

	

  <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</div>

</body>

</html>