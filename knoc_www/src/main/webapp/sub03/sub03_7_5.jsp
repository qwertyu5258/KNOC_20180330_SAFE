<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","05");
	application.setAttribute("gNavMenuDepth4","00");
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
                   	&gt; <span>��Ưȸ��</span>
                  	&gt; <span class="locanow">�������, ���������ȳ�</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
				<h3><img src="/images/business/ttl_sub03_7_5.gif" alt="�������, ���������ȳ�" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                    <div>
						<ul class="tab">
						<li><a href="sub03_7_5.jsp" ><img src="/images/business/ab_sub03_7_5_1r.gif" alt="�����Ϲ� ����ڱݴ���" /></a></li>
						<li><a href="sub03_7_5_1.jsp"><img src="/images/business/ab_sub03_7_5_2.gif" alt="�������� ����ڱݴ���" /></a></li>
						<!--	<li><a href="sub03_7_5_2.jsp"><img src="/images/business/ab_sub03_7_5_3.gif" alt="�ؿܼ��� �������纸��" /></a></li>
						<li><a href="sub03_7_5_3.jsp"><img src="/images/business/ab_sub03_7_5_4.gif" alt="�������Լ��ٺ�ȭ ����" /></a></li>-->
						</ul>
						<h5>�������</h5>
						<p>�������� ���� �� ���� ������ ������ �� �ڿ����û���� ȿ������ ������ ���Ͽ� ������ �� �ڿ���� Ư��ȸ�迡�� ���û��(����, ����, �������Ǽ����)�� �ҿ��ڱ� �Ϻθ� ���ڹ޾� ���û����(�Ǽ�����)���� �������� �ǽ�</p>

						<h5>��������</h5>
						<p>�ѱ��������簡 �Ǽ����ڿ��� �����ϴ� ��������� ��������� ���� �Ǽ����ڿ��� �����ϴ� ���������� 2���� �������� ����</p>
						<p><img src="/images/business/imgin1_sub03_7_5_1.gif" alt="������" />
							<span class="blindtext">�������� : ��Ưȸ�� &rarr; �������� &rarr; �Ǽ�����</span><br/>
							<span class="blindtext">�������� : ��Ưȸ�� &rarr; �������� &rarr; ������� &rarr; �Ǽ�����</span>
						</p>

						<h5>�������</h5>
						<p>���ð������޹���Ǽ���� : ���ȯ�� ������ ���� �ְ�ȯ�� ������ ���� ���ð��� ���޹�� �Ǽ����</p>

						<h5>��������</h5>
							<!--ǥ-->
							<table class="chart2 mL-10" summary="������� ���������� Ȯ���� �� �ֽ��ϴ�.">

							<caption>������� ��������</caption>
							<col width="136px" />
							<col width="136px" />
							<col width="136px" />
							<col width="136px" />
							<col width="136px" />
							<thead>
							<tr>
							<th scope="col" class="first">�����</th>
							<th scope="col">������(%(�ۼ�Ʈ))</th>
							<th scope="col">�Ⱓ(��/��ġ/��ȯ</th>
							<th scope="col">�������</th>
							<th scope="col">�������</th>
							</tr>
							</thead>
							<tbody>
							<tr>
							<td class="first">���ð���<br />���޹���Ǽ�</td>
							<td>����</td>
							<td>5/10</td>
							<td>80%(�ۼ�Ʈ) �̳�</td>
							<td>���ð��������<br />(����34����)</td>
							</tr>
							</tbody>
							</table>
							<!--ǥ-->
							<p>�� �������� �� �б⺰ �����ݸ� ����(����ä 3�⹰ ����������� ����)</p>
							<p>�� �б⺰ �����ݸ� ������ <a href="/filedown.jsp?fileno=32&filepath=/upload/data/sub03/" target="_blank" title="��â"><img src="/images/information/btn_download.gif" alt="�� �б⺰ �����ݸ� �ٿ�ε�" class="vMid" /></a></p>
						<h5>��ȯ���</h5>
							<p>��ȯ���� : �� 4ȸ(�źб� : 15�� / 3�� 15��, 6�� 15��, 9�� 15��, 12�� 15��)<br />
								��ȯ��� : �� 4ȸ �յ���һ�ȯ</p>
						<h5>���ñ���</h5>
							<ul>
							<li>�������ڿ���
							  <p>�������� �� �ڿ���� Ư��ȸ�� ����ɡ������� <a href="/filedown.jsp?fileno=27&filepath=/upload/data/sub03/" target="_blank" title="��â"><img src="../images/information/btn_download.gif" alt="�������� �� �ڿ����Ư��ȸ�� ����ɡ��ٿ�ε�" class="vMid" /></a></p>
								<!-- <p>��2010�� ���ð��� ���޹�� �Ǽ��ڱ� ������ħ�������� <a href="/upload/data/sub03/citygas_2008.hwp"><img src="../images/information/btn_download.gif" alt="��2010�� ���ð��� ���޹�� �Ǽ��ڱ� ������ħ���ٿ�ε�" class="vMid"/></a></p> -->
							</li>
							<li>�ѱ���������
								<p>����������ڱ� ���� �� ����������������
								<a href="/upload/data/sub03/oil_loan(2005_09_21).HWP" target="_blank"><img src="../images/information/btn_download.gif" class="vMid" alt="��������ڱݴ���װ�������(2005-09-21)" /></a><br/></p>
								<p>�� ���λ����� �ѱ��������� �ѹ�����ó ��Ư/������(�� 052-216-2666)���� �����Ͻñ� �ٶ��ϴ�.</p>
							</li>
							</ul>
						<h5>��������</h5>
							<div class="ltxt mT10"><img src="/images/business/imgin1_sub03_7_5_2.gif" alt="�������, ������������" />
								<div class="blindtext">
									<table border="0" summary="�������, �������������� �ܰ躰�� Ȯ���� �� �ֽ��ϴ�.">

									<caption>�������, ������������</caption>
									<thead>
									<tr>
									<th scope="col">�ܰ躰</th>
									<th scope="col">���� �� ���� ����</th>
									<th scope="col">�ۼ� �� û������</th>
									</tr>
									</thead>
									<tbody>
									<tr>
									<td rowspan="2">������� ��û</td>
									<td>ä���� �ɷ�����</td>
									<td>�ſ����� ���ü����� <br/>
									������� ���� ��Ȳ��</td>
									</tr>
									<tr>
									<td>�����ȹ����</td>
									<td>�ҿ��ڱ� ������<br/>
									�㺸���� �ǻ� ��</td>
									</tr>
									<tr>
									<td>�������</td>
									<td>������μ� �ۼ�</td>
									<td></td>
									</tr>
									<tr>
									<td>����ݽ�û</td>
									<td>������� ü��</td>
									<td>��������� ����</td>
									</tr>
									<tr>
									<td>�������</td>
									<td>�⼺������ �ǽ�</td>
									<td>���� ��꼭�� �⼺���� ����</td>
									</tr>
									<tr>
									<td>ä�Ǻ���</td>
									<td>�㺸���(�ʿ��) </td>
									<td>�㺸�� ������ <br/>
									������� ���� �� �㺸�� ����</td>
									</tr>
									<tr>
									<td>�ڱ�����</td>
									<td>�ڱ� ����</td>
									<td>������ �� �������Ư��<br/>
									ȸ�� �ڱ� ���� �� ����</td>
									</tr>
									<tr>
									<td>���İ���</td>
									<td>�⼺���� ��������<br/>
									�㺸�� ���� �� ����</td>
									<td></td>
									</tr>
									</tbody>
									</table>
								</div>
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
					<td class="write_day"><strong>�ۼ������� : </strong>2016-10-19</td>
					<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ��Ư/������</td>
					<td class="contact_user"><strong>����� : </strong>��游</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2665</td>
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