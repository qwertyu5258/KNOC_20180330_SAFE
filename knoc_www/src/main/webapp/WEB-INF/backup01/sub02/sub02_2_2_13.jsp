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
	application.setAttribute("gNavMenuDepth4","13");
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
                    &gt; <span class="locanow">�űԽü�����</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_2_1.gif" alt="�濵��Ȳ" /></h3>
				</div>

				<style type="text/css">
				.new_invest { width:720px; margin:0 auto; padding-top:40px; margin-bottom:50; }
				.new_invest h4 { margin-bottom:20px; }
				.new_invest h5 { padding:0 0 0 16px; font-size:1em; background:url('/images/directors/icon01.gif') 4px 5px no-repeat; }
				.new_invest ul.tab { margin-bottom:20px; }
				.new_invest div.area { padding:0 0 0 20px; }
				.new_invest div.area table { margin-bottom:30px; margin-top:5px; }
				.new_invest ul.nst1 { margin-left:32px; padding-top:10px; padding-bottom:10px; }
				.new_invest ul.nst1 > li:first-child { }
				.new_invest ul.nst1 > li { margin-bottom:10px; padding-left:9px; background:url('/images/directors/icon02.gif') left 7px no-repeat; }
				.new_invest ul.nst1 > li > ul { padding-top:10px; }
				.new_invest ul.nst1 > li > ul > li { line-height:22px; }
				</style>

				<!--����-->
				<div class="new_invest">
					<h4><img border="0" alt="�űԽü�����" src="/images/management/sub02_2_2_13_ta1.gif"></h4>
					<ul class="tab">
						<li><img id="premier_button1" alt="��������� ����ȭ �Ǽ�" src="/images/management/sub02_2_2_13_tab5r_on.gif" /></li>
						<li><a href="/sub02/sub02_2_2_13_2.jsp"><img id="premier_button1" alt="������� Buoy �� ����-1 ������� �̼�" src="/images/management/sub02_2_2_13_tab4.gif"></a></li>
						<!-- li><a href="/sub02/sub02_2_2_13_3.jsp"><img id="premier_button1" alt="�Ż�� �� �Ǹ�����" src="/images/management/sub02_2_2_13_tab1.gif" /></a></li-->
						<!--li><a href=""><img id="premier_button1" alt="����" src="/images/management/sub02_2_2_13_tab2.gif"></a></li>
						<li><a href=""><img id="premier_button1" alt="����" src="/images/management/sub02_2_2_13_tab3.gif"></a></li -->
					</ul>					

					<h5 class="mT35 mL15">��������� ����ȭ �Ǽ�</h5>

					<p class="rtxt">(����: �鸸��, �ΰ��� ����)</p>

					<div class="area">
						<table  class="chart2" summary="��������� ����ȭ �Ǽ��� ���� ǥ�� ���ڸ�����, ���ھ�(��ΰ���), ���ھ�(��ΰ���), ������ǰ �� �Ը�, ���ڸ���, ���ڱⰣ, ������, ������� ���, �̻�ȸ �ǰ��Ͽ� ���� ������ �����մϴ�.">
						<caption>
						��������� ����ȭ �Ǽ��� ���� ǥ
						</caption>
						<colgroup>
						<col width="40%" />
						<col width="60%" />
						</colgroup>
						<tbody>
						<tr >
							<th scope="row" class="first tdgray"><strong>���ڸ�����</strong></th>
							<td class="align_L">��������� ����ȭ �Ǽ�</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>���ھ�(��ΰ���)</strong></th>
							<td class="align_L">249,584�鸸��</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>���ھ�(��氡��)</strong></th>
							<td class="align_L">249,584�鸸��</td>
						</tr>						
						<tr >
							<th scope="row" class="first tdgray"><strong>������ǰ �� �Ը�</strong></th>
							<td class="align_L">- ����뷮 1,030�� bbl<br />
								- ����/���������, �ҹ�/����/������� ��<br />
								- ������ �� �����ü� ��<br />
								- ���� �� ������� 1��<br />
								- ����, ������, ���Ե��� ��
							</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>���ڸ���</strong></th>
							<td class="align_L">������� ������ũ ö�ſ� ���� ��ü�ü� Ȯ��</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>���ڱⰣ</strong></th>
							<td class="align_L">2016.1.1 ~ 2020.12.31</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>������</strong></th>
							<td class="align_L">��걤���� ���ֱ� �»��� �»�� �Ͽ�</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>������� ���</strong></th>
							<td class="align_L">��ü�ڱ�</td>
						</tr>
						<tr >
							<th scope="row" class="first tdgray"><strong>�̻�ȸ �ǰ���</strong></th>
							<td class="align_L">2015�� 10�� 05��</td>
						</tr>											
						</tbody>
						</table>
					</div>

					<h5 class="mT35 mL15">�����������</h5>
					<ul class="nst1">
						<li>�� ���ھ��� �ڱ��ں��� 10%(�ڱ��ں��� ���� ��� �ں��Ѱ��� 5%) �̻��̰ų� 1,000��� �̻��� �űԽü�����, �ü�����, �Ǵ� �������� �ż��� ���� ������ ���� ���, ������ ���� 14�� �̳� ����</li>
						<li>���ʼ���� ���رݾ� �̴޷� �������� �ʾҴ� �ϴ���, ���� ����ݾ��� ���رݾ� �̻��̸� ���رݾ� ���� ������ �������� 14�� �̳� ����</li>
					</ul>

					<h5 class="mT35 mL15">������� �ۼ�����</h5>
					<ul class="nst1">
						<li><strong>���հ��� ���ؿ� ����</strong></li>
						<li><strong>��Ÿ ���� ����</strong></li>
						<li><strong>���ھ�(��ΰ���)�� ���ʰ�ȹ �Ǵ� �����ȹ ���� �ݾ���</strong></li>
						<li><strong>���ھ�(��氡��)�� ���ʰ�ȹ �Ǵ� �����ȹ ���� �ݾ����� ������� ���� ���� �ݿ��� �ذ� ��� �ݾ��� �������� ���� ���� ������</strong></li>
						<li><strong>���� ���ھ��� 306,545�鸸���̾����� �ش� ����� ��� �Ϸ�� ���Ͽ� 249,584�鸸������ ������</strong></li>
						<li><strong>������ǰ �� �Ը�, ���ڱⰣ ���� ���� ���� ������ ���� ���� ����</strong></li>
						<li><strong>�̻�ȸ �ǰ����� �����̻� ������ ����</strong></li>
					</ul>				
					
				</div>

				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>����ü�ó �Ǽ������</td>
							<td class="contact_user"><strong>����� : </strong>�赿��</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-5328</td>
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