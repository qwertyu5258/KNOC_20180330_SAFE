<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<% 

    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	' Page Navigator section

	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

	application.setAttribute("gNavMenuDepth1","03");

	application.setAttribute("gNavMenuDepth2","02");

	application.setAttribute("gNavMenuDepth3","02");

	application.setAttribute("gNavMenuDepth4","00");

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

			  <%@include file="/include/subtop_03.jsp"%>

			  <!--// location: start //-->

				<div class="locadv">

					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	

					&gt; <span>����Ұ�</span>

                    &gt; <span>�ؿܻ��</span>

                    &gt; <span class="locanow">����������Ȳ��</span>

				</div>

				<!--// location: end //-->

				

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->

				<div class="pagetle">

					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>

				</div>

				<!--����-->

				<div class="business2">

                	<%@include file="sub03_2_2_map.jsp"%>

                    

                   <h4><img src="../images/business/img_ttl_sub03_2_2_marib.gif" alt="���� ������(������)" /></h4>

                   <div class="mT10"><img src="../images/business/img_sub03_2_2_marib.gif" alt="���� ������(������) ������" /></div>

                    

                    <p class="rtxt">[2012�� 12����]</p>

					<table class="chart2" summary="���� ������(������) ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>���� ������(������) ���� ����</caption>

					<col width="60px" />

					<col width="60px" />

					<col width="70px" />

					<col width="70px" />

					<col width="50px" />

					<col width="50px" />

					<col width="60px" />

					<thead>

					<tr>

					<th scope="col" class="first">����</th>
					<th scope="col">������</th>
					<th scope="col">�����</th>
					<th scope="col">����� �Ű���</th>
					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
					<th scope="col">�ѱ�������<br />����</th>					
					<th scope="col">�����������</th>

					</tr>

					</thead>

					<tbody>

					<tr>

					<td class="first">������</td>

					<td>���� ������ LNG</td>

					<td>Total(��)</td>

					<td>'97.02</td>

					<td>26.43</td>

					<td>1.0613</td>

					<td>SK, ��ȯ, ����, ��������</td>

					</tr>

					</tbody>

					</table>

                        

						<p>
						<ul class="sub" id="sub5">
<li><b>�������:</b> ���� ������(Marib) Block 18 �� ���������� ����� ������ ���� ���� Balhaf�� õ��������ȭ���忡�� <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LNG�� ��ȯ�Ͽ� �����ϴ� Yemen LNG Co.Ltd.(YLNG)���� ������ �����Ͽ� �����ϰ� �ִ� ���</li>
<li><b>project ���� ��Ȳ:</b> ��÷ ǥ1 ����</li>
<li><b>���� �� ���� ��Ȳ:</b> ��÷ ǥ2 ����</li>
</ul>
						</p>


<h5>÷�� 1. ǥ 1 (������Ʈ ���� ��Ȳ)</h5>

<table class="chart1">
	<thead>
  <tr>
    <th colspan="2" style="border-left:none;">�� ��</th>
    <th>�ϰ���</th>
    <th>�� ��</th>
	</thead>
	<tbody>
  </tr>
  <tr>
    <th rowspan="2">plant</th>
    <td><center>train 1</center></td>
    <td><center>'09.08.30</center></td>
    <td>- ��09.10.15 ù ����<BR />
        - ��09.11.07 ù ī�� ���� (��� ���� ����)</td>
  </tr>
  <tr>
    <td><center>train 2</center></td>
    <td><center>'10.03.31</center></td>
    <td>- ��10.04.01 ù ���� </td>
  </tr>
  </tbody>
</table>




<h5>÷�� 2. ǥ 2 (���� �� ���� ��Ȳ)</h5>


<table class="chart1">
<thead>
  <tr>
    <th style="border-left:none;">�� ��</th>
    <th>��    Ȳ</th>
    <th>�� ��</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <th>LNG ���귮</th>
    <td>
	LNG �������귮(12�� 12���� ����)<br />
	- 172.4�鸸 BOE (946,733 mmcf)
	</td>
    <td>�������귮 ����� (12�� 12���� ����)<br />
	- ����� : 1.8�鸸 BOE (10,048 mmcf)</td>
  </tr>
  <tr>
    <th>LNG ������</th>
    <td>
	 12�� LNG ������( 12���� ����)<br />
	- 78ī��(5.83�鸸��)
</td>
    <td>���� ������ : 259ī��<br />
 - ��09�� : 6ī��<br />
 - ��10�� : 64ī��<br />
 - ��11�� : 111ī��<br />
 - ��12�� : 78ī��
</td>
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
						<td><strong>���μ� : </strong>����ó �ߵ�CIS������</td>
						<td><strong>����ó : </strong>031-380-2898</td>
						<td><strong>������ : </strong>2012-12-31</td>
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