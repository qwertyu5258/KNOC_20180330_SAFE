<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","03");
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
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵�Ұ�</span>
                    &gt; <span class="locanow">�����濵 ��������</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_1_3.gif" alt="�����濵 ��������" /></h3>
				</div>
				<!--����-->				
				<div class="morals">
					<div>
						<img src="/images/management/sub02_1_1_3_img.gif" alt="�����濵��������"/>
						<ol class="blindtext">
						<li>���� ���� : ������ �� �̻��� ��ġ�� �����ϴ� ��� Explore Tomorrow</li>
						<li>�ٽɰ�ġ : ����, ����, ���, ����������</li>
						<li>�����濵���� : "KNOC �������, �ູ������ Ŭ�� ��������"</li>
            <li>�����濵������ǥ : "�۷ι� �ְ������ �����濵 ��õ [Global B.E.S.T Practice]]"</li>
            <li>�����濵 3�� �������� 
            	<ol>
              	<li>��� : ������ ������ ������ ���� �۷ι� ������ ��������</li>
                <li>���� : ��Ģ�� �ŷڿ� ����� ���� �����濵 �ý��� �</li>
                <li>��ȭ : ���� &middot; å���߽� �� ����� ������ ��õ�ϴ� ������ȭ ����</li>
              </ol>
            </li>
            <li>������� : 16�� �������� 26�� ������</li>
						</ol>
					</div>
 <!--                	<table class="chart1" summary="������ �����濵 ���������� �ܰ躰�� Ȯ���� �� �ֽ��ϴ�.">
						<caption>������ �����濵 ��������</caption>
						<col width="60px" />
						<col width="140px" />
						<col width="250px" />
						<col width="250px" />
						<thead>
							<tr>
								<th scope="col" class="first">����</th>
								<th scope="col">�����濵 Ȯ�Ŵܰ�</th>
								<th scope="col">�����濵 Ȱ��ȭ �ܰ�</th>
								<th scope="col">�����ġ ���� �ܰ�</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="first">��   ��</td>
								<td>�����濵�ý��� ������ ���� �����ǽ��� ��Ȱȭ</td>
								<td>������õ�� ���� ��� �̹��� ���� �� �ŷڹ޴� ��������μ��� ���� ����</td>
								<td>�����濵�� �������� ȸ���� ������ �� ���� ���� �濵�� ������ ����޴� ������� ����</td>
							</tr>
							<tr>
								<td class="first">��   ǥ</td>
								<td>������ ���� �缺</td>
								<td>�����濵 �ý����� �۷ι� ���Ĵٵ� ����</td>
								<td>����޴� �����</td>
							</tr>
						</tbody>
					</table>
 -->
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2126</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>