<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>           
<%@include file="/include/comheader.jsp"%>


  <%@include file="/include/subtopnavi_new.jsp"%>
  <!--// subtopNavi: start //-->

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
                    &gt; <span>�ؿܻ��</span>
                    &gt; <span class="locanow">����������Ȳ��</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="����������Ȳ��" /></h3>
				</div>
				<!--����-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>
                    
                   <h4><img src="../images/business/tit_ep_energy.gif" alt="�̱� ep energy" /></h4>
                   <div class="mT10"><img src="../images/business/ep_energy.gif" alt="�̱� ep energy ������" /></div>
                    
                    <p class="rtxt">[2015�� 6���� ����]</p>
					<table class="chart2" summary="�̱� ep energy ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>�̱� ep energy ���� ����</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="70px" />
					<col width="50px" />
					<col width="50px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">������</th>
					<th scope="col">�����</th>
					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
					<th scope="col">�ѱ�������<br />����</th>					
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">������</td>
						<td>EP energy</td>
						<td>Apollo</td>
						<td>12.82</td>
						<td>12.82</td>
						<td>-</td>
					</tr>
					
					</tbody>
					</table>
                        
                    <p class="mT20">����� ��12�� 5�� Apollo�� �� ��Ʈ�ʻ�� ���ҽþ� �����Ͽ� Kinder Morgan�簡 �μ��ϴ� El Paso�� ����κ� ��ȸ���� EP energy�� ���� �� 14.99%�� �μ��Ͽ���, �̱� ���� �ټ��� ������������ ��ϰ� �ִ�. ����, EP��� '14�� 1�� �̱� ���ÿ� ���� �����Ͽ�����, ���� ���� 16õ�跲(��15�� 6�� ����� ����)�� �����ϰ� �ִ�. �̱� EP Energy ��� ������ �̱� �������ڿ� �ٽ��������� ��� �Ը��� ���差/�ڿ����� Ȯ�������� ���� ���� ���ټ��� Ȯ���Ͽ���.</p>
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
						<td><strong>���μ� : </strong>����ó ���ֻ�����</td>
						<td><strong>����ó : </strong>052-216-3730</td>
						<td><strong>������ : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
		  
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>