<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","09");
	application.setAttribute("gNavMenuDepth4","22");	
//	application.setAttribute("gNavMenuDepth3","03");
//	application.setAttribute("gNavMenuDepth4","03");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>�����濵</span>
                    &gt; <span>�濵����</span>
					&gt; <span>�ֿ��� �� �濵����</span>
                    &gt; <span class="locanow">�ſ��� �� �ŷڵ�</span>
				</div>
				<!--// location: end //-->

				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_3_new.gif" alt="�ֿ��� �� �濵����" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_2_7_ta1.gif" alt="�ſ��� �� �ŷڵ�" border="0"/></h4>
					<!--ǥ-->
					<table class="chart2" summary="�ѱ��������� �ſ��� �� �ŷڵ��� �򰡱��, �ſ���, ����� �ο��Ϻ��� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ſ��� �� �ŷڵ�</caption>
					<col width="90px" />
					<col width="130px" />
					<col width="120px" />
					<col width="350px" />
					<thead>
					<tr>
					<th scope="col" class="first">�򰡱��</th>
					<th  scope="col">�ſ���</th>
					<th  scope="col">����� �ο���</th>
					<th scope="col" class="alice">���</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">S&amp;P</td>
						<td>AA /Stable</td>
						<td>2016-08-08</td>
						<td rowspan="3" style="text-align:left ; padding-left:5px ;">�������ݵ��<br/>- �����ݻ�ȯ�ɷ� ����</td>
					</tr>
					<tr>
						<td class="first">Moody's</td>
						<td>Aa2 / Stable</td>
						<td>2016-02-16</td>
					</tr>
    				<tr>
						<td class="first">Fitch</td>
						<td>AA-/Stable</td>
						<td>2016-03-24</td>
    				</tr>
					</tbody>
					</table>
					<!--//ǥ-->
					<p>(����) �� �ſ��򰡱���� �ſ���ǥ �� �ŷڵ�</p>
					<!--ǥ-->

					<p class="ctxt" style="margin-top:30px;"><strong>�����ſ��򰡻��� �ſ���ǥ</strong></p>
					<table class="chart2" summary="S&amp;P�� Moody's�� �ſ���ǥ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>S&amp;P�� Moody's�� �ſ���ǥ</caption>
					<col width="90px" />
					<col width="130px" />
					<col width="120px" />
					<col width="120px" />
					<col width="230px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">S&amp;P</th>
					<th scope="col">Moody's</th>
					<th scope="col">Fitch</th>
					<th scope="col">��޼���</th>
    				</tr>
					</thead>
					<tbody>
					<tr>
					<td rowspan="4" class="first">��������</td>
					<td>AAA</td>
					<td>Aaa</td>
					<td>AAA</td>
					<td class="tdleft">�ֻ���</td>
    				</tr>
					<tr>
					<td>AA+, AA, AA-</td>
					<td>Aa1, Aa2, Aa3</td>
					<td>AA+, AA, AA-</td>
					<td class="tdleft">������ ��ȯ�ɷ� ����</td>
    				</tr>
					<tr>
					<td>A+, A, A-</td>
					<td>A1, A2, A3</td>
					<td>A+, A, A-</td>
					<td class="tdleft">������ ��ȯ�ɷ� ��� ������ ���Ǻ�ȭ�� �������</td>
    				</tr>
					<tr>
					<td>BBB+, BBB, BBB-</td>
					<td>Baa1, Baa2, Baa3</td>
					<td>BBB+, BBB, BBB-</td>
					<td class="tdleft">������ ��ȯ�ɷ� ���� �������ǿ����� ������ �ſ��϶� ����</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->
					<p class="ctxt" style="margin-top:30px;"><strong>�ŷڵ�(����ŷ���Ȳ)</strong></p>
					<!--ǥ-->
					<table class="chart1" summary="�ѱ��������� �ŷڵ��� ����ŷ���Ȳ���� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ŷڵ�(����ŷ���Ȳ)</caption>
					<col width="90px" />
					<col width="600px" />
					<thead>
					<tr>
					 <th scope="col" class="first">����</th>
					<th scope="col">����</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">����ŷ���Ȳ</td>
					<td>�ε��߻� ���� : ����<br/>�ҷ��ŷ� �������� : ����<br/>�ֱ� 1�� �̳� ��ü �� ������ ���� : ����</td>
    				</tr>
					</tbody>
					</table>
					<!--//ǥ-->
					
				  </div>

				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-10-31 </td>
							<td class="contact_team"><strong>���μ� : </strong>�繫ó �ڱ���</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2426</td>
						</tr>
					</tbody>
				</table>
				</div>
				<!--div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div-->
				<!--//��-->
			</div>
		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>