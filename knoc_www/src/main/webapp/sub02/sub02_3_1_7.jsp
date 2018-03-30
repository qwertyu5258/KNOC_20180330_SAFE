<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","03");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","07");
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
					&gt; <span>��ȸ����</span>
					&gt; <span>��ȸ����</span>
                    &gt; <span class="locanow">����ܼ���</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_3_1_7.gif" alt="����ܼ���" /></h3>
				</div>
				<!--����-->
				<div class="social">
                	<div class="oath01">
						<img src="/images/management/txt_oath.gif" alt="�츮�� ������ ������ ����Ȱ���� ���Ͽ� ����� ������ ��ġ�� ������ ��ȸ, ���Բ� ���Ҿ� ��� �Ƹ��ٿ� ����ü ���ٱ⿡ ���弭 ���� ���� �����ϸ鼭 ������ ���� �����մϴ�." />
					</div>
					<ol>
					<li><img src="/images/management/txt_oath01.gif" alt="�츮�� ���� ���� �ܰ�ɰ� �ΰ������ �������� ������ ����Ȱ���� �ϰڽ��ϴ�." /></li>
					<li><img src="/images/management/txt_oath02.gif" alt="�츮�� ������ ǰ���� â���� �������� ������ ����Ȱ���� ���ϰڽ��ϴ�." /></li>
					<li><img src="/images/management/txt_oath03.gif" alt="�츮�� ����Ȱ���� ���� ����� ������ �ٸ� ������� �� �Ǵ� �ൿ�� ���� �ʰڽ��ϴ�." /></li>
					<li><img src="/images/management/txt_oath04.gif" alt="�츮�� �׻� ����� �纸�� ������ ������ �ϻ��Ȱ�� ���������� �̾������� �ϰڽ��ϴ�." /></li>
					</ol>
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-11-25</td>
							<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ���������</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2626</td>
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