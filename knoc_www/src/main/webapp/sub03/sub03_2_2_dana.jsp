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

                   <h4><img src="../images/business/img_ttl_sub03_2_2_dana.gif" alt="Dana" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_dana.jpg" alt="Dana ������" /></div>

                    <p class="rtxt">[2016�� 9���� ����]</p>
					<table class="chart2" summary="Dana ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>Dana ���� ����</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="60px" />
					<col width="50px" />
					<col width="50px" />
					<col width="60px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">������</th>
					<th scope="col">�����</th>
					<th scope="col">�ڰ�� �Ű���</th>
					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
					<th scope="col">�ѱ�������<br />����</th>
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž��/����/����</td>
					<td>���� Dana ���</td>
					<td>Dana</td>
					<td>'11.01'</td>
					<td>100</td>
					<td>100</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>

                    <p class="mT20">2010�� ������ Dana�縦 ������ M&A�Ͽ����ϴ�. �̴� ���� ����� ������ M&A ���·� �ؿ� ��� �μ��� ������ ù ����Դϴ�. Dana��� ����, �״����带 ����� 4���� 82���� Ž��, ����, ���� ������ ������ �ִ� ������� �� ���差���� 147�鸸 �跲, ���� ���귮�� 49õ �跲 �Դϴ�. Dana�� �μ��� ���� �ѱ���������� �ؿܼ������߻���� �ٽɰ����� ������ ����, ���ҷ� �������� ����, ������ī���� Ȯ���� �� �ִ� ��ȸ�� �����ϰ� �Ǿ����� ���� �������� ����� Ȱ���� �����ϰ� �ֽ��ϴ�.(2016�� 9���� ����)</p>

                </div>
				<!--//��-->
		  </div>

		   <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-09-30</td>
					<td class="contact_team"><strong>���μ� : </strong>������1ó ����������</td>
					<td class="contact_user"><strong>����� : </strong>Ȳ��ȣ</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3367</td>
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