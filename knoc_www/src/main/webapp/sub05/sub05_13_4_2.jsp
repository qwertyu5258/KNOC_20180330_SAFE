<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","14");
	application.setAttribute("gNavMenuDepth3","02");
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
			<!-- contents -->
            <div id="subcnts">
                <%@include file="/include/subtop_05.jsp"%>
                <div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; <span>��������</span> &gt; <span>����������</span> &gt; <span class="locanow">���������Ͱ�����</span>
                </div>				
                <div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/n_img_sub5/ttl_sub05_4_2.gif" alt="���������� ����ȳ�" /></h3>
				</div>
                <div class="information iframe_cle">
				<!-- iframe ���� -->
				<iframe src="https://www.data.go.kr/insttSearch.jsp?insttCode=B410005 " title="���������� ����ȳ�" id="mergerFrame" name="mergerFrame" width="100%" height="800" scrolling="yes" frameborder="0" marginwidth="0" marginheight="0" ></iframe>
				<!-- //iframe ���� -->
				</div>
            </div>
			<!-- //contents -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ��ȹ������</td>
						<td class="contact_user"><strong>����� : </strong>�ѽ¿�</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2202</td>
					</tr>
				</tbody>
				</table>
			</div>
		</div>
    </div>
	<!--// footer: start //-->
	<%@include file="/include/comfooter.jsp"%>
	<!--// footer: end //-->
</div>
</body>
</html>