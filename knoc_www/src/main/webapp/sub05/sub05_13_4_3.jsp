<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","14");
	application.setAttribute("gNavMenuDepth3","03");
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
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; <span>��������</span> &gt; <span>����������</span> &gt; <span class="locanow">����������������û</span>
                </div>				
                <div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/n_img_sub5/ttl_sub05_4_3.gif" alt="���������� ������û" /></h3>
				</div>
                <div class="information">
					<p><img src="../images/information/n_img_sub5/img_sub5_4_3_1.gif" alt="���������� �ΰ� Ȱ���� ���� �ű� ����Ͻ��� ���ڸ� â���� ���� ���������͸� �����ϰ� �ֽ��ϴ�." /></p>
					<table class="chart2 mT20" summary="�ѱ��������� ���������� Ȱ����">
                	<caption>�ѱ��������� ���������� Ȱ���� ����</caption>
                	<tbody>
                		<tr>
                			<th scope="row" class="first"><p class="mT5 mR20"><img src="../images/information/n_img_sub5/img_sub5_4_3_2.gif" alt="" /></p></th>
                			<td class="tdleft">
	               				<dl class="list mL10">
									<dt>�ѱ�����ȭ����� ��������������</dt>
									<dd class="noBack">���ѹα��� ������ �����ϰ� �ִ� �پ��� ���������� ���ο� �����ϰ� �̸� ���ϰ� �ս��� Ȱ���� �� �ֵ��� �ѱ�����ȭ����� ���������������� ��ϰ� �ֽ��ϴ�. ���������������� ���Ͻø� ���������������� �̿��Ͽ� ��û�Ͽ� �ֽñ� �ٶ��ϴ�.<br />
									<a href="https://www.data.go.kr/subMain.jsp#/L2NvbW0vbG9naW4vbG9naW4vbG9naW5PcGVuJEBeMTMybTMx" target="_blank" title="��â"><img src="../images/information/n_img_sub5/btn_link2.gif" alt="���������� ��û �ٷΰ���" /></a></dd>
								</dl> 
							</td>	
                		</tr>
                		</tbody>
                		</table>
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