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
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_krg.gif" alt="�̶�ũ Bazian" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_krg_bzian.gif" alt="�̶�ũ Bazian������" /></div>
                    
                    <p class="rtxt">[2013�� 12���� ����]</p>
					<table class="chart2" summary="�̶�ũ KRG BAZIAN ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>�̶�ũ KRG BAZIAN ���� ����</caption>
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
					<td class="first">Ž����</td>
					<td>�̶�ũ Bazian</td>
					<td>��������</td>
					<td>'07.11</td>
					<td>100</td>
					<td>73.38</td>
					<td>�뼺, ��õ��,<br />������, GS Ȧ����</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20">�̶�ũ �Ϻ� ���� ������ ��ġ�� Bazian������, 2007�� 11�� �̶�ũ ���� ��ġ ���ο� ���깰 �й����� ü���ϰ� ������ ����Ͽ���. �� ������ �ѱ��ܼҽÿ� ���ֻ�� ������ KNOC Bazian Ltd.�� ��ϰ� ������, ���ֱ����� ��������(73.38%)�� ����Ͽ� �뼺(8.8%), ��õ��(8.8%), ������(4.43%), GSȦ����(4.43%)�� �����ϰ� �ִ�. 2009�� 10������ 2010�� 8������ ù Ž����� �����Ͽ� źȭ����(���� �� ����)������ Ȯ���Ͽ�����, 2013�� 6�����ʹ� �� ��° Ž���� ���߸� ���� ���̴�</p>
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
						<td><strong>���μ� : </strong>Ž����ó �ƽþ�Ž����</td>
						<td><strong>����ó : </strong>031-380-2774</td>
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