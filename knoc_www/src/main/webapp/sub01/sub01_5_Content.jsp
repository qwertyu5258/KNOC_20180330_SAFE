<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	String aboutUs = (request.getServletPath().toString().indexOf("/sub01/") > -1 ? "sub01_5.jsp" : "sub02_2_1_5.jsp");
    	String OrganizationChart = (request.getServletPath().toString().indexOf("/sub01/") > -1 ? "sub01_5_1.jsp" : "sub02_2_1_5_1.jsp");
    %>

			<div class="organization">
				<h4><img src="/images/management/sub02_2_4_1_.gif" alt="����"/></h4>
					<p>���� : 4����, 22ó���ǡ�����, 10�������硤�繫��, 1�ؿܻ繫�ҷ� ����</p>
				<div class="organ">
					<ul class="tab">
						<li><a href="<%= aboutUs %>" title="������" ><img src="/images/management/sub02_2_4_1_1r.gif" alt="������"  id="premier_button1"/></a></li>
						<li><a href="<%= OrganizationChart %>" title="�� �μ� �ֿ����" ><img src="/images/management/sub02_2_4_1_2.gif" alt="�� �μ� �ֿ����" id="premier_button2"/></a></li>
						<!-- <li><a href="sub02_2_1_5_2.jsp" title="�� �μ� ����ó" ><img src="/images/management/sub02_2_4_1_3.gif" alt="�� �μ� ����ó" id="premier_button3"/></a></li>-->
					</ul>
					<div>
						<img src="/images/info/img1_sub01_5_.gif" alt="������" longdesc="/sub01/org_long.html" />
					</div>
				</div>						
			</div>
			
			
		<div class="new_officer">
			<table summary="���μ� �� ����ó ������">
			<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2017-01-02</td>
						<td class="contact_team"><strong>���μ� : </strong>����濵ó �λ���</td>
						<td class="contact_user"><strong>����� : </strong>����ȸ</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2114</td>
					</tr>
				</tbody>
			</table>
		</div>	