<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","03");
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
                    &gt; <span class="locanow">Great KNOC 3020</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-10-25 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_3.gif" alt="GREAT KNOC 3020" /></h3>
				</div>
				<!--����-->				
				<div class="great">
					<h4><img src="/images/info/08_1_2_1title.gif" alt="ĳġ��������" /></h4>
					<dl>
					<dt><img src="/images/info/sub01_3_1img.gif" alt="GREAT KNOC 3020" /></dt>
					<dd><span>GREAT KNOC 3020 : </span>������ ����ȭ ������ ���� ������ ���������� ���� ����� ���ϰ� ǥ���Ͽ���. ���� ���� ���� �̿ܿ� ���ο��� ��� �޴� ��������μ��� ��ü���� �ٽ� �� �� Ȯ���� �� �ֵ��� �������� ���, ����޴� �����, �������� ���, �������� ���, �ŷ��ϴ� ��������� �ǹ̸� ��´�.</dd>
					<dd><span>- GREAT : </span><span>G</span>lobalization, <span>R</span>espect, <span>E</span>thics, <span>A</span>ction, <span>T</span>rust��� 5������ ��ġ�� �����Ͽ� ǥ��</dd>
					<dd><span>- 3020 : </span>���� ����ȭ ��ǥ�޼��� ���� 2012����� �ϻ��귮 <span>30���跲</span>, ���差 <span>20��跲</span> Ȯ����� �跮���� ��ǥ�� ��¡������ ǥ��</dd>
					</dl>
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
						<td><strong>���μ� : </strong>��ȹ������ �濵������</td>
						<td><strong>����ó : </strong>031-380-2215</td>
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