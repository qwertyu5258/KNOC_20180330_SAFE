<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","05");
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
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵�Ұ�</span>
                    &gt; <span class="locanow">�����濵������</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_1_5.gif" alt="�����濵������" /></h3>
				</div>
				<!--����-->
				<div class="moralsOrgan">
                	<div style="width:680px;"></div>
               	<span style="width:680px;"><img src="/images/management/img_moralsOrgan00.gif" alt="�����濵 ������ �̹���" longdesc="/sub02/sub02_1_1_5_desc.html" /></span> </div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-01</td>
							<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2126</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>