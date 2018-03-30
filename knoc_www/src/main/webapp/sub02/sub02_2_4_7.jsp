<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","08");
	application.setAttribute("gNavMenuDepth4","16");
//	application.setAttribute("gNavMenuDepth3","04");
//	application.setAttribute("gNavMenuDepth4","07");
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
			<%@include file="/include/subtop_02.jsp"%>
			<!--// location: start //-->
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt;
				<span>�����濵</span> &gt; <span>�濵����</span> &gt; <span>����</span> &gt; <span class="locanow">�η°�����Ȳ</span>
			</div>
			<!--// location: end //-->
			<!--[2009-09-21 ����] :: �ۼ���: ������ -->
			<div class="pagetle">
				<h3><img src="/images/management/ttl_sub02_2_2_new.gif" alt="����" /></h3>
			</div>
			<!--����-->
			<div class="officer">
				<h4><img src="/images/management/sub02_2_4_8.gif" alt="�η°�����Ȳ"/></h4>
				<h5>������ �ڰ��� ���� ��Ȳ(��16�� 12���� ����)</h5>
				<!--ǥ-->
				<table class="chart2" summary="2016�� 6������ �ѱ��������� �ڰ��� ������Ȳ�� ����, �����, ��ȣ��, ȸ���, �����纰�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ڰ��� ������Ȳ</caption>
					<col width="120px" />
					<col width="116px" />
					<col width="116px" />
					<col width="116px" />
					<col width="116px" />
					<col width="116px" />
					<thead>
						<tr>
							<th scope="col" class="first">����</th>
							<th scope="col">�ڻ�</th>
							<th scope="col">�����</th>
							<th scope="col">��ȣ��</th>
							<th scope="col">ȸ���</th>
							<th scope="col">������</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="first">�ο�</td>
							<td>54</td>
							<td>15</td>
							<td>10</td>
							<td>31</td>
							<td>7</td>
						</tr>
					</tbody>
				</table>
				</br>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-12-31</td>
							<td class="contact_team"><strong>���μ� : </strong>����濵ó �λ���</td>
							<td class="contact_user"><strong>����� : </strong>ȫ�ƶ�</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2714</td>
						</tr>
					</tbody>
				</table>
				</div>
				</br>
				<!--//ǥ-->
				<h5 class="mT20">�系�� ��������</h5>
				<dl class="mT20">
					<dt>�濵���� ��ȭ</dt>
					<dd>���� �濵�ɷ� ���� �� �濵���� ������ ���� �濵 ��������<br/>
						- �����, ����� �� �ֿ���� �濵�ڰ��� �� �߰������ڰ��� �İ� ����<br/>
						- ������ �濵�ɷ� �� ������ ���� ����� ���� ���޺� ������ ����<br/>
					</dd>
				</dl>
				<dl>
					<dt>�������� ��ȭ</dt>
					<dd>������� �� �������� ������ ���� ���� ��������<br/>
						- ������ ��� ���� �� ��ȸ�� �İ� ����OJT<br/>
						- �ؿܼ������ �İ� OJT(���)<br/>
						- ������ ���п� ������������(��������, MBA ���� ��)<br/>
						- �ؿ� ����������� �ܱ� ���� �� �ʺ� In-House ����</dd>
				</dl>
				<dl>
					<dt>�۷ι����� ��ȭ</dt>
					<dd>�۷ι� ���������� ���� ����ȭ ����<br />
                    	- ��ȭ�ܱ���, �系 ���б��� �� �<br />
						- �ؿ������(������) ����</dd>
				</dl>
			</div>
			<BR />
			</br>
			<BR />
			</br>

			<div class="new_officer">
			<table summary="���μ� �� ����ó ������">
			<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
						<td class="contact_team"><strong>���μ� : </strong>����濵ó ����������</td>
						<td class="contact_user"><strong>����� : </strong>��¸�</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2742</td>
					</tr>
				</tbody>
			</table>
			</div>
			<!-- div class="infoCheck">
				<%@include file="/include/satisfy_link.jsp"%>
			</div-->
			<!--//��-->
		</div>
	</div>
</div>
<%@include file="/include/comfooter.jsp"%>
<!--// footer: start //-->
<!--// footer: end //-->
</div>
</body>
</html>