<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","09");
	application.setAttribute("gNavMenuDepth4","24");
//	application.setAttribute("gNavMenuDepth3","03");
//	application.setAttribute("gNavMenuDepth4","09");	
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
                    &gt; <span class="locanow">�ֿ��繫����</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_3_new.gif" alt="�ֿ��� �� �濵����" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_2_8_ta1.gif" alt="�ֿ��繫����" border="0"/></h4>
					<!--ǥ-->
					<table class="chart2" summary="�ѱ��������� �ֿ��繫������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ѱ��������� �ֿ��繫����</caption>
					<col width="7%" />
					<col width="*" />
					<col width="6%" />
                    <col width="6%" />
                    <col width="6%" />
                    <col width="6%" />
                    <col width="6%" />
                    <col width="6%" />
                    <col width="6%" />
                    <col width="6%" />
                    <col width="10%" />
					<thead>
					<tr>
					<th scope="col" colspan="2" class="first">����</th>
                    <th scope="col">2015��</th>
					<th scope="col">2014��</th>
					<th scope="col">2013��</th>
					<th scope="col">2012��</th>
					<th scope="col">2011��</th>
					<th scope="col">2010��</th>
					<th scope="col">2009��</th>
					<th scope="col">2008��</th>
					<th scope="col">�� ��</th>
					

					</tr>
					</thead>
					<tbody>
					<tr>
					<th scope="rowgroup" rowspan="4" class="first bright">������</th>
					<th scope="row">��������<br />(�ۼ�Ʈ)</th>
                    <td align="right" >39.62%</td>
					<td>60.80%</td>
					<td>60.18%</td>
					<td>65.07%</td>
					<td>65.76%</td>
					<td>115.26%</td>
					<td>198.07%</td> 
					<td>266.66%</td>
					<td>�����ڻ�/<br />������ä<br /> ����</td>
					</tr>
					<tr>
					<th scope="row">��ä����<br />(�ۼ�Ʈ)</th>
					<td align="right">453.08%</td>
                    <td>221.27%</td>
					<td>180.06%</td>
					<td>167.52%</td>
					<td>193.17%</td>
					<td>123.39%</td>
					<td>101.45%</td>	
					<td>73.25%</td>
					<td>�Ѻ�ä/<br />�ڱ��ں� <br />����</td>
	
					</tr>
					<tr>
					<th scope="row">���Ա� ������<br />(�ۼ�Ʈ)</th>
                    <td align="right">61.42%</td>
					<td>44.69%</td>
					<td>41.38%</td>
					<td>38.94%</td>
					<td>37.73%</td>
					<td>43.73%</td>
					<td>42.90%</td>
					<td>32.81%</td>
					<td>���Ա�/<br />���ڻ� ����</td>
					</tr>
					<tr>
					<th scope="row">�������ʹ��<br /> ���ں������</th>
					<td>-1.1��</td>
                    <td>1.2��</td>
					<td>2.6��</td>
					<td>1.6��</td>
					<td>2.8��</td>
					<td>3.4��</td>
					<td>4.7��</td>
					<td>18.5��</td>
					<td>��������/<br />���ں��</td>
					</tr>
					<tr>
					<th scope="rowgroup" rowspan="4" class="first bright">���ͼ�</th>
					<th scope="row">�����<br /> ����������<br />(�ۼ�Ʈ)</th>
                    <td align="right">-12.97%</td>
					<td>10.85%</td>
					<td>22.27%</td>
					<td>7.47%</td>
					<td>12.71%</td>
					<td>26.02%</td>
					<td>31.23%</td>
					<td>34.51%</td>
					<td>��������/<br />�����</td>
					</tr>
					<tr>
					<th scope="row">�����<br /> ��������<br />(�ۼ�Ʈ)</th>
                    <td align="right">-131.08%</td>
					<td>-36.97%</td>
					<td>-13.59%</td>
					<td>-8.57%</td>
					<td>-1.71%</td>
					<td>8.34%</td>
					<td>23.46%</td>
					<td>11.46%</td>
					<td>������/<br />�����</td>
					</tr>
					<tr>
					<th scope="row">���ڻ�<br /> ��������<br />(�ۼ�Ʈ)</th>
					<td align="right">-17.97%</td>
                    <td>-5.79%</td>
					<td>-2.49%</td>
					<td>-3.15%</td>
					<td>-0.48%</td>
					<td>0.95%</td>
					<td>2.49%</td>
					<td>1.54%</td>
					<td>������/<br />������ڻ�</td>
					</tr>
					<tr>
					<th scope="row">�ڱ��ں�<br /> ��������<br />(�ۼ�Ʈ)</th>
                    <td align="right">-78.85%</td>
					<td>-18.83%</td>
					<td>-7.46%</td>
					<td>-8.42%</td>
					<td>-1.42%</td>
					<td>2.11%</td>
					<td>5.01%</td>
					<td>2.66%</td>
					<td>������/<br />����ڱ��ں�</td>
		
					</tr>
					<tr>
					<th scope="rowgroup" rowspan="5" class="first bright">���强<br /> ��<br /> Ȱ����</th>
					<th scope="row">�����<br /> ������<br />(�ۼ�Ʈ)</th>
                    <td align="right">-21.22%</td>
					<td>-17.23%</td>
					<td>50.11%</td>
					<td>17.94%</td>
					<td>24.84%</td>
					<td>40.75%</td>
					<td>3.01%</td>
					<td>63.42%</td>
					<td>-</td>
					</tr>
					<tr>
					<th scope="row">��������<br /> ������<br />(�ۼ�Ʈ)</th>
                    <td align="right">-194.13%</td>
					<td>-59.67%</td>
					<td>48.71%</td>
					<td>-30.68%</td>
					<td>70.56%</td>
					<td>17.31%</td>
					<td>-6.80%</td>
					<td>83.24%</td>
					<td>-</td>
						</tr>
					<tr>
					<th scope="row">��������<br /> ������<br />(�ۼ�Ʈ)</th>
					<td align="right">-179.32%</td>
                    <td>-125.09%</td>
					<td>20.92%</td>
					<td>-</td>
					<td>-2711.94%</td>
					<td>-50%</td>
					<td>110.94%</td>
					<td>20.06%</td>
					<td>-</td>
					</tr>
					<tr>
					<th scope="row">���ڻ�<br /> ������<br />(�ۼ�Ʈ)</th>
                    <td align="right">-13.70%</td>
					<td>-6.63%</td>
					<td>0.29%</td>
					<td>-9.03%</td>
					<td>21.24%</td>
					<td>31.72%</td>
					<td>30.29%</td>
					<td>38.49%</td>
					<td>-</td>
					</tr>
					<tr>
					<th scope="row">�ڻ� ȸ����</th>
                    <td>0.14ȸ</td>
					<td>0.16ȸ</td>
					<td>0.18ȸ</td>
					<td>0.35ȸ</td>
					<td>0.31ȸ</td>
					<td>0.11ȸ</td>
					<td>0.11ȸ</td>
					<td>0.13ȸ</td>
					<td>�����/<br />������ڻ�</td>
					</tr>
					</tbody>
					</table>
					<div style="text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">
						�� ��� ��ġ�� ��09 ~��10���� K-GAAP �����繫��ǥ ����, ��11�� ���Ĵ� K-IFRS �����繫��ǥ �������� ����Ǿ����ϴ�.
					</div>
					<!--//ǥ-->
				</div>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>�繫ó ȸ����</td>
							<td class="contact_user"><strong>����� : </strong>�̰���</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2459</td>
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