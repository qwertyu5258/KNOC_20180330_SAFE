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
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_namangan.gif" alt="���Ű��ź Namangan-Chust" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_uz.gif" alt="���Ű��źNamangan-Chust ������" /></div>
                    
                    <p class="rtxt">[2015�� 3���� ����]</p>
					<table class="chart2" summary="��� ������/�߽�Ʈ ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>���Ű��ź ������/�߽�Ʈ ���� ����</caption>
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
					
					<th scope="col">�ѱ�������<br />(%)</th>
					
					<th scope="col">��������<br />(%)</th>					
					
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž����</td>
					<td>���Ű��ź Namangan-Chust</td>
					<td>�ѱ���</td>
					<td>2008�� 12��</td>
					<td>100</td>
					<td>50</td>
					<td>SK����,<br /> POSCO,<br />��õ��,<br />SK E&amp;S</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20" style="text-align:justify;">������/�߽�Ʈ ������ ���Ű��ź �ϵ��� �丣���� ���� �Ϻ� Ű�����ź ���������� ��ġ�� ���� ������, ������ �� 4,800 km���̴�.<br />2008�� 11�� Ž������ ü��, 2009�� 5������ Ž���۾��� ���� ���̴�.</p>
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
						<td><strong>����ó : </strong>052-216-3147</td>
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