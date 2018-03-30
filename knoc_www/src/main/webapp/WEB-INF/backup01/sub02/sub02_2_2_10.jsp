<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","11");
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
					&gt; <span>�濵��Ȳ</span>
                    &gt; <span class="locanow">R&amp;D����</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_2_1.gif" alt="�濵��Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_6_4_ta.gif" alt="R&amp;D����" /></h4>
					
				</div>
				<div class="officer">
					<p class="offtxt">1. ������ �����η� ������Ȳ</p>
					<p class="rtxt">(�� ������ ����, ���� : ��)</p>
					<!--ǥ-->					
					<table class="chart2" summary="������ �����η� ������Ȳ�� �ڻ�, ����, �л�, ��Ÿ���� Ȯ���� �� �ֽ��ϴ�.">
					<caption>������ �����η� ������Ȳ</caption>
					<col width="133px" />
					<col width="100px" />
					<col width="100px" />
					<col width="100px" />
					<col width="100px" />
					<col width="100px" /><col/>
					<thead>
					<tr>
						<th scope="col" class="first">����</th>
						<th scope="col">�ڻ�</th>
						<th scope="col">����</th>
						<th scope="col">�л�</th>
						<th scope="col">��Ÿ</th>
						<th scope="col">��</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">2005��</td>
						<td>8</td>
						<td>13</td>
						<td>8</td>
						<td>-</td>
						<td >29</td>
					</tr>
					<tr>
						<td class="first">2006��</td>
						<td>11</td>
						<td>13</td>
						<td>18</td>
						<td>-</td>
						<td >42</td>
					</tr>
					<tr>
						<td class="first">2007��</td>
						<td>11</td>
						<td>18</td>
						<td>26</td>
						<td>1</td>
						<td >56</td>
					</tr>
					<tr>
						<td class="first">2008��</td>
						<td>12</td>
						<td>22</td>
						<td>44</td>
						<td>1</td>
						<td >57</td>
					</tr>
                    <tr>
						<td class="first">2009��</td>
						<td>14</td>
						<td>27</td>
						<td>54</td>
						<td>2</td>
						<td >97</td>
					</tr>
					<tr>
						<td class="first">2010��</td>
						<td>17</td>
						<td>33</td>
						<td>44</td>
						<td>-</td>
						<td >94</td>
					</tr>
					<tr>
						<td class="first">2011��</td>
						<td>18</td>
						<td>36</td>
						<td>32</td>
						<td>-</td>
						<td>86</td>
					</tr>
					<tr>
						<td class="first">2012��</td>
						<td>13</td>
						<td>41</td>
						<td>41</td>
						<td>-</td>
						<td>95</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->
					<p>* 2009�� �����η� �� 7���� ����Ư�� �������������</p>
					<br /><br />
					<p class="offtxt">2. <a href="/sub06/sub06_2_n1.jsp" style="text-decoration:underline;">��������</a> <span style="font-weight:lighter;font-size:11px;position:absolute;margin-left:5px;">(Ŭ���Ͻø� �ش� �������� �̵��մϴ�.)</span></p>
					<br />





					<!--

					<p class="offtxt">2. ��������������� ������Ȳ (2010�� 2�� ����)</p>
					<p class="conRight2">- �ϵ���� 23��, ����Ʈ���� 24��</p>
					<p class="mL10 mT5">2-1) �ϵ����(H/W) : 23��</p>
					<table class="chart2" summary="��������������� �ϵ���� ������Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>"��������������� �ϵ���� ������Ȳ</caption>
					<col width="151px" />
					<col width="251px" />
					<col width="201px" /><col/>
					<thead>
					<tr>
					<th scope="col" class="first">��ȣ</th>
					<th scope="col">����</th>
					<th scope="col">�뵵</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">1</td>
					<td>T7400</td>
					<td>������ �ùķ��̼�</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>T7500</td>
					<td>������ �ùķ��̼�</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>Dell Precision T7500 (5��)</td>
					<td rowspan="5">ź���� �ڷ��ؼ�/ó��</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>Dell Precision T7400 (5��)</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>Dell Precision T3400</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>Dell Precision 670 (5��)</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>Dell Precision 360</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>SUN Ultra 60</td>
					<td rowspan="3">ź���� �ڷ��ؼ�/ó��</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>SUN Blade 2000</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>SUN Blade 2500 (2��)</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>SGI origin 3400</td>
					<td>ź���� �ؼ�/ó��</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>SGI octane</td>
					<td>ź���� �ؼ�/ó��</td>
					</tr>
					<tr>
					<td class="first">13</td>
					<td>X-PLAN620F</td>
					<td>������</td>
					</tr>
					<tr>
					<td class="first">14</td>
					<td>Nicon LV100PoL</td>
					<td >�����̰�</td>
					</tr>
					<tr>
					<td class="first">15</td>
					<td>Appro Linux</td>
					<td >ź���� �ڷ��ؼ�/ó��</td>
					</tr>
					<tr>
					<td class="first">16</td>
					<td>Blade Server</td>
					<td >ź���� �ڷ�ó��</td>
					</tr>
					<tr>
					<td class="first">17</td>
					<td>HP DesignJet 4000</td>
					<td >�ڷ����</td>
					</tr>
					<tr>
					<td class="first">18</td>
					<td>LG 47LD950</td>
					<td rowspan="2">3D ����ȭ</td>
					</tr>
					<tr>
					<td class="first">19</td>
					<td>LG CF3D</td>
					</tr>
					<tr>
					<td class="first">20</td>
					<td>Dell Precision M4500</td>
					<td >ź���� �ڷ��ؼ�</td>
					</tr>
					<tr>
					<td class="first">21</td>
					<td>HP X9300, IBRIX</td>
					<td >����ڷ� ���</td>
					</tr>
					<tr>
					<td class="first">22</td>
					<td>Dell Precision T1500</td>
					<td >GTL ���ΰ��� �������</td>
					</tr>
					<tr>
					<td class="first">23</td>
					<td>Dell Precision T7400</td>
					<td >ETI ���ΰ��� �������</td>
					</tr>
					</tbody>
					</table>
					<p class="mL10 mT5">2-2) ����Ʈ����(S/W) : 24��</p>
					<table class="chart2" summary="��������������� ����Ʈ���� ������Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>��������������� ����Ʈ���� ������Ȳ</caption>
					<col width="100px" />
					<col width="280px" />
					<col width="200px" />
					<col width="150px" />
					<thead>
					<tr>
					<th scope="col" class="first">��ȣ</th>
					<th scope="col">����</th>
					<th scope="col">����ó</th>
					<th scope="col">�뵵</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">1</td>
					<td>ECLIPSE</td>
					<td>Schlumberger</td>
					<td>������ �ùķ��̼�</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>PIPESIM</td>
					<td>Schlumberger</td>
					<td>NODAL Analysis</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>OFM</td>
					<td>Schlumberger</td>
					<td>���꼺�м� Database</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>Fraccade</td>
					<td>Schlumberger</td>
					<td>�����ļ� �ùķ��̼�</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>ARIES</td>
					<td>Landmark</td>
					<td>���差 DB ����/�����ڷ� �м�</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>PanSystem</td>
					<td>Weatherford</td>
					<td>������� �ؼ�</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>OLGA</td>
					<td>SPT Group</td>
					<td>�ٻ���ü ���� �ùķ��̼�</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>Questor</td>
					<td>IHS Global</td>
					<td>���ߺ�� ����</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>Mbal</td>
					<td>Petroleum Experts</td>
					<td>���������� ���</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>CMG Stars</td>
					<td>CMG</td>
					<td>������ �ùķ��̼�</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>Kingdom</td>
					<td>&nbsp;</td>
					<td>ź���� �ڷ� �ؼ�</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>GeoFrame</td>
					<td>&nbsp;</td>
					<td>ź���� �ڷ� �ؼ�</td>
					</tr>
					<tr>
					<td class="first">13</td>
					<td>Petromod</td>
					<td>&nbsp;</td>
					<td>�����ý��� �𵨸�</td>
					</tr>
					<tr>
					<td class="first">14</td>
					<td>PowerLog</td>
					<td>Fugro-Jason</td>
					<td rowspan="2">Well Log�ڷ� �м�<br />ź���� �ڷ� �ؼ� �� �𵨸�</td>
					</tr>
					<tr>
					<td class="first">15</td>
					<td>Petrel</td>
					<td>Schlumberger</td>
					</tr>
					<tr>
					<td class="first">16</td>
					<td>Petrosys</td>
					<td>&nbsp;</td>
					<td>Mapping & Visualization</td>
					</tr>
					<tr>
					<td class="first">17</td>
					<td>Crystal Ball</td>
					<td>&nbsp;</td>
					<td>���差 �� ����ũ ��</td>
					</tr>
					<tr>
					<td class="first">18</td>
					<td>Traptester</td>
					<td>&nbsp;</td>
					<td>���� ���� �ؼ�/�𵨸�</td>
					</tr>
					<tr>
					<td class="first">19</td>
					<td>BasinMod</td>
					<td>&nbsp;</td>
					<td>��ȭ�км� �𵨸�</td>
					</tr>
					<tr>
					<td class="first">20</td>
					<td>i2i</td>
					<td>&nbsp;</td>
					<td>�ӵ��� ����</td>
					</tr>
					<tr>
					<td class="first">21</td>
					<td>Omega2</td>
					<td>&nbsp;</td>
					<td>ź���� �ڷ�ó��</td>
					</tr>
					<tr>
					<td class="first">22</td>
					<td>Landmark</td>
					<td>&nbsp;</td>
					<td>ź���� �ڷ��ؼ�</td>
					</tr>
					<tr>
					<td class="first">23</td>
					<td>GeoX</td>
					<td>&nbsp;</td>
					<td>���差 �� ����ũ ��</td>
					</tr>
					<tr>
					<td class="first">24</td>
					<td>Aspen Plus</td>
					<td>Aspentech Korea</td>
					<td>GTL process simulation</td>
					</tr>
					
					</tbody>
					</table>

					<p class="offtxt">3. �ֱ� 7�Ⱓ �������߽��� (2004~2010)</p>
					<table class="chart2" summary="�ֱ� 7�Ⱓ �������߽����� 2004����� 2010����� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ֱ� 7�Ⱓ �������߽���</caption>
					<col width="10%" />
					<col width="10%" />
					<col width="55%" />
					<col width="25%" />
					<thead>
					<tr>
					<th scope="col" class="first">��ȣ</th>
					<th scope="col">�⵵</th>
					<th scope="col">������</th>
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">1</td>
					<td rowspan="15">2010</td>
					<td>����-��������Ʈ �������� ���꼺 ������� ����  <br />- ��Ʈ�� 11-2 ������ ��������Ʈ �������� �غ��� ���� ȭ�� ó�����</td>
					<td>Texas Austin Univ</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>������������ ����(Harvest�� Hayter �ڻ꿡 ���� ������ ������ ����)</td>
					<td>������б�</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>��ü������ ����(II)</td>
					<td>KIER (Korea Institue of Energy Research)</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>Creaming curve �м��� ���� �ݷҺ�� ���� �����ý��� �� Ž�� play ����</td>
					<td>&nbsp;</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>ȣ�� �������� ���� �� ���� �������� �����ý��� �𵨸� ����ȭ ���</td>
					<td>&nbsp;</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>�ߵ� ���� ź���� Ž���ڷ� ���� ���� ����</td>
					<td>&nbsp;</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>�ߵ� ���� ź���� Ž���ڷ� ���� ���� ���� (�������� ���޿� ������ ���ػ� ���� ����)</td>
					<td>&nbsp;</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>������ Ž���ɷ� ���� ���� ź���� �Ӽ��м� ���� </td>
					<td>&nbsp;</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>ź���� �ӵ� �𵨸� ����ȭ ���</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>�緡 ��&bull;�������� ������ Ư��ȭ �� �� ����ȭ ��� ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>CTD ���� �ý��� ���� �� ���� �ڸ�ȭ ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>CTD ���� �𵨸� ��� ����</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">13</td>
					<td>���� ���ϻ��� ������� ����ȭ ����</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">14</td>
					<td>���ϻ��� ������ ���� ���󼳺� �������</td>
					<td>������</td>
					</tr>
					<tr>
					<td class="first">15</td>
					<td>�����������κ��� D&amp;O ȸ���� ���� ��ȿ�� SDA ������� ����</td>
					<td>�ѱ����������������</td>
					</tr>
					
					
					
					<tr>
					<td class="first">1</td>
					<td rowspan="26">2009</td>
					<td>������������� �̿��� ������� ����</td>
					<td>��ϴ�</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>��� ���������� ���� �� �ߴ� �ؼ� ���� (��)</td>
					<td>������</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>�ڷ�ó������ ������� ���� (��)</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>���� ������ ����ȭ�� ���� ȿ������ 3���� �ڷ�ó�� ��� ���� ���� (��)</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>CO2, �����Ӹ� �̿��� ȸ���������� (��)</td>
					<td>�ػ罺 A&amp;M Univ</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>����� ������ �� ������ �ùķ��̼� ���� (��)</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>�ɺ�����Ȱ�� �������</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>���� ������ ������� ����</td>
					<td>�ݷҺ�� Ecopetrol</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>���������� ������ ����Ȯ�� ��� ����</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>��ü������ Ȯ�� ���� ����(I)</td>
					<td>���⿬</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>�̻�ȭź�� �������� ��� ����(I)</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>�ε��׽þ� ������</td>
					<td>�ε��׽þ� CGR</td>
					</tr>
					<tr>
					<td class="first">13</td>
					<td>���� ���ϻ��� ������� ����ȭ ����</td>
					<td>�����ְ�</td>
					</tr>
					<tr>
					<td class="first">14</td>
					<td>���ϻ��� ������ ���� ���󼳺� ��� ����</td>
					<td>������</td>
					</tr>
					<tr>
					<td class="first">15</td>
					<td>CTD ���߽ý��� ���� �� ���� �ڸ�ȭ ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">16</td>
					<td>�緡 ��&bull;�������� ������ Ư��ȭ �� �� ȸ������ȭ ��� ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">17</td>
					<td>ź���� �ӵ��𵨸� ����ȭ ���</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">18</td>
					<td>CTD � �𵨸� ��� ����</td>
					<td>�����</td>
					</tr>

					<tr>
					<td class="first">19</td>
					<td>���緡 ź�꿰�� ������ 3D �������� ���� ��� ����</td>
					<td>�����ְ�</td>
					</tr>
					<tr>
					<td class="first">20</td>
					<td>���ϻ��� �����ý��� ��������ȭ �������</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">21</td>
					<td>ź�꿰�� ������ �������� ȸ������ �ùķ��̼� �������</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">22</td>
					<td>���緡 ������ ���������� ���� ������ Ư��ȭ �� ����͸� �������</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">23</td>
					<td>õ�������κ��� FT �ռ����� ���� �� ���հ��� ��� ���� </td>
					<td>�����ְ�</td>
					</tr>
					<tr>
					<td class="first">24</td>
					<td>�ռ������κ��� FT �ռ����� ���� ��� ����</td>
					<td>ȭ�п�</td>
					</tr>
					<tr>
					<td class="first">25</td>
					<td>õ�������κ��� FT �ռ��� �ռ������� ���� ��� ����</td>
					<td>��������</td>
					</tr>
					<tr>
					<td class="first">26</td>
					<td>�������зκ��� DAO ȸ���� ���� ��ȿ�� SDA ������� ����</td>
					<td>���⿬</td>
					</tr>






					<tr>
					<td class="first">1</td>
					<td rowspan="18">2008</td>
					<td>�����6-2������ ������ ����</td>
					<td>�泲��</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>��� �丣���� ������ �������� �� �����ߴ� �ؼ�����</td>
					<td>������</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>�ڷ�ó�� ���� ������� ����(II)</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>���� ������ ����ȭ�� ���� ȿ���� 3���� �ڷ�ó�� ��� ���� ����(I)</td>
					<td>�Ѿ��, �Ѽ���</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>����層����  �� ������ �ùķ��̼� ����(��)</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>�ұԸ� �������� ���߹�� ����</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>���� �������� ȿ������ ���귮 �й��� ����</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>���ϻ��� �������� ���ʿ���(��)</td>
					<td>���⿬, �븲���</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>CO2, �����Ӹ� �̿��� ȸ������ ����(II)</td>
					<td>�߱� �������ȸ��(DOCL)</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>���� ���ϻ��� ������� ����ȭ ����</td>
					<td>���⿬(��Ź���)</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>ź���� �ӵ��𵨸� �� ����ȭ ���</td>
					<td>�����(�����ְ����)</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>CTD ���߽ý��� ���� �� ���� �ڸ�ȭ ����</td>
					<td>���ڿ�(�����ְ����)</td>
					</tr>
					<tr>
					<td class="first">13</td>
					<td>CTD � �𵨸� ��� ����</td>
					<td>�����(�����ְ����)</td>
					</tr>
					<tr>
					<td class="first">14</td>
					<td>�緡 ��, �������� ������ Ư��ȭ �� �� ȸ������ȭ ��� ����</td>
					<td>���ڿ�(�����ְ����)</td>
					</tr>
					<tr>
					<td class="first">15</td>
					<td>���ϻ��� ������ ���� ���󼳺� ��� ����</td>
					<td>������(�����ְ����)</td>
					</tr>
					<tr>
					<td class="first">16</td>
					<td>GTL ���:õ�������κ��� FT�ռ����� ������� ����</td>
					<td>�ѱ����������������,<br/>�ѱ�ȭ�п�����</td>
					</tr>
					<tr>
					<td class="first">17</td>
					<td>�ε��׽þ� �����ڿ� ���翬��</td>
					<td>�ε��׽þ�<br/>�����ڿ���������(CGR)</td>
					</tr>
					<tr>
					<td class="first">18</td>
					<td>������������ �����ڿ� ���翬��</td>
					<td>���ڿ�</td>
					</tr>
					
					
					<tr>
					<td class="first">1</td>
					<td rowspan="12">2007</td>
					<td>�븶�� �Ż��� ������ �ٿ��� ���ټ� ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>����� ���߽÷��� �ϻ� �� ���ؽ����� �ùķ��̼� ����</td>
					<td>���ִ�</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>�ڷ�ó������ ������� ����</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>�ɺ������� AVO ���������� ���� �ڷ���� �������� ����</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>��������������  �̿��� �ӵ��� ���� ����</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>�ھ��ڷ�� �����ڷḦ ������ ������ ��ü������ ����</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>ADCA ����� �̿��� �����꼺 �м�����</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>CO2, �����Ӹ� �̿��� ȸ������ ����</td>
					<td>�ػ罺�ָ���(�̱�)</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>���� ���ϻ��� ���߱�� ����</td>
					<td>�ٹ�Ÿ�ָ�������(ĳ����)<br/>/������</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>GTL���:õ�������κ��� FT�ռ����� ������� ����</td>
					<td>ȭ�п�/���⿬</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>�������̵巹��Ʈ  ������ (1�ܰ�)</td>
					<td>���ڿ�/��������</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>������������ �����ڿ� ���翬��</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">1</td>
					<td rowspan="12">2006</td>
					<td>���� ����� ���߽÷��� ������ȭ���� Ư��</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>ź�꿰 �������� Ư�� �� źȭ���� ���¹�� ����(I)</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>4���� ź���� Ž�� ����(I)</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>Sub-salt ������ ���� �������� ����(I)</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>�ұ��� ������ Ư��ȭ ����(��)</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>�����ļ� ���� �򰡱�� ����(��)</td>
					<td>�ػ罺A&amp;M����(�̱�)</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>�ΰ��Ű�� �̿� ������ġ ����ȭ ��� ����</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>���� ���ߡ��������߱��  ����</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>�̻�ȭź�� Ȱ�� �� ó�б��(I)</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>GTL�������(I)</td>
					<td>ȭ�п�/���⿬</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>���ϼ��� ���� ���ʿ���(I)</td>
					<td>���⿬</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>�������̵巹��Ʈ  ������ (1�ܰ�)</td>
					<td>���ڿ�/��������</td>
					</tr>
					<tr>
					<td class="first">1</td>
					<td rowspan="18">2005</td>
					<td>�ѹݵ� �ֺ��� ������ �ߴް� �����������ɼ�  ����(v)-����JDZ����-</td>
					<td>��ϴ�</td>
					</tr>
					<tr>
					<td class="first">2</td>
					<td>�������� �м���� ����</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">3</td>
					<td>���� �ֿ� �������� ����(VII) -�����ƽþ�����2-</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">4</td>
					<td>���� �ļ� �ĺ��� ���� �� ���� ���� ��� ����</td>
					<td>Texas A&amp;M</td>
					</tr>
					<tr>
					<td class="first">5</td>
					<td>������ �ùķ��̼��� ���� ������������ ����� ���� ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">6</td>
					<td>ź���� �ڷ�ó�� �� AVO Ư���м� ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">7</td>
					<td>������ Ư��ȭ ����</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">8</td>
					<td>GTL��� Ÿ�缺 ����</td>
					<td>���濬/�븲���</td>
					</tr>
					<tr>
					<td class="first">9</td>
					<td>���ϻ��� �������</td>
					<td>�ٹ�Ÿ��(ĳ����)</td>
					</tr>
					<tr>
					<td class="first">10</td>
					<td>�������̵巹��Ʈ  ��� ����</td>
					<td>�����</td>
					</tr>
					<tr>
					<td class="first">11</td>
					<td>ġ�а��� ������ ����</td>
					<td>���ڿ�</td>
					</tr>
					<tr>
					<td class="first">12</td>
					<td>���� �ֿ� �������� ����(��) -�����ƽþ�1-</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">13</td>
					<td>���ϰ���(JDZ)����  ������ ����</td>
					<td>�泲��</td>
					</tr>
					<tr>
					<td class="first">14</td>
					<td>�︪���� �������� ���뿬�� ���� �� ���� ȭ���� ���</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">15</td>
					<td>�ұ��� ������������ waterflooding �򰡱��  ����</td>
					<td>�Ѿ��</td>
					</tr>
					<tr>
					<td class="first">16</td>
					<td>ĳ���� ���ϻ��� ������ ����ȸ�� ��� ����</td>
					<td>�ٹ�Ÿ��(ĳ����)</td>
					</tr>
					<tr>
					<td class="first">17</td>
					<td>�������� ����ȭ ����</td>
					<td>��ü����</td>
					</tr>
					<tr>
					<td class="first">18</td>
					<td>ź���ĸ� �̿��� ������ �𵨸�����</td>
					<td>��ü����</td>
					</tr>
					</tbody>
					</table>


					-->


				</div>
				<!--neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="RND" adminURL="" sessionName="USERSESSION"/-->

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
							<td><strong>���μ� : </strong>�����ȹ�� ���������</td>
							<td><strong>����ó : </strong>031-380-2604</td>
							<td><strong>������ : </strong>2015-09-30</td>
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