<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","02");
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
                    &gt; <span>Petronet</span>
                    &gt; <span class="locanow">Petronet ȸ���ȳ�</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_6_2_2.gif" alt="Petronet ȸ���ȳ�" /></h3>
				</div>
				<!--����-->
				<div class="business3">
					<h5 class="mT0">ȸ���ȳ�</h5>
                    <p>�츮 ���翡���� ������ ��������� ���� ������ ������� ���๰�� �߰��ϰ� ������, ���������� DBȭ�Ͽ� ���ͳ����� �����ϴ� Petronet<a href="http://www.petronet.co.kr" target="_blank">(www.petronet.co.kr)</a>�� ��ϰ� �ֽ��ϴ�.</p>
					<p class="sTit">ȸ������</p>
                    <div class="w680">
                        <table class="chart2" summary="��Ʈ�γ� ȸ�������� Ȯ���� �� �ֽ��ϴ�.">
						<caption>��Ʈ�γ� ȸ������</caption>
						<col width="100px" />
						<col width="100px" />
						<col width="430px" />
						<thead>
						<tr>
						<th scope="col" class="first" colspan="2">ȸ������</th>
						<th scope="col">�󼼳���</th>
						</tr>
						</thead>
						<tbody>
						<tr>
						<th scope="rowgroup" rowspan="2" class="bright">Petronet ȸ��</th>
						<th scope="row">����</th>
						<td class="tdleft">- Petronet���� �����ϴ� ���������� �̿� ����<br /> - ������ ȸ���������� ����<br />- Petronet ���� �� �Ϲݼ��� �ش�</td>
						</tr>
						<tr>
						<th scope="row">����</th>
						<td class="tdleft">- Petronet ���� �����ϴ� ��� ���� �̿� ����<br />
						- �̿�Ⱓ�� ȸ����û ������������ 1��/2�� ���� ����<br />
						- ��ȸ��� �ϴ� ����ǥ ����<br />- Petronet ���� �� �����̾����񽺿� �ش�</td>
						</tr>
						<tr>
						<th scope="row" class="bright">���๰ȸ��</th>
						<th scope="row">����</th>
						<td class="tdleft">- �ѱ��������翡�� �߰��Ǵ� ���๰�� E-Mail �Ǵ� å�ڷ� ����<br />
						- �̿�Ⱓ�� ȸ����û ������������ 1��<br />
						- ��ȸ��� �ϴ� ����ǥ ����</td>
						</tr>
						</tbody>
						</table>
                    </div>

                    <p class="sTit">����ȸ�� ���� �̿��</p>
                    <div class="w680">
						<table class="chart2" summary="��Ʈ�γ� ȸ���� ���� �̿�Ḧ Ȯ���� �� �ֽ��ϴ�.">
						<caption>��Ʈ�γ� ȸ���� ���� �̿��</caption>
						<col width="100px" />
						<col width="310px" />
						<col width="80px" />
						<col width="120px" />
						<thead>
						<tr>
						<th scope="col" class="first">ȸ������</th>
						<th scope="col">��������</th>
						<th scope="col">��ü</th>

						<th scope="col">����</th>
						</tr>
						</thead>
						<tbody>
						<tr>
						<th scope="row">Petronet ȸ��</th>
						<td class="tdleft2">- ���� , �� ��������(DB)</td>
						<td>���ͳ�</td>
						<td class="tdright"><strong>(1��)</strong> 220,000��<br/> <strong>(2��)</strong> 396,000��</td>
						</tr>
						<tr>
						<th scope="row" rowspan="3">���๰ ȸ��<br /> <strong>(1��)</strong></th>
						<td class="tdleft">-���������������<br />�� ���Ӻ� E-mail ����</td>
						<td>E-mail<br />å��</td>
						<td class="tdright">250,000��</td>
						</tr>
						<tr>
						<td class="tdleft">- KMOS(��������������� ������)<br />&amp; KON(������������ ������)<br /> �� ���Ӻ� E-mail ����</td>
						<td>E-mail<br />å��</td>
						<td class="tdright">3,000,000��</td>
						</tr>
						<tr>
						<td class="tdleft">KON(������������ ������)</td>
						<td>E-mail</td>
						<td class="tdright">660,000��</td>
						</tr>
						<tr>
						<th scope="row">���ົ ȸ��</th>
						<td class="tdleft">- ������ ������� ����</td>
						<td>å��</td>
						<td colspan="3">�ð�</td>
						</tr>
						</tbody>
						</table>
						<p>* ���ͳ�<a href="http://www.petronet.co.kr" target="_blank">(www.petronet.co.kr)</a>�� ���ؼ��� �ش� ������ ���� �� �ֽ��ϴ�.<br />* ��� ������ �ΰ��� ���԰����Դϴ�.</p>
                    </div>

					<dl>
					<dt>����ȸ�� ���Թ��</dt>
					<dd>
						<p>���ͳ��� ���� ����</p>
						<ul>
						<li>Petronet Ȩ������<a href="http://www.petronet.co.kr" target="_blank">(www.petronet.co.kr)</a> �ʱ�ȭ�鿡�� ����ȸ������ Ŭ��</li>
						<li>����ȸ��(Petronet �Ǵ� ���๰ȸ��) ���� Ŭ��</li>
						<li>�̿��� ����</li>
						<li>��û��� �ۼ�</li>
						<li>ȸ�� ���� �� ���ڼ��ݰ�꼭 �߼� </li>
						</ul>
						<p>��Ÿ ���Թ��</p>
						<ul>
						<li>�ѽ� �� �̸��� �� ������ ���� ���Խ�û�� ����</li>
						<li>ȸ�� ���� �� ���ڼ��ݰ�꼭 �߼�</li>
						</ul>
					</dd>
					</dl>

					<dl>
					<dt>���� �� ���Խ�û</dt>
					<dd>
						<ul>
						<li>��ȭ : 052-216-2506</li>
						<li>FAX : 052-216-5911</li>
						<li>E-mail : info-service@knoc.co.kr</li>
						</ul>
					</dd>
					</dl>
				</div>
				<!--//��-->
			</div>

			<!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-04-29</td>
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