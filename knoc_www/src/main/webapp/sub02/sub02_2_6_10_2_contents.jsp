<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String y_2016 = (request.getServletPath().toString().indexOf("/sub02/") > -1 ?"sub02_2_6_10_5.jsp":"sub04_9_9_5.jsp");
	String y_2015 = (request.getServletPath().toString().indexOf("/sub02/") > -1 ?"sub02_2_6_10_4.jsp":"sub04_9_9_4.jsp");
	String y_2014 = (request.getServletPath().toString().indexOf("/sub02/") > -1 ?"sub02_2_6_10_2.jsp":"sub04_9_9.jsp");
	String y_2013 = (request.getServletPath().toString().indexOf("/sub02/") > -1 ?"sub02_2_6_10_3.jsp":"sub04_9_9_3.jsp");
	String y_2012 = (request.getServletPath().toString().indexOf("/sub02/") > -1 ?"sub02_2_6_10.jsp":"sub04_9_9_1.jsp");
	String y_2011 = (request.getServletPath().toString().indexOf("/sub02/") > -1 ?"sub02_2_6_10_1.jsp":"sub04_9_9_2.jsp");
%>
	<div class="officer" style="padding-top:20px;">  
	    <ul class="tab">
	    	<li><a href="<%=y_2016 %>" ><img src="/images/business/ab_sub02_2_6_12_5.gif" alt="2016��" /></a></li>
			<li><a href="<%=y_2015 %>" ><img src="/images/business/ab_sub02_2_6_12_4.gif" alt="2015��" /></a></li>
			<li><a href="<%=y_2014 %>" ><img src="/images/business/ab_sub02_2_6_12_3r.gif" alt="2014��" /></a></li>
            <li><a href="<%=y_2013 %>" ><img src="/images/business/ab_sub02_2_6_12_2.gif" alt="2013��" /></a></li>
			<li><a href="<%=y_2012 %>" ><img src="/images/business/ab_sub02_2_6_12.gif" alt="2012��" /></a></li>
			<!--<li><a href="<%=y_2011 %>"><img src="/images/business/ab_sub02_2_6_12_1.gif" alt="2011��" /></a></li>
             *11�⵵ ���� ������ �ʰ� DB��(�ۼ��̾� ��û���� 2012-2-11* 
            -->			
		</ul>  
	     
		<h5 style="margin-top: 20px;">����� ���������� ���� ����</h5>
	
	    <p class="rtxt1">2014��</p>
	  <p class="rtxt2">(���� : õ��)</p>
	
		<!--ǥ-->
		<table class="chart3" summary="�ѱ��������� 20013������ ���������� ���� ������ Ȯ���� �� �ֽ��ϴ�.">
			<caption>2014�� ����� ���������� ���� ����</caption>
			<col width="100px" />
			<col />
			<col width="150px" />
			<thead>
				<tr>
				<th scope="col" class="first">�����</th>
				<th scope="colgroup">���� ����</th>
				<th scope="colgroup">���� �ݾ�</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<td class="first">1��</td>
				<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
				<td>1,766</td>
				</tr>
			</tbody>

			<tbody>
			<tr>
					<td class="first">2��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>881</td>
					</tr>
			</tbody>

			<tbody>
			<tr>
					<td class="first">3��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>2,593</td>
					</tr>
			</tbody>
		
			<tbody>
			<tr>
					<td class="first">4��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>2,092</td>
					</tr>
			</tbody>
            <tbody>
			<tr>
					<td class="first">5��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>2,340</td>
					</tr>
			</tbody>

			    <tbody>
			<tr>
					<td class="first">6��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>3,039</td>
					</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="first">7��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>2,026</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="first">8��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>272</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="first">9��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>1,515</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="first">10��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>2,089</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="first">11��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>2,411</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="first">12��</td>
					<td class="c3_center">������������ ��������, ȸ��, ����ȸ, �����ݷ�</td>
					<td>1,238</td>
				</tr>
			</tbody>

			<tbody>
            <tr class="tdgray">
            	<td colspan="2" class="first">�հ�</td>
				<td>22,260</td>
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
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ��ȹ������</td>
					<td class="contact_user"><strong>����� : </strong>Ȳ�ڿ�</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2208</td>
				</tr>
			</tbody>
		</table>
	</div>
