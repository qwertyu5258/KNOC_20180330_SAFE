<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","06");
	application.setAttribute("gNavMenuDepth4","09");
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
					&gt; <span>��Ÿ����</span>
                    &gt; <span class="locanow">�����ֿ�ŷ�����</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="��Ÿ����" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_1_6_ta1.gif" alt="����ȸ����� �ֿ� �ŷ�����"/></h4>
					<p class="rtxt">(���� : �鸸��, %)</p>
					<table summary="���� �� ������Ȳ�� ���� ǥ�� ���θ�, ����, ���� �� ���� �ݾ�, ��ΰ���, ���ݾ�, �������¿� ���� ������ �����մϴ�." class="chart2">
						<caption>���� �� ������Ȳ�� ���� ǥ</caption>
						<colgroup>
						<col width="24%" />
						<col width="13%" />
						<col width="13%" />
						<col width="13%" />
						<col width="13%" />
						<col width="8%" />
						<col width="8%" />
						<col width="8%" />
						</colgroup>
						<thead>
						<tr>
							<th class="first" scope="col" rowspan="2">�ŷ�����</th>
							<th scope="col" rowspan="2">ȸ�����<br />����</th>
							<th scope="col" rowspan="2">�ŷ�����</th>
							<th scope="col" rowspan="2">�ŷ��Ⱓ</th>
							<th scope="col" rowspan="2">�ŷ��ݾ�</th>
							<th scope="col" rowspan="2">����</th>
							<th scope="col" colspan="2">���ǰ��</th>
						</tr>
						<tr>
							<th scope="col">����</th>
							<th scope="col">�ٰ�</th>
						</tr>						
						</thead>
						<tbody>
						<tr>
							<td class="first">Dana Petroleum Limited</td>
							<td>��ȸ��</td>
							<td>������</td>
							<td>2013.01.01<br />~<br />2013.12.31</td>
							<td class="tdright">93,078</td>
							<td>7%</td>
							<td>X</td>
							<td>�ش���׾���</td>
						</tr>
						<tr>
							<td class="first">Dana Petroleum plc</td>
							<td>��ȸ��</td>
							<td>������</td>
							<td>2012.01.01<br />~<br />2012.12.31</td>
							<td class="tdright">112,688</td>
							<td>8%</td>
							<td>X</td>
							<td>�ش���׾���</td>
						</tr>
						<tr>
							<td class="first">Dana Petroleum plc</td>
							<td>��ȸ��</td>
							<td>������</td>
							<td>2011.01.01<br />~<br />2011.12.31</td>
							<td class="tdright">110,811</td>
							<td>6%</td>
							<td>X</td>
							<td>�ش���׾���</td>
						</tr>
						</tbody>
					</table>                    
				  <p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">* ���ñ��� : �˸��� ���ذ� ����(��15�⸻ ����)</p>
				  </div>
				  
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
						<tbody>
							<tr>
								<td class="write_day"><strong>�ۼ������� : </strong>2016-05-24</td>
								<td class="contact_team"><strong>���μ� : </strong>E&P�Ѱ�ó E&P�Ѱ���</td>
								<td class="contact_user"><strong>����� : </strong>�ּ���</td>
								<td class="contact_tel"><strong>����ó : </strong>052-216-3217</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>