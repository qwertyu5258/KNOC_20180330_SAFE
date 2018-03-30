<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","10");
	application.setAttribute("gNavMenuDepth3","00");
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
					&gt; <span>�����ȭ</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-10-25 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub10_00.gif" alt="�����ȭ" /></h3>
				</div>
				<!--����-->				
				<div class="cul_intro">
					<p class="blindtext">������ Ŭ���� �ڼ��� ������ �� �� �ֽ��ϴ�.</p>
                    <ul>
                    <li class="cul_link01"><a href="sub01_12_2.jsp"><span class="blindtext">��ó����� - WORK - KNOC WAY</span></a></li>
                    <li class="cul_link02"><a href="sub01_10_1.jsp"><span class="blindtext">��� - MISSION - ������ ������ ������ ���� ���ο��� ����� ������� ����</span></a></li>
                    <li class="cul_link03"><a href="sub01_11_1.jsp"><span class="blindtext">7�� �濵��Ģ - BUSINESS</span></a></li>
                    <li class="cul_link04"><a href="sub01_10_2.jsp"><span class="blindtext">���� - VISION - ������, �� �̻��� ��ġ�� �����ϴ� ���</span></a></li>
                    <li class="cul_link05"><a href="sub01_12_1.jsp"><span class="blindtext">�ٽɰ�ġ - CORE VALUES</span></a></li>
                    </ul>
				</div>	 
				<!--//��-->
			
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ����</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2228</td>
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