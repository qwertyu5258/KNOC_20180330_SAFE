<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","08");
	application.setAttribute("gNavMenuDepth3","06");
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
                    &gt; <span>�������</span>
                    &gt; <span class="locanow">�������� �ڷ����</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_9_6.gif" alt="�������� �ڷ����" /></h3>
				</div>
				<!--����-->
				<div class="business5">
					<p>����� �������� ����ڷḦ �ϰ� ���հ����ϸ�, �ڷ���� �ý����� �������� ������ ���Ͽ� ������� ���ټ��� �ڷ�˻��� ��Ȱ�ϵ��� ��ϰ� �ֽ��ϴ�.</p>
					<div>                   
						<ul>   
							<li>
								<dl>
								<dt>E&P�о� ����ڷ� ������Ʈ ����� ����(KOTIS, Studio �� Prosource DB) </dt>									
							    </dl>
							 </li>		                    
							 <li>
								<dl>
								<dt>ź���� Ž���ڷ� ��ȯ (SEG-Y)</dt>									
							    </dl>
							 </li>
							 <li>
								<dl>
								<dt>���߽÷� ���� �� ���� </dt>
								</dl>
							 </li>
							 <li>
								<dl>
								<dt>E&P�о� ��ǻ�� �׷��� �ڷ��ۼ� ����</dt>									
							    </dl>
							 </li>
						</ul>
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
						<td class="write_day"><strong>�ۼ������� : </strong>2016-08-20</td>
						<td class="contact_team"><strong>���μ� : </strong>�������ó ����Ѱ���</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-3503</td>
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