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
					 <h3><img src="../images/business/img_ttl_sub03_2_2_eagle_ford.gif" alt="�̱� Eagle_Ford " /></h3>

                	<div class="mT10"><img src="../images/business/eagel_ford.jpg" width="615px" height="430px" alt="�̱� eagel_ford �ػ� ������" /></div>

					<p class="rtxt">[2016�� 9���� ����]</p>
					<table class="chart2" summary="�̱� ANKOR �ػ� ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>�̱� ANKOR �ػ� ���� ����</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="50px" />
					<col width="50px" />
					<col width="60px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">������</th>
					<th scope="col">�����</th>
					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
					<th scope="col">�ѱ�������<br />����</th>
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">������</td>
					<td>Eagle Ford</td>
					<td>Anadarko</td>
					<td>23.7</td>
					<td>23.7</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>

					<p class="mT20">
						����� ��11�� 4������ �̱� Anadarko�䰡 ������ �̱����� ���� shale gas ���� ����� ����(����: 23.7%)�ϰ� �ִ�. �̴� ���簡 ������ ������ ������ �������� ����̸�, ���� �ش� �������� ���� 51.0õ�跲(��16.09��, ����� ����)�� ��������Ʈ�� ������ �����ϰ� �ִ�.<br />
						����� �� ����� ���� Anadarko��� ������ ���ݰ��踦 ����, ���� ����� �����ϰ� ������ ���� ������ ��� �߰� ������ ���� ����ϰ� �ִ�.
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
					<td class="contact_team"><strong>���μ� : </strong>������2ó ���ֻ���1��</td>
					<td class="contact_user"><strong>����� : </strong>������</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3408</td>
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