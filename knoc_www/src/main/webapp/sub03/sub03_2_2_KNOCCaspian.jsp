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

				<!-- [2010-01-20 ����] :: �ۼ���: �̽ű� -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>

                   <h4><img src="../images/business/img_ttl_sub03_2_2_sumbe.gif" alt="ī���彺ź KNOC Caspian" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_sumbe.gif" alt="ī���彺ź -KNOC Caspian ������" /></div>

                    <p class="rtxt"> [2016�� 9���� ����]</p>
					<table class="chart2" summary="ī���彺ź - Sumbe ���� ������ Ȯ���� �� �ֽ��ϴ�.">

					<caption>ī���彺ź - KC LLP ���� ����</caption>
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
					<td class="first">����</td>
					<td>Arystan Kulzhan</td>
					<td>�ѱ���������</td>
					<td>'09.12</td>
					<td>85</td>
					<td>85</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>

                    <p class="mT20">����� ��09.12�� 2���� ����/Ž�� ����(Arystan �� Kulzhan����)�� ������ ī���彺ź KNOC Caspian��(�� Sumbe��) ���Կ� �����Ͽ��� (���� ���������� 85%). Kulzhan ������ '12�� 10��, Arystan ������ ��14�� 4�� ���� ��� ��ȯ�� �����Ͽ�����, ��16�� ���� �ϻ� �� 6.4õ �跲�� ������ �����ϰ� �ִ�.</p>
                </div>
				<!--//��-->
		  </div>

		  <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-11-25</td>
					<td class="contact_team"><strong>���μ� : </strong>������1ó �ߵ�CIS������</td>
					<td class="contact_user"><strong>����� : </strong>������</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3350</td>
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