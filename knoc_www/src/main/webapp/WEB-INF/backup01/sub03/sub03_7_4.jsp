<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth5","00");
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
                    &gt; <span>��Ưȸ��
</span>
                    &gt; <span class="locanow">����</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_7_4.gif" alt="����" /></h3>
				</div>
				<!--����-->
                 <div class="business2">
                	<h5 class="mT0">����</h5>
                    <ul>
					<li>���ڰ����� ���ڰ������� �����Ͽ�, ������ �� �ڿ����� ����� ����, ����, ����, ������� �⿬ � ���</li>
					</ul>
                    <h5>������ �ֿ��׸�</h5>
                    <table  class="chart1" summary="������ �ֿ��׸��� ���ڰ���, ���� �� ���� ����������� Ȯ���� �� �ֽ��ϴ�.">
					<caption>������ �ֿ��׸�</caption>
					<col width="33%" />
					<col width="33%" />
					<col width="34%" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">����</th>
					<th scope="col">�������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<th scope="row" class="first">���ڰ���</th>
					<td>- ���������ڿ���å<br />- ��������������<br />
					- ������ �ڿ�����<br />
					- ������ ���޾���<br />
					- ������տ�õ���Ȯ��<br />
					- �Ž��� â��<br />
					- ������ ����<br />
					- ���ΰŷ�����</td>
					<td>- �������̿��ո�ȭ, �������ڿ��������, ���ĺ�ȭ���� ���� ��<br />
					- ���������������<br />
					- ��������������, �����ڿ�����, ��������������߻�� ��<br />
					- ��������, ������������, ��ź���޾������ ��<br />
					- ����������� ���� ��õ��� ����<br />
					- �۷ι� ���� ���������<br />
					- ������ �η� �缺, ������ �ڿ���å ����<br />
					- ���ڰ��������</td>
					</tr> 
					<tr>
					<th scope="row" class="first">���ڰ���</th>
					<td>- ������������<br />
					- �����ڿ���������<br />
					- ���ذ�����������<br />
					- ������������������<br />
					- ����������������<br />
					- ���ڱ�� �����ݻ�ȯ</td>
					<td>- ��������, ���ð������޹���Ǽ� ��<br />
					- �ؿ��ڿ����� ��<br />
					- ��ü���â������<br />
					- �������̿��ո�ȭ<br />
					- ������������ ����������� ����<br />
					- ���Ա� �� ������ �����ݻ�ȯ<br />
					- ���ڰ��������			
					</td>
					</tr> 
					</tbody>
					</table>
                    
                    <h5>�������º�</h5>
                    <ul>
					<li><strong>�ΰ��� ���� ������ ��������</strong>
                    <div><img src="../images/business/imgin1_sub03_7_4.gif" alt="�ΰ��� ���� ������ ��������" />
						<div class="blindtext">
							<p>������� ��������(���İ�����&rarr;���������)</p>
							<p>������� ��ȹ������ ������ ���ν�û(���������&rarr;���İ�����) &rarr; ������� ������Ȳ ���� (���������&rarr;���İ�����)</p>
							<div>
								<p>������ ���� ���� �� ���� (���İ�����&rarr;���������) &rarr; ������� ������Ȳ ���� (���������&rarr;���İ�����)</p>
								<p>����� ���ν�û (���������&rarr;���İ�����) &rarr; ������� ������Ȳ ���� (���������&rarr;���İ�����) <br/>
								&rarr; �����/����� ���޿�û (���İ�����&rarr;��������) &rarr; ������ ���� (�������� &rarr; ���������)</p>
								<p>������� �������� (���������&rarr;���İ�����) &rarr; �����/����� ���޿�û (���İ�����&rarr;��������) &rarr; ������ ���� (�������� &rarr; ���������)</p>
								<p>��</p>
								<p>����������ΰ��� ���� �� ���(���İ�����, ���������) &rarr; �����/����� ���޿�û (���İ�����&rarr;��������) &rarr; ������ ���� (�������� &rarr; ���������)</p>
							</div>
							<p>��</p>
							<p>������ ����Ȯ�� (����)�� ���� (���İ�����&rarr;���������) &rarr; �����/����� ���޿�û (���İ�����&rarr;��������) &rarr; ������ ���� (�������� &rarr; ���������)</p>	
						</div>
					</div></li>
                    <li class="mT10"><strong>���� �� �������</strong>
                    <div><img src="../images/business/imgin2_sub03_7_4.gif" alt="���� �� �������" />
						<div class="blindtext">
							<p>����, ����</p>
							<p>���İ����� �� ���������� �� ���ڱⰣ ���� &rarr; ��ȹ������</p>
							<ul>
							<li>�������� - ������� &rarr; �Ǽ����� or<br/>
							�������� &rarr; �Ǽ�����</li>
							<li>�����ڿ����� &rarr; �Ǽ�����</li>
							<li>���� &rarr; �Ǽ�����</li>
							<li>������ - ������� &rarr; �Ǽ����� or<br/>
							������  &rarr; �Ǽ�����</li>
							<li>������������ - ������� &rarr; �Ǽ�����</li>
							<li>���ذ������� - ������� &rarr; �Ǽ�����</li>
							</ul>
							<p>���ھ���ü�� (���İ����� &rarr; ���ڴ����) , �������ü�� (���ڴ���� &rarr; ������� &rarr; �Ǽ�����)</p>	
						</div>
					</div></li>
                    </ul>
                    <h5>������� �� ��ȹ(�ڱݻ��)</h5>
                    <p class="rtxt mT0">[���� : ���]</p>
                    <table class="chart3" summary="������� �� ��ȹ�� �������� Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>������ ������� �� ��ȹ</caption>
					<col width="10px" />
					<col width="110px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<col width="35px" />
					<thead>
					<tr>
					<th scope="col" colspan="2" class="first">����</th>
					<th scope="col">'01����</th>
					<th scope="col">'02����</th>
					<th scope="col">'03����</th>
					<th scope="col">'04����</th>
					<th scope="col">'05����</th>
					<th scope="col">'06����</th>
					<th scope="col">'07����</th>
					<th scope="col">'08����</th>
					<th scope="col">'09����</th>
					<th scope="col">'10����</th>
					<th scope="col">'11��ȹ</th>
					</tr>
					</thead>
					<tfoot>
						<tr class="tdpink">
						<th scope="row" class="first sum" colspan="2"><strong>�� ��</strong></th>
						<td class="sum"><strong>23,086</strong></td>
						<td class="sum"><strong>22,309</strong></td>
						<td class="sum"><strong>23,572</strong></td>
						<td class="sum"><strong>22,140</strong></td>
						<td class="sum"><strong>25,383</strong></td>
						<td class="sum"><strong>30,074</strong></td>
						<td class="sum"><strong>38,062</strong></td>
						<td class="sum"><strong>55,343</strong></td>
						<td class="sum"><strong>36,902</strong></td>
						<td class="sum"><strong>43,820</strong></td>
						<td class="sum"><strong>41,032</strong></td>
						</tr>
					</tfoot>
					<tbody>
					<tr>
					<th scope="rowgroup" rowspan="12" class="first bright">�� �� �� ��</th>
					<th scope="row" class="tdleft">���������ڿ���å</th>
					<td>1,003</td>
					<td>1,030</td>
					<td>1,285</td>
					<td>1,166</td>
					<td>1,396</td>
					<td>1,909</td>
					<td>2,887</td>
					<td>2,882</td>
					<td>2,901</td>
					<td>3,622</td>
					<td>1,253</td>
					</tr> 
					<tr>
					<th scope="row" class="tdleft">��������������</th>
					<td>342</td>
					<td>333</td>
					<td>346</td>
					<td>339</td>
					<td>381</td>
					<td>403</td>
					<td>396</td>
					<td>336</td>
					<td>247</td>
					<td>206</td>
					<td>410</td>
					</tr> 
					<tr>
					<th scope="row" class="tdleft">�������ڿ�����</th>
					<td>695</td>
					<td>665</td>
					<td>1,109</td>
					<td>1,892</td>
					<td>2,730</td>
					<td>3,325</td>
					<td>5,649</td>
					<td>15,244</td>
					<td>8,323</td>
					<td>15,787</td>
					<td>11,428</td>
					</tr> 
					<tr>
					<th scope="row" class="tdleft">���������޾���</th>
					<td>8,522</td>
					<td>7,692</td>
					<td>8,007</td>
					<td>7,058</td>
					<td>7,147</td>
					<td>8,834</td>
					<td>9,680</td>
					<td>18,932</td>
					<td>7,951</td>
					<td>7,768</td>
					<td>4,936</td>
					</tr>
					
					<tr>
					<th scope="row" class="tdleft">������տ�õ����к�</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>2,553</td>
					</tr>
					
					<tr>
					<th scope="row" class="tdleft">�Ž���â��</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>195</td>
					</tr>
					
					<tr>
					<th scope="row" class="tdleft">����������</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>459</td>
					</tr>
					
					<tr>
					<th scope="row" class="tdleft">�����</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>1,015</td>
					</tr>
					
					<tr>
					<th scope="row" class="tdleft">�������ŷ�</th>
					<td>1,520</td>
					<td>1,000</td>
					<td>1,319</td>
					<td>-</td>
					<td>1,533</td>
					<td>1,583</td>
					<td>2,786</td>
					<td>2,164</td>
					<td>1,617</td>
					<td>31</td>
					<td>-</td>
					</tr>
					<tr>
					<th scope="row" class="tdleft">Ÿ��ó</th>
					<td>391</td>
					<td>1,242</td>
					<td>1,550</td>
					<td>2,633</td>
					<td>3,418</td>
					<td>3,690</td>
					<td>4,427</td>
					<td>3,022</td>
					<td>3,392</td>
					<td>3,094</td>
					<td>3,826</td>
					</tr>
					<tr>
					<th scope="row" class="tdleft">�⿬�������</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>902</td>
					<td>1,493</td>
					<td>1,694</td>
					<td>1,737</td>

					</tr>
					<tr class="tdblue">
					<th scope="row" class="tdleft"><strong>�� ��</strong></th>
					<td><strong>12,473</strong></td>
					<td><strong>11,962</strong></td>
					<td><strong>13,617</strong></td>
					<td><strong>13,088</strong></td>
					<td><strong>16,605</strong></td>
					<td><strong>19,745</strong></td>
					<td><strong>25,825</strong></td>
					<td><strong>43,482</strong></td>
					<td><strong>25,924</strong></td>
					<td><strong>32,203</strong></td>
					<td><strong>27,812</strong></td>

					</tr>
					<tr>
					<th scope="rowgroup" rowspan="9" class="first bright">�� �� �� ��</th>
					<th scope="row" class="tdleft">�ѱ������ڿ�����</th>
					<td>725</td>
					<td>665</td>
					<td>720</td>
					<td>600</td>
					<td>500</td>
					<td>505</td>
					<td>684</td>
					<td>684</td>
					<td>684</td>
					<td>684</td>
					<td>684</td>

					</tr> 
					<tr>
					<th scope="row" class="tdleft">�ѱ����ذ�������</th>
					<td>200</td>
					<td>160</td>
					<td>120</td>
					<td>96</td>
					<td>45</td>
					<td>100</td>
					<td>50</td>
					<td>50</td>
					<td>50</td>
					<td>47</td>
					<td>43</td>

					</tr> 
					<tr>
					<th scope="row" class="tdleft">��������������</th>
					<td>4,153</td>
					<td>5,222</td>
					<td>5,150</td>
					<td>5,198</td>
					<td>5,752</td>
					<td>6,920</td>
					<td>6,536</td>
					<td>7,000</td>
					<td>6,250</td>
					<td>5,831</td>
					<td>6,936</td>

					</tr> 
					<tr>
					<th scope="row" class="tdleft">�ѱ�������������</th>
					<td>479</td>
					<td>429</td>
					<td>410</td>
					<td>380</td>
					<td>380</td>
					<td>390</td>
					<td>364</td>
					<td>301</td>
					<td>230</td>
					<td>260</td>
					<td>384</td>

					</tr>
					<tr>
					<th scope="row" class="tdleft">�ѱ���������</th>
					<td>4,956</td>
					<td>3,791</td>
					<td>3,355</td>
					<td>2,778</td>
					<td>2,101</td>
					<td>2,395</td>
					<td>3,736</td>
					<td>3,826</td>
					<td>3,764</td>
					<td>2,909</td>
					<td>2,957</td>

					</tr>
					<tr>
					<th scope="row" class="tdleft">��������/���ڱ�����ڻ�ȯ</th>
					<td>100</td>
					<td>80</td>
					<td>200</td>
					<td>-</td>
					<td>-</td>
					<td>19</td>
					<td>867</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>

					</tr>

					<tr>
					<th scope="row" class="tdleft">�������ŷ�</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>1,796</td>
					<td>2,049</td>

					</tr>
					<tr>
					<th scope="row" class="tdleft">Ÿ��ó</th>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>90</td>
					<td>167</td>

					</tr>
					<tr class="tdblue">
					<th scope="row" class="tdleft"><strong>�� ��</strong></th>
					<td><strong>10,613</strong></td>
					<td><strong>10,347</strong></td>
					<td><strong>9,955</strong></td>
					<td><strong>9,052</strong></td>
					<td><strong>8,778</strong></td>
					<td><strong>10,329</strong></td>
					<td><strong>12,237</strong></td>
					<td><strong>11,861</strong></td>
					<td><strong>10,978</strong></td>
					<td><strong>11,617</strong></td>
					<td><strong>13,220</strong></td>

					</tr>					
					<tr>
					<th scope="rowgroup" class="first bright" rowspan="2">�� ��</th>
					<th scope="row" class="tdleft">����������</th>
					<td>3,664</td>
					<td>2,750</td>
					<td>2,945</td>
					<td>2,266</td>
					<td>2,145</td>
					<td>3,444</td>
					<td>3,999</td>
					<td>2,730</td>
					<td>2,252</td>
					<td>2,252</td>
					<td>1,250</td>

					</tr> 
					<tr>
					<th scope="row" class="tdleft">�������߻��</th>
					<td>1,499</td>
					<td>1,815</td>
					<td>2,638</td>
					<td>2,558</td>
					<td>2,605</td>
					<td>3,833</td>
					<td>7,126</td>
					<td>13,231</td>
					<td>5,094</td>
					<td>1,2556</td>
					<td>7,100</td>
					</tr>
					</tbody>
					</table>
                </div>
				<!--//��-->
		  </div>
		  
		  <div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>���μ� : </strong>�濵����ó ��Ưȸ����</td>
						<td><strong>����ó : </strong>031-380-2402</td>
						<td><strong>������ : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
		  
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>