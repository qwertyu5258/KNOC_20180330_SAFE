<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","06");
	application.setAttribute("gNavMenuDepth4","07");
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
				<a href="/"><img src="/images/common/loca_home.gif" alt="HOME" /></a> &gt; 
				<span>�����濵</span> &gt; <span>�濵����</span> &gt; <span>��Ÿ����</span> &gt; <span class="locanow">���� �⿬ �� ����</span>
			</div>
			<!--// location: end //-->
			<!--[2009-09-21 ����] :: �ۼ���: ������ -->
			<div class="pagetle">
				<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="��Ÿ����" /></h3>
			</div>
			<!--����-->
			<div class="officer">
				<h4><img src="/images/management/sub02_2_2_5ta1.gif" alt="���� �⿬ �� ����" border="0"/></h4>
				<h5>�⿬����</h5>
				<span>(���� : �鸸��)</span>
				<!--ǥ-->
				<table class="chart2" summary="�ѱ��������� �⿬������ ���� ǥ�� �⿬��, ���⿬���, ����, �⿬�ݾ�, �⿬ ������, �⿬������ ���� ������ �����մϴ�.">
					<caption>
					�ѱ��������� �⿬����
					</caption>
					<col width="10%" />
					<col width="22%" />
					<col width="14%" />
					<col width="12%" />
					<col width="12%" />
					<col width="*" />
					<thead>
						<tr>
							<th scope="col" class="first">�⿬��</th>
							<th scope="col">���⿬���</th>
							<th scope="col">����</th>
							<th scope="col">�⿬�ݾ�</th>
							<th scope="col">�⿬ ������</th>
							<th scope="col">�⿬����</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="first">2015.05.20</td>
							<td>����������������</td>
							<td>-</td>
							<td>500</td>
							<td>����</td>
							<td>���� ������� ����� ��ȭ��ȿ�<br />���� �������� �� ����ü�� ����</td>
						</tr>
						<tr>
							<td class="first">2015.03.30</td>
							<td>�ؿ��ڿ������������</td>
							<td>-</td>
							<td>1,300</td>
							<td>����</td>
							<td>�ڿ�����Ư��ȭ���� ����</td>
						</tr>
						<tr>
							<td class="first">2014.12.31</td>
							<td>�߼ұ��û</td>
							<td>���ڱ��</td>
							<td>238</td>
							<td>����</td>
							<td>�߼ұ�� �������� �ڱ� ����</td>
						</tr>
						<tr>
							<td class="first">2014.10.10</td>
							<td>�߼ұ��û</td>
							<td>���ڱ��</td>
							<td>93</td>
							<td>����</td>
							<td>�߼ұ�� �������� �ڱ� ����</td>
						</tr>
						<tr>
							<td class="first">2014.09.29</td>
							<td>�߼ұ��û</td>
							<td>���ڱ��</td>
							<td>95</td>
							<td>����</td>
							<td>�߼ұ�� �������� �ڱ� ����</td>
						</tr>
						<tr>
							<td class="first">2014.03.10</td>
							<td>����������������</td>
							<td>���±��</td>
							<td>500</td>
							<td>����</td>
							<td>���� ������� ����� ��ȭ��ȿ�<br />���� �������� �� ����ü�� ����</td>
						</tr>
						<tr>
							<td class="first">2013.04.01</td>
							<td>�ؿ��ڿ������������</td>
							<td>ȸ��</td>
							<td>4,000</td>
							<td>����</td>
							<td>�ڿ�����Ư��ȭ���� ����</td>
						</tr>
						<tr>
							<td class="first">2012.05.25</td>
							<td>2013 �뱸���迡����<br />��ȸ ��������ȸ</td>
							<td>����������</td>
							<td>400</td>
							<td>����</td>
							<td>2013�� �뱸 ���迡���� ��ȸ ����</td>
						</tr>
						<tr>
							<td class="first">2012.03.16</td>
							<td>�ؿ��ڿ������������</td>
							<td>ȸ��</td>
							<td>3,000</td>
							<td>����</td>
							<td>�ڿ�����Ư��ȭ���� ����</td>
						</tr>
						<tr>
							<td class="first">2011.06.02</td>
							<td>�ؿ��ڿ������������</td>
							<td>ȸ��</td>
							<td>3,000</td>
							<td>����</td>
							<td>�ڿ�����Ư��ȭ���� ����</td>
						</tr>
						<tr>
							<td class="first">2011.04.22</td>
							<td>2013 �뱸���迡����<br />��ȸ ��������ȸ</td>
							<td>����������</td>
							<td>300</td>
							<td>����</td>
							<td>2013�� �뱸 ���迡���� ��ȸ ����</td>
						</tr>
						<tr>
							<td class="first">2010.07.14</td>
							<td>�ؿ��ڿ������������</td>
							<td>-</td>
							<td>3,000</td>
							<td>����</td>
							<td>�ڿ�����Ư��ȭ���� ����</td>
						</tr>
						
					</tbody>
				</table>
				<!--//ǥ-->
				<h5>��������</h5>
				<span>(���� : �鸸��)</span>
				<!--ǥ-->
				<table class="chart2" summary="�ѱ��������� ���������� ���� ǥ�� ������, ������, ����, �����ݾ�, �⿬������, �⿬������ ���� ������ �����մϴ�.">
					<caption>
					�ѱ��������� ��������
					</caption>
					<col width="*" />
					<col width="*" />
					<col width="*" />
					<col width="*" />
					<col width="*" />
					<col width="*" />
					<thead>
						<tr>
							<th scope="col" class="first">������</th>
							<th scope="col">������</th>
							<th scope="col">����</th>
							<th scope="col">�����ݾ�</th>
							<th scope="col">�⿬ ������</th>
							<th scope="col">�⿬����</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="first">2015.12.31</td>
							<td>������ ��</td>
							<td>-</td>
							<td>940</td>
							<td>���� ��</td>
							<td>��ȸ���� ���</td>
						</tr>
						<tr>
							<td class="first">2014.12.31</td>
							<td>������ ��</td>
							<td>-</td>
							<td>1,245</td>
							<td>���� ��</td>
							<td>��ȸ���� ���</td>
						</tr>
						<tr>
							<td class="first">2013.12.31</td>
							<td>������ ��</td>
							<td>-</td>
							<td>2,087</td>
							<td>���� ��</td>
							<td>��ȸ���� ���</td>
						</tr>
						<tr>
							<td class="first">2012.12.31</td>
							<td>������ ��</td>
							<td>-</td>
							<td>1,465</td>
							<td>���� ��</td>
							<td>��ȸ���� ���</td>
						</tr>
						<tr>
							<td class="first">2011.12.31</td>
							<td>������ ��</td>
							<td>-</td>
							<td>1,493</td>
							<td>���� ��</td>
							<td>��ȸ���� ���</td>
						</tr>
						<tr>
							<td class="first">2010.12.31</td>
							<td>������ ��</td>
							<td>-</td>
							<td>1,476</td>
							<td>���� ��</td>
							<td>��ȸ���� ���</td>
						</tr>
					</tbody>
				</table>
				<!--//ǥ-->
				<p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;"> * ���ñ��� : ��15�� 12���� ���� </p>
			</div>
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2015-12-31</td>
							<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ���������</td>
							<td class="contact_user"><strong>����� : </strong>�����</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2626</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="infoCheck">
				<%@include file="/include/satisfy_link.jsp"%>
			</div>
			<!--//��-->
		</div>
	</div>
</div>
<%@include file="/include/comfooter.jsp"%>
<!--// footer: start //-->
<!--// footer: end //-->
</div>
</body></html>