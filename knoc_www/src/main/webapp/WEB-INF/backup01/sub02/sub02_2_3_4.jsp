<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","04");
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
					&gt; <span>�繫��Ȳ</span>
                    &gt; <span class="locanow">�塤�ܱ� ���Ա���Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_3.gif" alt="�繫��Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_2_4_ta1.gif" alt="��ܱ� ���Ա���Ȳ" border="0"/></h4>
					<p class="rtxt">(���� : õ��)</p>
					<!--ǥ-->
					<table class="chart2" summary="�ѱ��������� ������ ��ܱ� ���Ա���Ȳ�� ����, �⸻, �����ݾ�, ��������, ��������, �ڱ��ں���񺯵��ݾ�, ���Ա����������� Ȯ���� �� �ֽ��ϴ�.">
					<caption>��ܱ� ���Ա���Ȳ</caption>
					<col width="50px" />
					<col width="50px" />
					<col width="90px" />
					<col width="90px" />
					<col width="90px" />
					<col width="110px" />
					<col width="100px" />
					<col width="80px" />
					<col width="50px" />
					<thead>
					<tr>
					<th scope="col" class="first">�⵵</th>
					<th scope="col">����</th>
					<th scope="col">����</th>
					<th scope="col">�⸻</th>
					<th scope="col">�����ݾ�</th>
					<th scope="col">��������</th>
					<th scope="col">��������</th>
					<th scope="col">�ڱ��ں�<br />���<br />�����ݾ�</th>
					<th scope="col">���Ա�<br />������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td rowspan="2" class="first">2004��</td>
					<td>���</td>
					<td class="tdright">2,786,800,000</td>
					<td class="tdright">2,762,900,000</td>
					<td class="tdright">-23,900,000.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>-0.60%</td>
					<td>38.70%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">185,900,000</td>
					<td class="tdright">215,700,000</td>
					<td class="tdright">29,800,000.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>0.80%</td>
					<td>3.00%</td>
					</tr>
					<tr>
					<td rowspan="2" class="first">2005��</td>
					<td>���</td>
					<td class="tdright">2,762,900,000</td>
					<td class="tdright">2,717,600,000</td>
					<td class="tdright">-45,300,000.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>-1.00%</td>
					<td>35.90%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">215,700,000</td>
					<td class="tdright">247,100,000</td>
					<td class="tdright">31,400,000.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>0.70%</td>
					<td>3.30%</td>
					</tr>
					<tr>
					<td rowspan="2" class="first">2006��</td>
					<td>���</td>
					<td class="tdright">2,717,600,000</td>
					<td class="tdright">2,586,600,000</td>
					<td class="tdright">-131,000,000.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>-2.70%</td>
					<td>30.70%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">247,100,000</td>
					<td class="tdright">292,400,000</td>
					<td class="tdright">45,300,000.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>0.90%</td>
					<td>3.50%</td>
					</tr>
					<tr>
					<td rowspan="2" class="first">2007��</td>
					<td>���</td>
					<td class="tdright">2,586,582,660</td>
					<td class="tdright">2,701,556,434</td>
					<td class="tdright">114,973,774.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>2.00%</td>
					<td>28.70%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">292,441,361</td>
					<td class="tdright">272,278,225</td>
					<td class="tdright">-20,163,136.00</td>
					<td>��Ưȸ�����Ա� ���� ��</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>-0.30%</td>
					<td>2.90%</td>
					</tr>
					
					<tr>
					<td rowspan="2" class="first">2008��</td>
					<td>���</td>
					<td class="tdright">2,701,556,434</td>
					<td class="tdright">3,087,550,793</td>
					<td class="tdright">385,994,359.00</td>
					<td>�������߻��<br /> ����</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>5.00%</td>
					<td>23.60%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">272,278,225</td>
					<td class="tdright">1,184,425,934</td>
					<td class="tdright">912,147,709.00</td>
					<td>�������߻��<br /> ����</td>
					<td>��Ÿ ���ں�� �߻���ä</td>
					<td>12.10%</td>
					<td>9.10%</td>
					</tr>

            		<tr>
					<td rowspan="2" class="first">2009��</td>
					<td>���</td>
					<td class="tdright">3,087,550,793</td>
					<td class="tdright">5,355,014,811</td>
					<td class="tdright">2,267,464,018.00</td>
					<td>�������߻��<br /> ����</td>
					<td>��ä����</td>
					<td>28.68%</td>
					<td>32.16%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">1,184,425,934</td>
					<td class="tdright">1,815,497,207</td>
					<td class="tdright">631,071,273.00</td>
					<td>�������߻��<br /> ����</td>
					<td>�����������</td>
					<td>7.50%</td>
					<td>10.61%</td>
					</tr>
					<tr>
					<td rowspan="2" class="first">2010��</td>
					<td>���</td>
					<td class="tdright">5,355,014,811</td>
					<td class="tdright">7,063,758,084</td>
					<td class="tdright">1,708,473,273.00</td>
					<td>�������߻��<br /> ����</td>
					<td>�����������</td>
					<td>16.91%</td>
					<td>70.65%</td>
					</tr>
					<tr>
					<td>�ܱ�</td>
					<td class="tdright">1,815,497,207</td>
					<td class="tdright">2,679,070,090</td>
					<td class="tdright">863,572,883.00</td>
					<td>�������߻��<br /> ����</td>
					<td>�����������</td>
					<td>8.51%</td>
					<td>26.95%</td>
					</tr>
					
					<tr>
						<td rowspan="2" class="first">2011��</td>
						<td>���</td>
						<td class="tdright">7,063,758,084</td>
						<td class="tdright">9,904,991,265</td>
						<td class="tdright">2,841,233,181.00</td>
						<td>�űԱ��� ����</td>
						<td>��ä����</td>
						<td>31.04%</td>
						<td>31.38%</td>
					</tr>
				
					<tr>
						<td>�ܱ�</td>
						<td class="tdright">2,679,070,090</td>
						<td class="tdright">2,006,449,180</td>
						<td class="tdright">-672,620,910.00</td>
						<td>�繫������ ��ȭ</td>
						<td>�����������</td>
						<td>-5.45%</td>
						<td>6.36%</td>
					</tr>
					
					<tr>
						<td rowspan="2" class="first">2012��</td>
						<td>���</td>
						<td class="tdright">9,904,991,265</td>
						<td class="tdright">9,445,283,177</td>
						<td class="tdright">-459,708,088.00</td>
						<td>���Ա� ������<br/> ��ü</td>
						<td>��ä���� </td>
						<td>-4.28%</td>
						<td>32.89%</td>
					</tr>
					
					<tr>
						<td>�ܱ�</td>
						<td class="tdright">2,006,449,180</td>
						<td class="tdright">1,738,455,814</td>
						<td class="tdright">-267,993,366.00</td>
						<td>���Ա� ��ȯ</td>
						<td>������� ����</td>
						<td>-2.50%</td>
						<td>6.05%</td>
					</tr>
					<tr>
						<td rowspan="2" class="first">2013��</td>
						<td>���</td>
						<td class="tdright">9,445,283,177</td>
						<td class="tdright">9,110,228,894</td>
						<td class="tdright">-335,054,283</td>
						<td>���Ա���������ü</td>
						<td>��ä����</td>
						<td>-3.26%</td>
						<td>31.63%</td>
					</tr>
					
					<tr>
						<td>�ܱ�</td>
						<td class="tdright">1,738,455,814</td>
						<td class="tdright">2,806,362,211</td>
						<td class="tdright">1,067,906,397</td>
						<td>���Ա���������ü</td>
						<td>��ä����</td>
						<td>10.38%</td>
						<td>9.74%</td>
					</tr>
					<tr>
						<td rowspan="2" class="first">2014��</td>
						<td>���</td>
						<td class="tdright">9,110,228,894</td>
						<td class="tdright">10,758,604,487</td>
						<td class="tdright">1,648,375,593</td>
						<td>�������߻�� ����</td>
						<td>��ä����</td>
						<td>19.69</td>
						<td>40.01</td>
					</tr>
					
					<tr>
						<td>�ܱ�</td>
						<td class="tdright">2,806,362,211</td>
						<td class="tdright">1,257,793,967</td>
						<td class="tdright">-1,548,568,243</td>
						<td>���Ա� ��ȯ</td>
						<td>��ä����</td>
						<td>-18.5</td>
						<td>4.68</td>
					</tr>
					<tr>
						<td rowspan="2" class="first">2015��</td>
						<td>���</td>
						<td class="tdright">10,758,604,487</td>
						<td class="tdright">10,911,979,712</td>
						<td class="tdright">153,375,225</td>
						<td>�������߻�� ����	</td>
						<td>��ä����</td>
						<td>3.66</td>
						<td>47.02</td>
					</tr>
					
					<tr>
						<td>�ܱ�</td>
						<td class="tdright">1,257,793,967</td>
						<td class="tdright">3,339,557,382</td>
						<td class="tdright">2,081,763,415</td>
						<td>���Ա� ������ ��ü</td>
						<td>��ä����</td>
						<td>49.62</td>
						<td>14.39</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->
					<div style="text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">
					���ñ��� : ��15�� 12���� ����<br />
					- ���纸��(����) ���� <br />
					- ��ܱ� �������� : ���⵵���ñⰡ ��15 . 12���� ���� 1�� �̻��̸� ���, 1�� �̸��̸� �ܱ� <br />
					- �ڱ��ں���� : �����ݾ��� ��15 . 12���� �ڱ��ں����� �����ϴ� ���� <br />
					- ���Ա������� :��15 . 12���� ���ں� �� �ܺο��� ������ ���Ա��� ���� 
					</div>
					
				</div>
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-21 </td>
							<td class="contact_team"><strong>���μ� : </strong>�繫ó �ڱ���</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2426</td>
						</tr>
					</tbody>
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