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
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_ankor.gif" alt="�̱� ANKOR �ػ�" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_ankor.gif" alt="�̱� ANKOR �ػ� ������" /></div>
                    
                    <p class="rtxt">[2013�� 9����]</p>
					<table class="chart2" summary="�̱� ANKOR �ػ� ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>�̱� ANKOR �ػ� ���� ����</caption>
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
					<th scope="col">�ѱ�������<br />(%(�ۼ�Ʈ))</th>
					<th scope="col">�ѱ�������<br />����</th>					
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">������</td>
					<td>Ankor<br />�ػ�����</td>
					<td>��������</td>
					<td>2008.02.26</td>
					<td>100</td>
					<td>51</td>
					<td>�Ｚ����<br />����������ҽÿ�</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20">�����ִ� �������� �� �Ѱ��� �̱� �߽��ڸ��� ��ġ�� �ִ� Ankor �ػ������� Taylor Energy��κ��� 08�� 3�� �μ��Ͽ� ��ϰ� �ִ� ���걤���̴�.'10�� SS 290 �� '11�� SS 217 ������ �߰��� �μ��Ͽ� �̱� ���������� ���ȸ��(Ankor Energy)�� ���� 6�� ���� 18�������� ��ϰ� �ִ�. ���� ���� 6.1õ�跲(��13�� 12�� ��������)�� �����ϰ� ������,�ֿ� �ü��δ� 17�� �÷���(���� 6��, ���� 11��) �� ���������� ���� �ִ�.  </p>

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
						<td><strong>���μ� : </strong>�������ó ���ֻ�����</td>
						<td><strong>����ó : </strong>031-380-2797</td>
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