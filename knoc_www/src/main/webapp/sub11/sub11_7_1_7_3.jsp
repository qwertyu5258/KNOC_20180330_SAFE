<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","11");

	application.setAttribute("gNavMenuDepth2","07");

	application.setAttribute("gNavMenuDepth3","01");

	application.setAttribute("gNavMenuDepth4","07");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>     
<%@include file="/include/comheader.jsp"%>


<!--// subtopNavi: start //-->
<%@include file="/include/subtopnavi_new.jsp"%>
	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
			  <%@include file="/include/subtop_11.jsp"%>
			  <!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>���̹�ȫ����</span>	
					&gt; <span>���</span>
                    &gt; <span>�������</span>
                    &gt; <span class="locanow">�������߰���</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/child/ttl_sub11_7_1_7.gif" alt="�������߰���" /></h3>
				</div>
				<!--����-->
               <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub11_7_1_7.jsp" title="���߼���" ><img src="/images/child/img_tab01.gif" alt="���߼���" /></a></li>
						<li><a href="sub11_7_1_7_1.jsp" title="Ž��ܰ�" ><img src="/images/child/img_tab02.gif" alt="Ž��ܰ�"/></a></li>
						<li><a href="sub11_7_1_7_2.jsp" title="���ߴܰ�" ><img src="/images/child/img_tab03.gif" alt="���ߴܰ�"/></a></li>
						<li><a href="sub11_7_1_7_3.jsp" title="����ܰ�" ><img src="/images/child/img_tab04_on.gif" alt="����ܰ�"/></a></li>
						</ul>
						<div class="mT20"><img src="../images/child/img_sub06_3_2_tab04_01.gif" alt="��������ܰ迡���� �������� ���� �� ���� ������ ���� ������ ����, ��������, ����ü� �������� ���� �۾� ����" /></div>
						<h5>������ ����(Reservoir Management)</h5>
						<p>���� ���� : ������ �� �������� ������ ���������� ����/�м��Ͽ� ��ܱ� ���귮 ����<br />
						��������ȭ : ������ ���� �� ���� �ý����� ���������� �м��Ͽ� ���귮 ����ȭ(Optimization)</p>
						<h5>��������(Production Enhancement)</h5>
						<p>�߰����� : �������� �߰����� ���߸� ���� ���귮 ����<br />
						������ : ������ �α��� �������� ���� ���� ȸ���� ����<br />
						ȭ���� : ������ü�� ȭ���� ������ �̿��� ���� ȸ���� ����<br />
						�ΰ�ä���� : ������������ �̿��Ͽ� ���귮 ����</p>
					</div>
				</div>
				<!--//��-->
		  </div>
		
		  <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ����</td>
					<td class="contact_user"><strong>����� : </strong>������</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2231</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->
		  
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>