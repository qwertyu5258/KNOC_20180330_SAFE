<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","06");
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
                    &gt; <span>�濵����</span>
					&gt; <span>�繫��Ȳ</span>
                    &gt; <span class="locanow">�㺸������Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_3.gif" alt="�繫��Ȳ" /></h3>
				</div>
						
				<!--����-->
				<div class="officer">
			
				<!--ǥ-->
					<table class="chart2" summary="�㺸������Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�㺸������Ȳ</caption>
					<col width="200px" />
					<col width="400px" />
					<thead>
					<tr>
					<th scope="col" class="first">ä����</th>
					<th scope="col">Dana Petroleum Plc �� �� ��ȸ���Ϻ�</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="first">����</td>
						<td>���ӱ��</td>
					  </tr>
					<tr>
						<td class="first">�㺸�����ܾ�(����: �鸸��)</td>
						<td>724,296�鸸�� </td>
					  </tr>
					<tr>
						<td class="first">�㺸�����Ⱓ</td>
						<td>2013.12.13~2018.12.13</td>
					  </tr>
					<tr>
						<td class="first">�㺸�������</td>
						<td>�����װ��������ڻ� ��</td>
					  </tr>
					<tr>
						<td class="first">���</td>
						<td>Credit Facilities ���� ����</td>
					  </tr>
					</tbody>
					</table>
					<div style="text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">
					* ���ñ��� : ��15�� 12���� ���� <BR />
					</div>
				</div>
				
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2015-12-31</td>
							<td class="contact_team"><strong>���μ� : </strong>�繫ó ȸ����</td>
							<td class="contact_user"><strong>����� : </strong>�̰���</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2459</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>					
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>