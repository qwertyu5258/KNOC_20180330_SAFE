<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","04");
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
					&gt; <span>�����ڿ���Ȳ</span>
                    &gt; <span class="locanow">�����ٹ���Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_4.gif" alt="�����ڿ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">

				
					<h4><img src="/images/management/sub02_2_4_9.gif" alt="�����ٹ���Ȳ"/></h4>
		
                	<!--ǥ-->
					<span>(���� : ��)</span>
					<table class="chart2" summary="�����ڿ���Ȳ �����ٹ���Ȳ ����">
						<caption>
						�����ڿ���Ȳ �����ٹ���Ȳ
						</caption>
						<colgroup>
                        <col width="8%">
						<col width="*">
						<col width="9%">
						<col width="*">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="12%">
						</colgroup>
						<thead>
						<tr>
							<th scope="col" class="first" rowspan="2" colspan="4">����</th>
							<th scope="col" rowspan="2">2011��</th>
							<th scope="col" rowspan="2">2012��</th>
							<th scope="col" rowspan="2">2013��</th>
							<th scope="col" rowspan="2">2014��</th>
							<th scope="col" rowspan="2">2015��</th>
							<th scope="col">2016��</th>
						</tr>
						<tr>
							<th scope="col">1/4�б�</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th rowspan="8" class="first">�ð�<br />������</th>
						 	<td rowspan="4">������<br />
						    ��������<br />
                            ��������</td>
							<td rowspan="2">ä��</td>
							<td>�ο���</td>
							<td>12</td>
							<td>11</td>
							<td>10</td>
							<td>16</td>
							<td>10</td>
							<td>9</td>
						</tr>
						<tr>
						  <td>������ȯ��</td>
						  <td>6</td>
						  <td>6.24</td>
						  <td>6.687</td>
						  <td>11.375</td>
						  <td>7.916</td>
						  <td>7.25</td>
						</tr>
						<tr>
						  <td rowspan="2">��ȯ</td>
						  <td>�ο���</td>
						  <td>1</td>
						  <td>1</td>
						  <td>3</td>
						  <td>7</td>
						  <td>3</td>
						  <td>0</td>
						</tr>
						<tr>
						  <td>������ ȯ��</td>
						  <td>0.5</td>
						  <td>0.5</td>
						  <td>2.375</td>
						  <td>5.35</td>
						  <td>2</td>
						  <td>0</td>
						</tr>
						<tr>
						  <td rowspan="4">������<br />
��������<br /></td>
							<td rowspan="2">ä��</td>
							<td>�ο���</td>
							<td>10</td>
							<td>10</td>
							<td>10</td>
							<td>16</td>
							<td>10</td>
							<td>9</td>
						</tr>
						<tr>
						  <td>������ ȯ��</td>
						  <td>5</td>
						  <td>5.74</td>
						  <td>6.687</td>
						  <td>11.375</td>
						  <td>7.916</td>
						  <td>7.25</td>
						</tr>
                        <tr>
                          <td rowspan="2">��ȯ</td>
							<td>�ο���</td>
							<td>1</td>
							<td>1</td>
							<td>3</td>
							<td>7</td>
							<td>3</td>
							<td>0</td>
						</tr>
                        <tr>
                          <td>������ ȯ��</td>
                          <td>0.5</td>
                          <td>0.5</td>
                          <td>2.375</td>
                          <td>5.35</td>
                          <td>2</td>
                          <td>0</td>
                        </tr>

						<tr>
							<th class="first" rowspan="2">ź��<br />�ٹ���</th>
							<td colspan="3">���� �������</td>
							<td>72</td>
							<td>101</td>
							<td>113</td>
							<td>105</td>
							<td>78</td>
							<td>48</td>
						</tr>
						<tr>
							<td colspan="3">�ٹ��ð� ������</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>296</td>
							<td>430</td>
							<td>219</td>
						</tr>						
						</tbody>
					</table>

					<!--//ǥ-->
					<p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">*���ñ��� : ��16�� 3���� ���� ��Ȳ�̸�, ��16�� �˸��� ���հ��� �Ŵ��� ���� �ۼ���
<br />* ź�±ٹ����� ����<br />- �����������: �� 5�� �ٹ�, 1�� 8�ð� �ٹ�, ��ٽð� ���� ����<br />- �ٹ��ð�������: �� 5�� �ٹ�, 1�� 8�ð��� ���ֹ��� �ʰ� �ٹ��ð� ����</p>
				</div>
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-03-31</td>
							<td class="contact_team"><strong>���μ� : </strong>����濵ó �����Ļ���</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2767</td>
						</tr>
					</tbody>
					</table>
					</table>
				</div><!-- new_officer end -->				
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>	
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>