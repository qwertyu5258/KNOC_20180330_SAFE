<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","05");
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
					&gt; <span class="locanow">���� �� �ο���Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_1.gif" alt="�Ϲ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="organization">
					<h4><img src="/images/management/sub02_2_4_1_.gif" alt="����"/></h4>
					<p>���� : 4����, 1��, 1����, 20ó��, 23�繫�� �� ����(����10, �ؿ� 13)</p>
					<div class="organ">
						<ul class="tab">
							<li><a href="sub02_2_1_5.jsp" title="������"><img src="/images/management/sub02_2_4_1_1.gif" alt="������"  id="premier_button1"/></a></li>
							<li><a href="sub02_2_1_5_1.jsp" title="�� �μ� �ֿ����"><img src="/images/management/sub02_2_4_1_2.gif" alt="�� �μ� �ֿ����" id="premier_button2"/></a></li>
							<li><a href="sub02_2_1_5_2.jsp" title="�� �μ� ����û"><img src="/images/management/sub02_2_4_1_3r.gif" alt="�� �μ� ����ó" id="premier_button3"/></a></li>
						</ul>
						<div class="pt30">
							<!--ǥ-->
							<table summary="�� �μ��� ����ó ��Ȳ�� Ȯ���� �� �ֽ��ϴ�." class="chart1">
							<caption>�� �μ��� ����ó ��Ȳ</caption>
							<col width="120px" />
							<col width="390px" />
							<col width="190px" />
							<thead>
								<tr>
									<th scope="col" class="first">�μ�</th>
									<th scope="col">����ó</th>
									<th scope="col">Team����</th>
								 </tr>
							</thead>
							<tbody>
<!--
							 <tr>
								<td class="first">����</td>
								<td>- TEL : 031-380-2103</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">ȫ����</td>
								<td>- TEL : 031-380-2153</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">������</td>
								<td>- TEL : 031-380-2634</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">����ũ������</td>
								<td>- TEL : 031-380-2638</td>
								<td></td>
							 </tr>
-->
							 <tr>
								<td class="first">�����</td>
								<td>- TEL : 031-380-2122</td>
								<td>- ����1��<br />
									- ����2��<br />
									- ����3��</td>
							 </tr>
							 <tr>
								<td class="first">��ȹ������</td>
								<td>- TEL : 031-380-2194</td>
								<td>- ��ȹ������<br />
									- �����濵��<br />
									- �濵����<br />
									- ����������<br />
									- �� �� �� </td>
							 </tr>
							 <tr>
								<td class="first">�濵����ó</td>
								<td>- TEL : 031-380-(���� ���� ��ȣ ����)</td>
								<td>- �ѹ��� : 2302<br />
									- �����Ļ��� : 2322<br />
									- ����ڻ��� : 2364<br />
									- ��Ưȸ���� : 2393</td>
							 </tr>
							 <tr>
								<td class="first">�繫ó</td>
								<td>- TEL : 031-380-2378</td>
								<td>- �ڱ���<br />
									- ������<br />
									- ȸ�輼����<br />
									- ������</td>
							 </tr>
							 <tr>
								<td class="first">PI����ó</td>
								<td>- TEL : 031-380-2439</td>
								<td>- PI������<br />
									- ERP����Ȯ����</td>
							 </tr>
							 <tr>
								<td class="first">����ȹ��</td>
								<td>- TEL : 031-380-2463</td>
								<td>- ����ȹ��<br />
									- �ü�������</td>
							 </tr>
							 <tr>
								<td class="first">E&amp;P��ȹó</td>
								<td>- TEL : 031-380-2260</td>
								<td>- E&amp;P��ȹ��<br />
									- ����������</td>
							 </tr>
							 <tr>
								<td class="first">�űԻ��ó</td>
								<td>- TEL : 031-380-2947</td>
								<td>- ����������<br />
									- M&amp;A�����<br />
									- Ž�籤�����1��<br />
									- Ž�籤�����2��</td>
							 </tr>
							 <tr>
								<td class="first">Ž����ó</td>
								<td>- TEL : 031-380-2554</td>
								<td>- CISŽ����<br />
									- ����Ž����<br />
									- ���ƽþ�Ž����<br />
									- �ߵ�Ž����<br />
									- ���־�����īŽ����</td>
							 </tr>
							 <tr>
								<td class="first">���߼����ó</td>
								<td>- TEL : 031-380-2623</td>
								<td>- ���߼������<br />
									- ���߼����</td>
							 </tr>
							 <tr>
								<td class="first">���߻���1ó</td>
								<td>- TEL : 031-380-2539</td>
								<td>- �����ȹ��<br />
									- �����ߵ�������<br />
									- �ƽþƻ�����</td>
							 </tr>
							 <tr>
								<td class="first">���߻���2ó</td>
								<td>- TEL : 031-380-2955</td>
								<td>- �Ϲ̻�����<br />
									- ���̻�����</td>
							 </tr>
							 <tr>
								<td class="first">�����ȹ��</td>
								<td>- TEL : 031-380-2602</td>
								<td>- ���������<br />
									- ���������</td>
							 </tr>
							 <tr>
								<td class="first">����Ž���</td>
								<td>- TEL : 031-380-2653</td>
								<td>- ����������<br />
									- ����������</td>
							 </tr>
							 <tr>
								<td class="first">�ؿܰ���������</td>
								<td>- TEL : 031-380-2689</td>
								<td>- ����ü��Ǽ���<br />
									- SOC�Ǽ���</td>
							 </tr>
							 <tr>
								<td class="first">������������</td>
								<td>- TEL : 031-380-(���� ���� ��ȣ ����)</td>
								<td>- ������ȹ�� : 2206<br />
									- �������������� : 2765<br />
									- �ؿܼ��������� : 2752<br />
									- ��å���������� : 2677<br />
									- Opinet������������ : 2769</td>
							 </tr>
							 <tr>
								<td class="first">��������ó</td>
								<td>- TEL : 031-380-(���� ���� ����ó ����)</td>
								<td>- ��������� : 2704<br />
									- ����ȯ���� : 2718<br />
									- �������� : 2728</td>
							 </tr>
							 <tr>
								<td class="first">�������ó</td>
								<td>- TEL : 031-380-2735</td>
								<td>- ����������<br />
									- ���������<br />
									- ����Ʈ���̵���<br />
									- ���Ͼ�EN�����</td>
							 </tr>
							 <tr>
								<td class="first">����ü�ó</td>
								<td>- TEL : 031-380-2841</td>
								<td>- �����<br />
									- ������</td>
							 </tr>
							 <tr>
								<td class="first">�������</td>
								<td>- �ּ� : (689-890) ��걤���� ���ֱ� �»��� �г��� 300<br /> 
									- TEL : 052) 270 - 4400 <br />
									- FAX : 052) 238 - 8971 <br />
									- ����� Email : hwlee@knoc.co.kr</td>
								<td>- ������<br />
									- �������<br />
									- �ü���<br />
									- �Ǽ������</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (656-894) �泲 ������ �Ͽ�� �������� 8-7<br />
									- TEL : 055) 680 - 1789 <br />
									- FAX : 055) 681 - 0517<br />
									- ����� Email : jwonki@knoc.co.kr</td>
								<td>- ������<br />
									- �������<br />
									- �ü���<br />
									- �Ǽ������</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (555-250) ���� ������ ������ 1157 <br />
									- TEL : 061) 688 - 8700 <br />
									- FAX : 061) 686 - 6388<br />
									- ����� Email : ziazag@knoc.co.kr</td>
								<td>- ������<br />
									- �������<br />
									- �ü���<br />
									- �Ǽ������</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (356-874) ��û���� ����� ����� ���׸� ��58-1<br />
									- TEL : 041) 660 - 4114 <br />
									- FAX : 041) 668 - 4070 <br />
									- ����� Email : khs6604@knoc.co.kr</td>
								<td>- ������<br />
									- �������<br />
									- �ü���</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (451-822) ��⵵ ���ý� ���¸� ������ 1-37 <br />
									- TEL : 031) 680 - 1414 <br />
									- FAX : 031) 683 - 0828 <br />
									- ����� Email : kkm@knoc.co.kr</td>
								<td>- ������<br />
									- �������<br />
									- �ü���<br />
									- �Ǽ������</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (471-070) ��⵵ ������ ��õ�� 297 <br />
									- TEL : 02) 2204 - 7700 <br />
									- FAX : 02) 2201 - 1654 <br />
									- ����� Email : schulk@knoc.co.kr</td>
								<td>- ������<br />
									- �������</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (449-100) ��⵵ ���ν� ó�α� ȣ�� 517-2 <br />
									- TEL : 031) 329 - 4900 <br />
									- FAX : 031) 339 - 2274 <br />
									- ����� Email : won@knoc.co.kr</td>
								<td>- ������<br />
									- �������</td>
							 </tr>
							 <tr>
								<td class="first">�����</td>
								<td>- �ּ� : (516-932) ���� ��� ��� ������ 612<br />
									- TEL : 061) 360 - 2114 <br />
									- FAX : 061) 363 - 6090 <br />
									- ����� Email : daihun@knoc.co.kr</td>
								<td>- ������<br />
									- �������<br />
									- �ü���<br />
									- �Ǽ������</td>
							 </tr>
							 <tr>
								<td class="first">��������</td>
								<td>- �ּ� : (240-230) ������ ���ؽ� ��ȣ�� 226���� ���򱹰���������� 2�� <br />
									- TEL : (033) 520 - 7800 <br />
									- FAX : (033) 522 - 3219 <br />
									- ����� Email : kimsk@knoc.co.kr</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">���߼�<br />�繫��</td>
								<td>- ADDR : #650, 6th Floor, Petro Tower Bldg., 8 Hoang Dieu St., Ward 1, Vung Tau City, Vietnam <br />
									- TEL : 84 64 511612/13 <br />
									- FAX : 84 64 511614 <br />
									- ����� Email : atthebeginning@knoc.co.kr <br />
									- TEL : 031-380-2623 </td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">����������<br />�繫��</td>
								<td>- �ּ� : (689-890) ��걤���� ���ֱ� �»��� �г��� 400 <br />
									- ����� Email : liuse@knoc.co.kr<br />
									- TEL : (052) 240-4700 <br />
									- FAX : (052) 239-8049</td>
								<td>- ����������<br />
									- ������<br />
									- ����ȯ����<br />
									- ����������<br />
									- �ػ��� </td>
							 </tr>
							 <tr>
								<td class="first">��Ʈ��<br />�繫��</td>
								<td>- Address : 10th floor, Diamond Plaza 34 Le Duan Street, District 1 Ho Chi Minh City, Vietnam<br/>
								- ����� Email : yhsin@knoc.com.vn<br/>
								- TEL : +84-8-825-7808 ext)230<br/>
								- FAX : +84-8-825-7806 </td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">�ε��׽þ�<br />�繫��</td>
								<td>-Address : Gedung BRI II, 17th Floor, JI. Jend. Sudirman No.44-46 Jakarta 10210, Indonesia<br/>
								- ����� Email : ygkim@knoc.co.id<br/>
								- TEL : (62-21) 5793 2517<br/>
								- FAX : (62-21) 5793 2519 </td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">���<br />�繫��</td>
								<td>-Address : Av. Republica de Panama 3531, Oficina 1401, Torre A, San Isidro, Lima, Peru<br/>
								- ����� Email : khk@knoc.co.kr<br/>
								- TEL : (51-1) 222-4772,5059<br/>
								- FAX : (51-1) 222-5947</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">����<br />�繫��</td>
								<td>-Address : 8th Floor, Tolworth Tower Ewell Road, Tolworth Surrey KT6 7EL United Kingdom<br/>
								- ����� Email : jjy@knoc.co.kr<br/>
								- TEL : (44-208) 339 5703<br/>
								- FAX : (44-203) 258 0057</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">���þ�<br />�繫��</td>
								<td>-Address : Embassy of the Republic of Korea 56 Plyushchikha st, Moscow<br/>
								- ����� Email : swshin@knoc.co.kr<br/>
								- TEL : (7-495) 783 2794<br/>
								- FAX : (7-495) 783 2777</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">ī���彺ź<br />�繫��</td>
								<td>-Address : Office 4, 3th fl., "Nurly Tau" 1A 5, Al-Farabi avenue 050059, Almaty, Republic of Kazakhstan<br/>
								- ����� Email : shlee@knoc.co.kr<br/>
								- TEL : (7-3272) 447 030 (Ext. 301)<br/>
								- FAX : (7-3272) 447 031</td>
								<td></td>
							 </tr>
							 <tr>
								<td class="first">����<br />�繫��</td>
								<td>- Address : 58 Street, House No. 15, Haddah Area, PO Box 16955, Haddah, Sanaa, Republic of Yemen<br/>
								- ����� Email : fantazy@knoc.co.kr<br/>
								- TEL : 001-971-50-654-9521<br/>
								- FAX : 001-971-4-2045-651</td>
								<td></td>
							 </tr>
							  <tr>
								<td class="first">����������<br />�繫��</td>
								<td>- Address : Plot 934, Idejo Street, Victoria Island, Logos, Nigeria<br/>
								- ����� Email : sileecap@knoc.co.kr<br/>
								- TEL : 001-234-806-286-2388<br/>
								- FAX : 001-234-1-271-5890</td>
								<td></td>
							 </tr>
							  <tr>
								<td class="first">ĳ����<br />�繫��</td>
								<td>- Address :<br/>
								- ����� Email : jian@knoc.co.kr<br/>
								- TEL : 001-1-403-999-7108<br/>
								- FAX : 001-1-403-269-8081</td>
								<td></td>
							 </tr>
						</tbody>
					</table>
				</div>
				</div>
				<div class="officer1">����� : ��ȹ������ ���������� (��ȭ : 031-380-2216)</div>					
				<div class="infoCheck"><%@include file="/include/satisfy.jsp"%></div>				  
				<!--//��-->
			</div>
		</div>
	</div>
	</div>
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>