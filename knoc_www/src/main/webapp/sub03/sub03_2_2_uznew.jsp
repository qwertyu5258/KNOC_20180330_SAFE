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
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_uznew.gif" alt="���Ű��ź West Fergana&Chinabad" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_uz.gif" alt="���Ű��ź West Fergana&Chinabad ������" /></div>
                    
                    <p class="rtxt">[2016�� 6���� ����]</p>
					<table class="chart2" summary="��� ���丣����/�볪�ٵ� ���� ������ Ȯ���� �� �ֽ��ϴ�.">
					<caption>��� ���丣����/�볪�ٵ� ���� ����</caption>
					<col width="70px" />
					<col />
					<col width="70px" />
					<col width="80px" />
					<col width="100px" />
					<col width="100px" />
					<col width="100px" />
					<thead>
					<tr>
					<th scope="col" class="first">����</th>
					<th scope="col">������</th>
					<th scope="col">�����</th>
					<th scope="col">�����<br />�Ű���</th>
					<th scope="col">�ѱ��� ����<br />(%)</th>
					<th scope="col">���� ����<br />(%)</th>		
					<th scope="col">�����������</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">Ž����</td>
					<td>���Ű��ź<br />West Fergana&amp;Chinabad</td>
					<td>�ѱ���</td>
					<td>2010�� 6��</td>
					<td>100</td>
					<td>65</td>
					<td>POSCO,<br />��õ��</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20" style="text-align:justify;">���丣����/�볪�ٵ� ������ ���Ű��ź ���� Ű�����ź ���������� ��ġ�� ���� ������, ������ 2,780 km���̴�. 2010�� 2�� Ž������ ü��, 2011�� 8������ Ž���۾��� ���� ���̴�. 2014�� �ű� ����Ž�� �ڷ� �ؼ� �۾��� �����Ͽ���.</p>
                </div>
				<!--//��-->
		  </div>
		  
		  <!-- new_officer -->
			<div class="new_officer" style="left:2%">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"><strong>�ۼ������� : </strong>2016-07-15</td>
					<td class="contact_team"><strong>���μ� : </strong>Ž����ó �ƽþ�Ž����</td>
					<td class="contact_user"><strong>����� : </strong>���Ƿ�</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-3147</td>
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