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

                   <h4><img src="../images/business/img_ttl_sub03_2_2_altius.gif" alt="ī���彺ź - Altius" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_altius.gif" alt="ī���彺ź - Altius ������" /></div>

                    <p class="rtxt">[2016�� 9���� ����]</p>
					<table class="chart2" summary="ī���彺ź - Altius ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>ī���彺ź - Altius ���� ����</caption>
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
					<th scope="col">�ѱ�������</th>
					<th scope="col">�ѱ�������<br />����</th>
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">����</td>
					<td>
						Akzhar,<br />Besbolek,<br />Karataikyz,<br />Alimbai
					</td>
					<td>�ѱ���������</td>
					<td>'11.3</td>
					<td>95%</td>
					<td>95%</td>
					<td>-</td>
					</tr>
					</tbody>
					</table>

                    <p class="mT20">����� '11. 3��, ī���彺ź�� 3���� ���걤��(Akzhar, Besbolek, Karataikyz) �� 1���� ���߱���(Alimbai)�� ������ ĳ���� ���� Altius Holding Inc.�縦 �����ϴ� ����� �ϰ��Ͽ���. 2014�� 1��Alimbai ������ ���걤���� ��ȯ�Ǿ���, 2016�� ���� Altius�簡 ������ 4�������κ��� ���� ���� �� 6.9�跲�� ������ �����ϰ� �ִ�.</p>
                </div>
				<!--//��-->
		  </div>

		  <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-11-30</td>
					<td class="contact_team"><strong>���μ� : </strong>������1ó �ߵ�CIS������</td>
					<td class="contact_user"><strong>����� : </strong>�����</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3348</td>
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