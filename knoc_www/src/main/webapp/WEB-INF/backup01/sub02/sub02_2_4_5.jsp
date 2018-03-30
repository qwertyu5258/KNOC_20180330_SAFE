<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","04");
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
					&gt; <span>�����ڿ���Ȳ</span>
                    &gt; <span class="locanow">���Ի������</span>
				</div>
				<!--// location: end //-->

				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_4.gif" alt="�����ڿ���Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_4_7.gif" alt="���Ի�� ����"/></h4>
					<p class="rtxt">(���� : õ��,��)</p>
                	<!--ǥ-->
					<table class="chart3" summary="�ѱ��������� ������ ���Ի�� ���� ��Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
						<caption>
						�ѱ��������� ���Ի�� ���� ��Ȳ
						</caption>
						<col width="170px" />
						<col width="70px" />
						<col width="70px" />
						<col width="70px" />
						<col width="70px" />
						<col width="70px" />
						<col width="70px" />
						<thead>
							<tr>
								<th scope="col" class="first">����</th>
								<th scope="col" class="alice">2011�� ���</th>
								<th scope="col" class="alice">2012�� ���</th>
								<th scope="col" class="alice">2013�� ���</th>
								<th scope="col" class="alice">2014�� ���</th>
								<th scope="col" class="alice">2015�� ���</th>
								<th scope="col" class="alice">2016�� ����</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">�⺻��</th>
								<td>27,133</td>
								<td>26,300</td>
								<td>26,300</td>
								<td>26,300</td>
								<td>26,747</td>
								<td>26,747</td>
							</tr>
							<tr>
								<th scope="row">��������</th>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<th scope="row">��������</th>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<th scope="row">�޿��� �����Ļ���</th>
								<td>2,100</td>
								<td>2,100</td>
								<td>2,100</td>
								<td>2,100</td>
								<td>2,100</td>
								<td>2,100</td>
							</tr>
							<tr>
								<th scope="row">�濵�� ������</th>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<th scope="row">��Ÿ �����󿩱�</th>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<th scope="row">�հ�</th>
								<td>29,233</td>
								<td>28,400</td>
								<td>28,400</td>
								<td>28,400</td>
								<td>28,847</td>
								<td>28,847</td>
							</tr>
							<tr>
								<th scope="row">�������� ��</th>
								<td>93</td>
								<td>96.75</td>
								<td>33</td>
								<td>171.5</td>
								<td>4</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
					<!--//ǥ-->
					<!-- p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">
					���ñ��� : ��13�� ������ �� ���ؿ����� �������<br />
 					- ���Ի���� ����, �繫��, ��������, ������ڸ� �������� �ۼ�<br />
					</p -->
					<p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">* �濵�� �������� ��� ���ؿ��� ������ �濵�� ��� ��Ȯ������ 0���� ����<br />
					�� ���Ի�������� ����, �繫��, ��������, ������ڸ� ����<br />
					�� ���Ի���� ���� ��쿡��, ���Ի���� �ִ� ��츦 �����Ͽ� ����</p>
					 <p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">* ���Ի���� ���߿� ä��Ǿ� ���� ������ 1�� �̸��� ���, 1���� �������� ���ް����� �ݾ����� ȯ��<br />
					 �� �⺻��, �������� �� �׸� ������ �ӿ������� ����</p>
				</div>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-03-31</td>
							<td class="contact_team"><strong>���μ� : </strong>����濵ó �����Ļ���</td>
							<td class="contact_user"><strong>����� : </strong>���ȣ</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2769</td>
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