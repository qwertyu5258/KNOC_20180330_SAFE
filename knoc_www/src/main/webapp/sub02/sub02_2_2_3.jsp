<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>        
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","07");
	application.setAttribute("gNavMenuDepth4","05");	
//	application.setAttribute("gNavMenuDepth3","02"); �濵���� �޴�����
//	application.setAttribute("gNavMenuDepth4","03");
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
                    &gt; <span class="locanow">���ȹ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-10-23 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_1.gif" alt="�Ϲ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer2">
					<h4><img alt="���ȹ" src="/images/management/sub02_2_1_9_ta2.gif"></h4>
					<p class="offi_txt">�ٰ� : ��������� ��� ���� ���� ��42��</p>
					<h5>1. 2016�⵵ �⺻����</h5> 
					<dl>
						<dt>�������� ���� �濵 ���� �غ��� ���� ������ ����濵 ����</dt>
						<dd>�������� �����Ͽ� ��ü �������� ������ ��� �</dd>
						<dd>������ ������ ��������� ���� �м����� �ں����� ���� ��ȭ</dd>
						<dd>������� ������ ���� �߰� ��� ���� �� ������ ��� ���</dd>
					</dl>
					<dl>
						<dt>��� �� ü�� ������ ���� ���� ���� ����</dt>
						<dd>�������� ������ ����� ���� �ڱ� ���� ������ ����</dd>
						<dd>�������� Ž�������� �߰� ���差 Ȯ�� �� Ž��ս� �ּ�ȭ</dd>
						<dd>�ڻ� ���������� �ʼ���� �߽� ��� ����</dd>
					</dl>
					<dl>
						<dt>�۷ι� ���հ濵�� �濵 ȿ��ȭ ���� ����</dt>
						<dd>��ȸ���� �ڱݼ��� �� ����ȿ���� ������ ���� �繫���� ��ȭ</dd>
						<dd>���������� ȿ���� ������ ���� ���հ濵ü�� ��ȭ</dd>
						<dd>���꼺 ��� �� �濵 ȿ���� ���� ���� �������μ��� ����</dd>
					</dl>
				

					<h5>2. ������ǥ</h5>
					<p class="st1">- ������ǥ �� ü��</p>
					<div class="img">
						<img alt="������ǥ �� ü��" src="/images/management/img_sub2_2_2_3_150319.jpg">
						<div class="blindtext">
							<dl>
								<dt>�̼�</dt>
								<dd>������ ������ ������ ���� ���ο��� ����� ������� ����</dd>
							</dl>
							<dl>
								<dt>����</dt>
								<dd>������ �� �̻��� ��ġ�� �����ϴ� ���</dd>
							</dl>
							<dl>
								<dt>������ǥ</dt>
								<dd>����ȭ�� ���� ���� ����</dd>
							</dl>
							<dl>
								<dt>��������</dt>
								<dd>
									<dl>
										<dt>T. R. I.</dt>
										<dd>
											<ul>
												<li>Tech-oriented - (������ ���� �߱�)</li>
												<li>Resource based - (�ڻ��� ȿ���� �)</li>
												<li>Integrated globally - (�۷ι� ���� �濵)</li>
											</ul>
										</dd>
									</dl>
								</dd>
							</dl>
							<dl>
								<dt>��������</dt>
								<dd>
									<ul>
										<li>
											<ul>
												<li>��� ��� Ž�� ����</li>
												<li>���߻����ڻ� ȿ���� �</li>
												<li>�ż��� ��� ���� ��ȭ</li>
											</ul>
											<span>�������߻������� ����</span>
										</li>
										<li>
											<ul>
												<li>���������ȹ ���� ����</li>
												<li>���Ͼ� ��������� ����</li>
												<li>�����ڻ� Ȱ�� �ٰ�ȭ</li>
											</ul>
											<span>���� ������� ��ȭ</span>
										</li>
										<li>
											<ul>
												<li>���� �濵ü�� ����</li>
												<li>�繫���� ��ȭ</li>
												<li>KNOC 3.0+</li>
											</ul>
											<span>�濵ȿ���� ����</span>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>

					<h5>3. �ֿ� ��� ��ȹ</h5>
					<!--ǥ-->
					<table summary="2015�⵵ �ֿ� ��� ��ȹ�� ���� ǥ�� ���� ��ȹ�� ���� ������ �����մϴ�." class="chart2">
						<colgroup>
						<col width="25%">
						<col width="25%">
						<col width="25%">
						<col width="25%">
						</colgroup>
						<thead>
							<tr>
								<th class="first" scope="col" colspan="3">�� ��</th>
								<th scope="col">�� ȹ</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="first tit" rowspan="6"><strong>�������߻��</strong></th>
								<td class="tx_ce" rowspan="3">����</td>
								<td class="tx_ce">�ؿ� ���귮</td>
								<td>75.7�鸸�跲</td>
							</tr>
							<tr>
								<td class="tx_ce">���� ���귮</td>
								<td>0.8�鸸�跲</td>
							</tr>
							<tr>
								<td class="tx_ce">���귮 ��</td>
								<td>76.6�鸸�跲</td>
							</tr>
							<tr>
								<td class="tx_ce" rowspan="2">Ž��</td>
								<td class="tx_ce">���߸� ���� ���差 Ȯ��</td>
								<td>4�鸸�跲</td>
							</tr>
							<tr>
								<td class="tx_ce">�ű� Ž���ڿ���</td>
								<td>27�鸸�跲</td>
							</tr>
							<tr>
								<td class="tx_ce">���߼�</td>
								<td class="tx_ce">���������ϼ�</td>
								<td>181��</td>
							</tr>
							<tr>
								<th class="first tit" rowspan="3"><strong>����������</strong></th>
								<td class="tx_ce" colspan="2">������ ����</td>
								<td>1,416õ�跲</td>
							</tr>
							<tr>
								<td class="tx_ce" colspan="2">������ Ʈ���̵�</td>
								<td>15�鸸�跲</td>
							</tr>
							<tr>
								<td class="tx_ce" colspan="2">�������������</td>
								<td>0</td>
							</tr>
						</tbody>						
					</table>
					<!--//ǥ-->
				</div>


				</div>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó �����濵��</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2247</td>
						</tr>
					</tbody>
				</table>

				</div><!-- new_officer end -->
				<neo:neoboardFacade parentUri="<%=request.getServletPath()%>" mode="list" bid="MANAGE" adminURL="" sessionName="USERSESSION"/>
							
				<!-- div class="infoCheck"><div style="clear:both ; height:20px ;"></div><%@include file="/include/satisfy_link.jsp"%></div-->
				<!--//��-->
			</div>
		</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>