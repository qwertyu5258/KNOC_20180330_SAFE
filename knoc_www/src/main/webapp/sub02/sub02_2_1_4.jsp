<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","01");
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
					&gt; <span>�Ϲ���Ȳ</span>
					&gt; <span class="locanow">�ӿ���Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_1.gif" alt="�Ϲ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_1_2_ta1.gif" alt="�ӿ���Ȳ"/></h4>
					<h5>�ӿ����ӹ��</h5>
					<!--ǥ-->
					<table  class="chart1" summary="�ӿ����ӹ���� Ȯ���� �� �ֽ��ϴ�.">
						<caption>�ӿ����ӹ��</caption>
						<col width="60px" />
						<col width="100px" />
						<col width="540px" />	
						<thead>
							<tr>
							<th scope="col" class="first" colspan="2">����</th>
							<th scope="col">���ӹ��</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="first" colspan="2">����</td>
								<td>�ӿ���õ����ȸ ��õ�������������ȸ ���ǡ����������û������ �Ӹ�</td>
							</tr>
							<tr>
								<td class="first" colspan="2">���Ӱ�������</td>
								<td>�ӿ���õ����ȸ ��õ�������������ȸ ���ǡ��ȹ�����������û������ �Ӹ� </td>
							</tr>
							<tr>
								<td class="first" rowspan="2">�̻�</td>
								<td class="first3">�����̻�</td>
								<td>���� �Ӹ�</td>
							</tr>
							<tr>
								<td class="first3">������̻�</td>
								<td>�ӿ���õ����ȸ ��õ�������������ȸ ���ǡ��ȹ����������Ӹ� </td>
							</tr>
						</tbody>
					</table>
					<!--//ǥ-->

					<h5>�����̻�</h5>
					<!--ǥ-->
					<table  class="chart2" summary="�ѱ��������� �����̻� ��Ȳ�� ����, ����, �������, �ӱ�, �з�, �ֿ��º��� Ȯ���� �� �ֽ��ϴ�.">
						<caption>�����̻� ��Ȳ</caption>
                    
						<colgroup>						
							<col width="100px" />
							<col width="60px" />
							<col width="60px" />
							<col width="80px" />
							<col width="160px" />
							<col width="250px" />
                   	
						</colgroup>	
						<thead>
							<tr>
								<th scope="col" class="first">����</th>
								<th scope="col">����</th>
								<th scope="col">�������</th>
								<th scope="col">�ӱ�</th>
								<th scope="col">�з�</th>
								<th scope="col" class="alice">�ֿ���</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="first">�  ��<br/>(����)</td>
								<td class="tdcen">������<br/>(������)</td>
								<td>54.03.01</td>
								<td>2016.02.02 ~ 2019.02.01</td>
								<td  class="tdleft">- �߾Ӱ� <br/>- ����� �濵�� <br/>- KAIST ���п�<br/><span> (������� ����)</span></td>
								<td class="tdleft"><strong>����</strong><BR />��)�����߰��� ���� <br/>��)�������ջ�� ����  <br/> ��)�����߰��� �λ���
								</td>
							</tr>
							<tr>
								<td class="first">�  ��<br/>(����)</td>
								<td>������<br/> (ܫ����)</td>
								<td>57.03.30</td>
								<td>2015.02.16 ~ 2017.02.15</td>
								<td class="tdleft">- ������
								  <br/>- ������б� ���ڰ���
								  <br/>- �������ָ��� ���п�<br/><span>(������ �ڻ�)</span>
								</td>
							  <td class="tdleft"><strong>���Ӱ�������</strong><br/>
								    ���������������� �����м�����<br/>
									�����ڿ��� ����ڹ���<br/>
									��ܰ�����å������ ��ܰ���������<br/>
									��)��ġȦ����(��), ��ġ�ڷ���(��)��ǥ�̻�<br/></td>
							</tr>
							<tr>
								<td class="first">�  ��<br/>(����) </td>
								<td>�Ű���<br/>(��ˬ��)</td>
								<td>59.09.30</td>
								<td>2013.09.14 ~ 2017.03.31<br/>(����)</td>
								<td class="tdleft">- ������ <br/>- ����ø��� ����������<br/>- ����� �������п�<br/><span>(������ ����)</span></td>
								<td class="tdleft"><strong>������������</strong><br />��)�������ó��</td>
							</tr>
						
						
						
						</tbody>
					</table>
					<!--//ǥ-->

					<h5> ������̻�</h5>
					<!--ǥ-->
					<table summary="�ѱ��������� ������̻� ��Ȳ�� ����, �����, �������, �ӱ�, �з�, �ֿ��º��� Ȯ���� �� �ֽ��ϴ�." class="chart2">
						<caption>������̻� ��Ȳ</caption>
						<colgroup>

							<col width="100px">
							<col width="60px">
							<col width="60px">
							<col width="80px">
							<col width="170px">
							<col width="240px">
						</colgroup>

						<thead>
							<tr>
								<th class="first" scope="col">����</th>
								<th scope="col">����</th>
								<th scope="col">�������</th>
								<th scope="col">�ӱ�</th>
								<th scope="col">�з�</th>
								<th class="alice" scope="col">�ֿ���</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="first">�  ��<br>(�����)<br>*�̻�ȸ����</td>
								<td>�Ⱥ���<br>(��ܼ�)<br></td>
								<td>54.11.02</td>
								<td>2014.01.28 ~ 2016.01.27</td>
								<td class="tdleft">- �λ��<br>
								  - ����� ����<br>
								  - ������ �������п�<br>
								  <span>(��������м���)</span><br>
								  - ������б�<br>
								  <span>(��ġ�йڻ�)</span></td>
								<td class="tdleft">���ִ� �濵�������п� �ʺ�����<br>��ȸ ���������� ���ӱ���<br>��)��ȸ�繫ó �Թ�����(������)<br>��)��ȸ�繫ó ��������ȸ����ȸ�����ȸ���Ǽ���������ȸ ������������</td>
							</tr>

							<tr>
								<td class="first">�  ��<br>(�����)</td>
								<td>���п�<br>(������)</td>
								<td>56.07.26</td>
								<td>2014.08.12 ~ 2016.08.11</td>
								<td class="tdleft">- ���������<br>- �λ�� (ȭ�б�����) <br>- ���� �濵���п�<span>(�濵�м���)</span></td>
								<td class="tdleft">���� �濵���� �濵�� ����<br> ��)SK������ ��Ʈ�� ���� �������� �������(����)<br>��) (��)SK �������������(����)<br>��)(��)SK ȭ�л�������(��)<br>��)(��)SK ������ȯ������ǽ���(��)<br>��)(��)SK ������ ���ذ�����(��)</td>
							</tr>

							<tr>
								<td class="first">�  ��<br>(�����)</td>
								<td>������<br>(�����)</td>
								<td>58.11.29</td>
								<td>2014.10.28 ~ 2016.10.27</td>
								<td class="tdleft">- ��ϰ�<br>- ������ �濵��<br>
								- ������ ���п�<br><span>(�濵�м���)</span>
								<br>- ����� ���п�<span>(�濵�йڻ�)</span></td>

								<td class="tdleft">���Ǵ��б� �濵���� ���� (�濵������)
								<br> ��)�ѱ�ǰ���濵��ȸ ȸ�� <br>��)���ΰ濵������</td>
							</tr>

							<tr>
								<td class="first">�  ��<br>(�����)</td>
								<td>�ڿ�ȭ<br>(�����)</td>
								<td>66.04.17</td>
								<td>2014.10.28 ~ 2016.10.27</td>
								<td class="tdleft">- õ�� �߾Ӱ�<br>- �ܱ���<br><span>(�Ҿ�ҹ���)</span></td>
								<td class="tdleft">����Ƽ����(��) ��ǥ<br> ��)�泲��û ��å��ȹ����<br>��)���̺������� �̻�<br></td>
							</tr>

							<tr>
								<td class="first">�  ��<br>(�����)</td>
								<td>������<br>(������)</td>
								<td>53.11.04</td>
								<td>2015.02.09 ~ 2017.02.08</td>
								<td class="tdleft">- �溹��<br>- ����� �ڿ�����<br>- Texas A&amp;M ���п�<br><span>(�������� ����)</span><br>- Texas A&amp;M ���п�<br><span>(�������� �ڻ�)</span></td>
								<td class="tdleft">���ϴ��б� �������ڿ����а� ����<br>��)�������� ����� �����<br>��)Texas A&amp;M Univ.<br><span><span></span></span>��)Crisman Institute ������</td>
							</tr>

							<tr>
								<td class="first">�  ��<br>(�����)</td>
								<td>��뼮<br>(��ף�)</td>
								<td>49.02.23</td>
								<td>2016.04.12 ~ 2018.04.11</td>
								<td class="tdleft">- ��������б�(27��)<br>- ����� ��ġ��<br>- ������ �濪���п� ����<br>- ������ �������п� ����</td>
								<td class="tdleft">�ܱ��� ����������������� �������<br>��)��ȭ���ϱ������� ��å�����忪<br>��)����Ľ� ����������� ��å�ڹ�������<br>��)�������� ������� �ڹ�����</td>
							</tr>

							<tr>
								<td class="first">�  ��<br>(�����)</td>
								<td>���¿�<br>(�����)</td>
								<td>62.08.01</td>
								<td>2016.04.12 ~ 2018.04.11</td>
								<td class="tdleft">- �泲 �����<br>- ����� ����<br>- ����� ���п� ���а�</td>
								<td class="tdleft">�������� ���� ��ȣ��<br>��)��õ�������û ����˻�<br>��)�λ��������û ������û ����˻�<br>��)û���������û ���� ��û��</td>
							</tr>

						</tbody>
					</table>
				  
					</div>
				
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-12</td>
							<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó	��ȹ������</td>
							<td class="contact_user"><strong>����� : </strong>�̻�</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2209</td>
						</tr>
					</tbody>
					</table>
				</div><!-- new_officer end -->	
				
				<div class="new_officer" style="margin-top:5px ;">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-12</td>
							<td class="contact_team"><strong>���μ� : </strong>����濵ó	�λ���</td>
							<td class="contact_user"><strong>����� : </strong>ȫ�ƶ�</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2714</td>
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