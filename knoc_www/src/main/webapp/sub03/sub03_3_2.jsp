<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","03");
	application.setAttribute("gNavMenuDepth3","02");
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
					&gt; <span>����Ұ�
</span>
                    &gt; <span>�Ǽ����</span>
                    &gt; <span class="locanow">��������Ǽ�</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_3_2.gif" alt="��������Ǽ� " /></h3>
				</div>
				<!--����-->
                <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_3_2.jsp" title="����������"><img src="/images/business/img_tab_sub03_3_1_01_on.gif" alt="����������" /></a></li>
						<li><a href="sub03_3_2_1.jsp" title="���Ϻ������" ><img src="/images/business/img_tab_sub03_3_1_02.gif" alt="���Ϻ������" /></a></li>
						<li><a href="sub03_3_2_2.jsp" title="�Ǽ���ĺ����" ><img src="/images/business/img_tab_sub03_3_1_03.gif" alt="�Ǽ���ĺ����" /></a></li>
						<li><a href="sub03_3_2_3.jsp" title="ǰ��, ����, ȯ�����" ><img src="/images/business/img_tab_sub03_3_1_04.gif" alt="ǰ��, ����, ȯ�����" /></a></li>
						</ul>
						<div class="mT20"><img src="../images/business/img_sub03_3_2_01.gif" alt="������� ���" /></div>
						<h5>���������� ���� ��ũ����</h5>
							<table class="chart2" summary="��ũ���º� �������� ������ �����ݴϴ�.">
								<caption>���������� ���� ��ũ����</caption>
									<col width="70px" />
									<col width="160px" />
									<col width="170px" />
									<col width="240px" />
								<thead>
								<tr>
									<th scope="col" class="first">��ũ����</th>
									<th scope="col">CRT(Cone Roof Type)</th>
									<th scope="col">FRT(Floating Roof Type)</th>
									<th scope="col">IFRT(Internal Floating Roof Type)</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td class="first">��������</td>
									<td>����, ����, ����Ÿ</td>
									<td>����, ����, ����</td>
									<td>�ֹ���, ����Ÿ</td>
								</tr>
								</tbody>
							</table>
						<h5>������ũ �Ǽ�����</h5>
						<div><img src="../images/business/img_sub03_3_2_1.gif" alt="������ũ �Ǽ�����"/>
							<p class="blindtext">1.��ũ���� ��ġ<br/>
							2.�ٴ��� ��ġ<br/>
							3.���� �� ���� Structure ����<br/>
							4.������ ��ġ<br/>
							5.��ũ �����ܺ� ����<br/>
							6.�ϰ�</p>
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

		</div>
	</div>
	</div>
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>