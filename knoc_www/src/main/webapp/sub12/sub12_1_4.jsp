<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","12");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","04");
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
				<%@include file="/include/subtop_12.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>���簳�߼���</span>
                    &gt; <span>���ͼҰ�</span>
                    &gt; <span class="locanow">������</span>
				</div>
				<!--// location: end //-->


				<div class="pagetle">
					<h3><img src="/images/info/tit_sub12_1_4.gif" alt="������ " /></h3>
				</div>
				<!--����-->
				<div class="business2">
						<h5 style="font-weight: normal;margin:5px 0 0 10px; ">
						�����������簳�߼��ʹ� �ڻ�� �Ǵ� �����ڰ����� �����ϰ�,
						�۷ι� ��������� �����ϰ� �ִ� �系 ������ ����Ͽ�,<br/> ��ȸ��,
						���������������, ���� ��� �����Ͽ� �ְ��� ���������� ��մϴ�.
						</h5>
						<p style="margin:50px 0 0 45px;"><img src="/images/info/sub012_01_img04.gif" alt="
						�������� ���簳�߼��� ���� KOGS Faculty, Dana, HOC, GTRC, �系 �ڻ� �� ���� ���� �����η�, �������� �������� ���±��(Nautilus, Petroskills),����
						"  style="width:580px; height:469px;  "/></p>

				</div>
				<div style="height:50px; clear:both;"></div>
				<!--//��-->


				<!-- new_officer -->
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
						<td class="contact_team"><strong>���μ� : </strong>����濵ó ����������</td>
						<td class="contact_user"><strong>����� : </strong>��¸�</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2742</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- new_officer -->

		</div>
	</div>

	</div>
    
        <!--// footer: start //-->
		<%@include file="/include/comfooter.jsp"%>
		<!--// footer: end //-->
    </div>
    
</body>
</html>