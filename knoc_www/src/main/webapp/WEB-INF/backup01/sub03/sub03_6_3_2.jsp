<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","02");
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
                    &gt; <span class="locanow">�������߰���</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_6_3_2.gif" alt="�������߰���" /></h3>
				</div>
				<!--����-->
               <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_6_3_2.jsp" title="���߼���" ><img src="/images/business/img_tab01_on.gif" alt="���߼���" /></a></li>
						<li><a href="sub03_6_3_2_1.jsp" title="Ž��ܰ�" ><img src="/images/business/img_tab02.gif" alt="Ž��ܰ�"/></a></li>
						<li><a href="sub03_6_3_2_2.jsp" title="���ߴܰ�" ><img src="/images/business/img_tab03.gif" alt="���ߴܰ�"/></a></li>
						<li><a href="sub03_6_3_2_3.jsp" title="����ܰ�" ><img src="/images/business/img_tab04.gif" alt="����ܰ�"/></a></li>
						</ul>
						<div class="order">
							<p><img src="/images/business/img_order01.gif" alt="Ž�� �� ź���� Ž��" /></p>
							<p><img src="/images/business/img_order02.gif" alt="�ڷ�ó�� �� ��ǻ�� �̿�" /></p>
							<p><img src="/images/business/img_order03.gif" alt="�������� �� ��������� ���� ��������" /></p>
							<p><img src="/images/business/img_order04.gif" alt="�ڷ��ؼ� �� �������� �ڷ��ؼ� �� ������ġ Ȯ��" /></p>
							<p><img src="/images/business/img_order05.gif" alt="���߼� �� �뿪��� �� ������ ����, ���ޱ��� ��ġ" /></p>
							<p><img src="/images/business/img_order06.gif" alt="���� �� ������������ ����Ȯ��" /></p>
							<p><img src="/images/business/img_order07.gif" alt="������ �� ���������� Ȯ��(10-20��), ������ ��" /></p>
							<p><img src="/images/business/img_order08.gif" alt="����ü� ��ġ �� ���� �� �÷��� �Ǽ�, ������ ����, ����������, ��ġ (��3��, ���������� ����)" /></p>
							<p><img src="/images/business/img_order09.gif" alt="���� �� ��������" /></p>
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