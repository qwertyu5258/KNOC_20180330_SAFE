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

                   <h4><img src="../images/business/img_ttl_sub03_2_2_Malaysia.gif" alt="�����̽þ� Block 2B" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_Malaysia.gif" alt="�����̽þ� Block 2B ������" /></div>

                   <p class="rtxt">[2016�� 6���� ����]</p>
					<table class="chart2" summary="��Ʈ�� 11-2 ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>��Ʈ�� 11-2 ���� ����</caption>
					<col width="50px" />
					<col width="60px" />
					<col width="80px" />
					<col width="50px" />
					<col width="100px" />
					<col width="120px" />
					<col width="100px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col" >������</th>

					<th scope="col">�����</th>

					<th scope="col">�����<br /></th>

					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>

					<th scope="col">�ѱ�������<br />����</th>

					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž����</td>
					<td>Block 2B</td>
					<td>Shell</td>
					<td>��13.9</td>
					<td>15</td>
					<td>15</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>

                   <p class="mT20">�����̽þ� �����׿��� �ϼ��� ���� ���ؿ� ��ġ�� 2B ������ ����� 2013�� 6������ �����Ͽ���. ���� ���� ������� Shell�簡 50%�� ������, UAE�� Mubadala�簡 20%, �ѱ��������� 15%, �����̽þ� ���� Petronas Carigali�簡 15%�� ���� �����ϰ� �ִ�. 2013�� 11�� �� Kuda Laut �������� 1�� Ž����߸� ��������, 2014�� 4�� Kekek �������� 2�� Ž�����, 2015�� 12�� Tuntong �������� 3�� Ž����߸� �Ϸ��Ͽ���, 2016�� 6��, Lalawak ������ ���� 4�� Ž����߸� �Ϸ��Ͽ���, ���� �� �򰡸� ���� ���̴�.</p>

				</div>
				<!--//��-->
		  </div>

		  <!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-07-15</td>
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