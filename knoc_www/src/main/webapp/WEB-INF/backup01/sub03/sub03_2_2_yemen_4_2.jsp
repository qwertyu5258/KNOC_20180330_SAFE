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
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_yemen_4_02.gif" alt="���� 4 Ž��" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_yemen_4_20100223.gif" alt="���� 4 Ž�� ������" /></div>
                    
                    <p class="rtxt">[2013�� 6���� ����]</p>
					<table class="chart2" summary="���� 4 Ž�� ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>���� 4 Ž�� ���� ����</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="70px" />
					<col width="50px" />
					<col width="50px" />
					<col width="60px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					
					<th scope="col">������</th>
					
					<th scope="col">�����</th>
					
					<th scope="col">����� �Ű���</th>
					
					<th scope="col">�ѱ�������</th>
					
					<th scope="col">��������</th>					
					
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž����</td>
					<td>���� 4Ž��</td>
					<td>�ѱ���������</td>
					<td>'07.07</td>
					<td>50%</td>
					<td>30%</td>
					<td>�����߰���,<br />��ȭ<br />(Hidden Party)
</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20">���� 4 Ž�籤���� ���� �ߺ� ���� ���Ÿ�� ���� ���� ��ġ�� �����μ� �� 216.8�鸸�跲(����� 61.8�鸸�跲)�� Ž���ڿ����� ����ȴ�. 2D/3D ����Ž�� �ڷ������ �Ϸ�(2009��)�ϰ�, 2010�� Ž���� 2���� ���߿Ϸ��ϰ� ���� Ž���� 2�� ���� �غ� �۾��� �ϰ� �ִ�.
</p>
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
						<td><strong>���μ� : </strong>�����������</td>
						<td><strong>����ó : </strong>031-380-2022</td>
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