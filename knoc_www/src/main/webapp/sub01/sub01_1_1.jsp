<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","00");
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
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>CEO</span>
                    &gt; <span class="locanow">CEO�λ縻��</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-20 ���� ] �ۼ���:������-->
				<div class="pagetle">
					<h3><img src="/images/info/tit_sub01_1_1.gif" alt="CEO�λ縻��" /></h3>
				</div>
				<!--����-->				
				<div class="ceo">
					<div class="ceo_greeting">
						<div class="ceo_greeting">
	                	<img src="/images/info/global_knoc.gif" alt="������ �� �̻��� ��ġ�� �����ϴ� ���  Creating Value Beyond Energy �ѱ��������� Ȩ�������� �湮�� �ֽ� ���� �����в� ����帳�ϴ�." />
                        <img src="/images/info/ceo_2014.gif" alt="ceo�λ縻��" longdesc="/longdesc/ceo_greeting.html" class="mt40"/>
                    	</div><!-- ceo_greeting end -->
					</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
						<td class="contact_team"><strong>���μ� : </strong>���� </td>
						<td class="contact_user"><strong>����� : </strong>�ּ���</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2033</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
			
			
		</div>
	</div>
	
	</div>
	
	<!--// footer: start //--> 
	<%@include file="/include/comfooter.jsp"%>
	<!--// footer: end //-->
	
	</div>

</body>
</html>