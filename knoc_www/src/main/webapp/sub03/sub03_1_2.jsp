<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
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
				<%@include file="/include/subtop_03.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>��������ػ��</span>
                    &gt; <span class="locanow">��������ػ���Ȳ</span>
				</div>
				<!--// location: end //-->

				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_1_2.gif" alt="���������Ž����Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="business">
                    <p class="mT0">��������� ����Ž���� ������ 1970��� �ܱ� ����ȸ����� �������� �����Ͽ� ������ ������ ���Ͽ� ���������� �̷�������� 1979�� �ѱ��������� ���� ����, ���������� ����� Ž�簡 �̷������. 2016�� 11�� �� ����, ��������� ����Ž�縦 ���� �� 116,549 L-km�� 2D �� 4,836���� 3D ����Ž��� 47���� ���߸� �ǽ��Ͽ���.</p>
                    <div><img src="../images/business/img_sub03_1_2_1.gif" alt="���������� ����� Ž����Ȳ" />
						<div class="blindtext">
							<table>
								<col width="25%"/>
								<col width="25%"/>
								<col width="25%"/>
								<col width="25%"/>
								<thead>
									<tr>
										<th scope="col">����</th>
										<th scope="col">�ѱ�</th>
										<th scope="col">�Ϻ�</th>
										<th scope="col">�븸</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>���� ����</td>
										<td>30</td>
										<td>38</td>
										<td>24</td>
									</tr>
									<tr>
										<td>���߰���(��)</td>
										<td>45</td>
										<td>191</td>
										<td>142</td>
									</tr>
									<tr>
										<td>1������ ���߰�</td>
										<td>1.5</td>
										<td>5</td>
										<td>5.9</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
                    <div class="contCon2">
						<p>������ Ž�����</p>
						<p style="text-align:right; margin-right:20px; font-weight:normal">(2016.11.23 ����)</p>
						<table class="chart3_1" summary="��������� ������ Ž����Ȳ�� ����, ����, ��������, ����Ž��, ���ߺ��� Ȯ���� �� �ֽ��ϴ�.">
						<caption>��������� ������ Ž����Ȳ</caption>
						<col width="" />
						<col width="" />
						<col width="" />
						<col width="" />
						<col width="" />
						<col width="" />
						<col width="" />
						<thead>
						<tr>
							<th scope="col" class="first" rowspan="2" >����</th>
							<th scope="col" rowspan="2">����</th>
							<th scope="col" rowspan="2">��������(��)</th>
							<th scope="col" colspan="2">����Ž��</th>
							<th scope="col" rowspan="2">����(��)</th>
							<th scope="col" rowspan="2">���ں�(õ��)</th>
						</tr>
						<tr>
							<th>L-km</th>
							<th>��</th>
						</tr>
						</thead>

						<tfoot>
						<tr>
						<th colspan="2" class="first"><strong>�� ��</strong></th>
						<th>319,069</th>
						<th>116,549</th>
						<th>4,836</th>
						<th><strong>47</strong></th>
						<th>847,354</th>
						</tr>
						</tfoot>

						<tbody>
						<tr>
							<td rowspan="2"  class="first">����</td>
							<td class="tdleft">��6-1����<br />����, ����, �ߺ�</td>
							<td>6,540</td>
							<td>15,897</td>
							<td>3,471</td>
							<td>24</td>
							<td>266,831</td>
						</tr>

						<tr>
						  <td class="tdleft">6-1�Ϻ� �� 8����</td>
							<td>3,140</td>
							<td>5,107</td>
							<td>504</td>
							<td>2</td>
							<td>244,740</td>
						</tr>
						<tr>
							<td rowspan="3"  class="first">����</td>
							<td class="tdleft">��1����/1-2, 1-3</td>
							<td>35,306</td>
							<td>8,520</td>
							<td>-</td>
							<td>1</td>
							<td>11,809</td>
						</tr>
						<tr>
							<td class="tdleft">��2����/2-2</td>
							<td>39,869</td>
							<td>19,114</td>
							<td>298</td>
							<td>4/1</td>
							<td>42,393</td>
						</tr>


						<tr>
							<td class="tdleft">��3����</td>
							<td>41,620</td>
							<td>8,193</td>
							<td>-</td>
							<td>-</td>
							<td>5,157</td>
						</tr>


						<tr>
							<td rowspan="3"  class="first">����</td>
							<td class="tdleft">��4����</td>
							<td>43,195</td>
							<td>12,781</td>
							<td>-</td>
							<td>1</td>
							<td>11,376</td>
						</tr>

						<tr>
							<td class="tdleft">��5����</td>
							<td>44,529</td>
							<td>11,995</td>
							<td>-</td>
							<td>4</td>
							<td>26,793</td>
						</tr>


						<tr>
							<td class="tdleft">��6-2����</td>
							<td>11,939</td>
							<td>12,786</td>
							<td>-</td>
							<td>3</td>
							<td>45,227</td>
						</tr>

						<tr>
							<td class="first">JDZ</td>
							<td class="tdleft">���ϰ���</td>
							<td>69,662</td>
							<td>19,571 </td>
							<td>563</td>
							<td>7</td>
							<td>87,126</td>
						</tr>


						<tr>
							<td class="first">��Ÿ</td>
							<td class="tdleft">��Ÿ(��������)</td>
							<td>-</td>
							<td>2,585</td>
							<td>-</td>
							<td>-</td>
							<td>1,421</td>
						</tr>
						</tbody>

						</table>

					</div>
				<div style="height: 30px;"></div>
				</div>
				<!--//��-->

				<!-- new_officer -->
				<div class="new_officer" style="left:2%">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-11-23</td>
						<td class="contact_team"><strong>���μ� : </strong>Ž����ó ����Ž����</td>
						<td class="contact_user"><strong>����� : </strong>�ֿ���</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-3132</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- new_officer -->
			</div>
		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>