<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","03");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>


<!--// subtopNavi: start //-->
<%@include file="/include/subtopnavi_new.jsp"%>
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
                    &gt; <span>��������</span>
                    &gt; <span>�����̾߱�</span>
                    &gt; <span class="locanow">������������</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_6_3_3.gif" alt="������������" /></h3>
				</div>
				<!--����-->
                <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_6_3_3.jsp" title="������������" ><img src="/images/business/img_tab01_01_on.gif" alt="������������" /></a></li>
						<li><a href="sub03_6_3_3_1.jsp" title="�����������" ><img src="/images/business/img_tab01_02.gif" alt="�����������"/></a></li>
						<li><a href="sub03_6_3_3_2.jsp" title="������ǰ����" ><img src="/images/business/img_tab01_03.gif" alt="������ǰ����"/></a></li>
						</ul>
						<p class="contTop2">������������ ������ �ּ����� źȭ������ ȥ�չ����� ����� ���̿� ���� �з��ϴ� ���������� �� ���������� ���� �̾� �� ���� ���� ���� �߿� ���ԵǾ� �ִ� �Ҽ���	�� �����ϰ�, �� �˸Ÿ� ÷���Ͽ� źȭ���ҿ� ������ ������ ������ �ٸ� źȭ���Ҹ� ����� ���� ��ȭ(����, ����)������ �ֽ��ϴ�. �̿� ���� ����, ŻȲ, ����, ���� ���� ������ ��Ī�Ͽ� ���� ������� �մϴ�</p>
						<h5>������ǰ�� ����</h5>
						<p>�������ž���� ������ ������ ���, LPG�� -42~1��, �ֹ��� �� ����Ÿ�� 30~120��, ���� �� ��Ʈ�������� 150~280��, ������ 230~350��, �ƽ���Ʈ �� �ܻ����� 300�� �̻󿡼� ����˴ϴ�.</p>
						<div><img src="/images/business/img_sub03_6_3_3_1.gif" alt="��� ���� ��ġ ������" />
							<ul class="blindtext">
								<li>-42~1�� : LPG</li>
								<li>30~120�� : �ֹ���, ����Ÿ</li>
								<li>150~280�� : ����, ��Ʈ������</li>
								<li>230~350�� : ����</li>
								<li>300�� �̻� : ��������</li>
								<li>����ž : �ƽ���Ʈ, ����, ������</li>
							</ul>
						</div>
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
					<td class="contact_team"><strong>���μ� : </strong>������������ ������ȹ��</td>
					<td class="contact_user"><strong>����� : </strong>������</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2505</td>
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