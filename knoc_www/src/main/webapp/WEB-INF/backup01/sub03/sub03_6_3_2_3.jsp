<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","02");
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
			  <%@include file="/include/subtop_03.jsp"%>
			  <!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>����Ұ�</span>
                    &gt; <span>��������</span>
                    &gt; <span>�����̾߱�</span>
                    &gt; <span class="locanow">�������߰���</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_6_3_2.gif" alt="�������߰���" /></h3>
				</div>
				<!--����-->
               <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_6_3_2.jsp" title="���߼���" ><img src="/images/business/img_tab01.gif" alt="���߼���" /></a></li>
						<li><a href="sub03_6_3_2_1.jsp" title="Ž��ܰ�" ><img src="/images/business/img_tab02.gif" alt="Ž��ܰ�"/></a></li>
						<li><a href="sub03_6_3_2_2.jsp" title="���ߴܰ�" ><img src="/images/business/img_tab03.gif" alt="���ߴܰ�"/></a></li>
						<li><a href="sub03_6_3_2_3.jsp" title="����ܰ�" ><img src="/images/business/img_tab04_on.gif" alt="����ܰ�"/></a></li>
						</ul>
						<div class="mT20"><img src="../images/business/img_sub06_3_2_tab04_01.gif" alt="��������ܰ迡���� �������� ���� �� ���� ������ ���� ������ ����, ��������, ����ü� �������� ���� �۾� ����" /></div>
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
						<td><strong>���μ� : </strong>������������ ������ȹ��</td>
						<td><strong>����ó : </strong>052-216-2508</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
				</table>
			</div>  <!-- new_officer end -->
		  
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>