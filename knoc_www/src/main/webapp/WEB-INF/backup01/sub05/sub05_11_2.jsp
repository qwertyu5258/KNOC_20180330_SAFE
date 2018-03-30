<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","07");
	application.setAttribute("gNavMenuDepth2","04");
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
			<div id="subcnts">
				<%@include file="/include/subtop_07.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>���</span>
                    &gt; <span>����������</span>
                    &gt; <span class="locanow">�������̹�</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/child/ttl_sub07_4_2.gif" alt="�������̹�" /></h3>
				</div>
				<!--����-->
				<div id="substar">
					<ul class="tab">
                    <li><a href="sub07_4_2.jsp"><img src="/images/child/tab_sub07_4_2_1r.gif" alt="��ĥ�ϱ�"/></a></li>
					<li><a href="sub07_4_2_1.jsp"><img src="/images/child/tab_sub07_4_2_2.gif" alt="��������"/></a></li>
					<li><a href="sub07_4_2_2.jsp"><img src="/images/child/tab_sub07_4_2_3.gif" alt="���������"/></a></li>
					</ul>
					<!--�Խ���-->
					<table cellspacing="0" cellpadding="0" border="0" class="viewtype_noline mT10" summary="��ĥ�ϱ� ���̸� ��� �� �ֽ��ϴ�.">
					<caption>��ĥ�ϱ� ���̹�</caption>
					<colgroup>
					<col width="160px" />
					<col width="520px" />
					</colgroup>
					<tbody>
                        <tr>
							<th scope="row" class="vTop" rowspan="3">
							<div class="imgbg"><img src="/upload/neoboard/PETRO/img02_color02.jpg" alt="�ѱ��������� �ǹ� �̹���" /></div></th>
							<td style="vertical-align:top"><div class="padd10">�ѱ��������� �ǹ��� ������ ���ּ���</div></td>
						</tr>
						<tr>
							<td>�ѱ���������� �����ڿ� ������ �������� ������ �����ϱ� ���� 1979�⿡ �����Ǿ� �����ڿ��� Ž�� �� ����, ����� ������ ����Ͽ� �Խ��ϴ�. </td>
						</tr>
						<tr>
							<td class="textri">
							<div class="textri"><a href="/upload/neoboard/PETRO/coloring01.zip" title="�ѱ��������� �ǹ� �̹��� �����ϱ�"><img src="/images/child/btn_dataok.gif" alt="�ѱ��������� �ǹ� �̹��� �����ϱ�" /></a>&nbsp;<a href="#" title="�ѱ��������� �ǹ� �̹��� �μ��ϱ�(��â)" onclick="window.open('/upload/neoboard/PETRO/coloring_print.html','ocookie','scrollbars=yes,menubar=no,width=632,height=600')"><img src="/images/child/btn_print.gif" alt="�ѱ��������� �ǹ� �̹��� �μ��ϱ�(��â)" /></a></div></td>
						</tr>
						<tr>
							<th scope="row"  class="vTop" rowspan="3">
							<div class="imgbg"><img src="/upload/neoboard/PETRO/img02_color01.jpg" alt="��Ʈ���ɰ� �ٴ� ���� �̹���" /></div></th>
							<td style="vertical-align:top"><div class="padd10">��Ʈ���ɰ� �ٴ� ������ ��������.</div></td>
						</tr>
						<tr>
							<td>�츮���� ����ؿ��� ���ʷ� ������ �߰ߵ� 6-1������ ���� ���� �̹����� ����ȭ �ؼ� �¾ ��Ʈ����! ���� ��Ʈ���ɰ� �ٴٷ� ������ ����������.  </td>
						</tr>
						<tr>
							<td class="textri">
								<div class="textri"><a href="/upload/neoboard/PETRO/coloring02.zip" title="��Ʈ���ɰ� �ٴ� ���� �̹��� �����ϱ�"><img src="/images/child/btn_dataok.gif" alt="��Ʈ���ɰ� �ٴ� ���� �̹��� �����ϱ�" /></a>&nbsp;<a href="#" title="��Ʈ���ɰ� �ٴ� ���� �̹��� �μ��ϱ�(��â)" onclick="window.open('/upload/neoboard/PETRO/coloring_print2.html','ocookie','scrollbars=yes,menubar=no,width=632,height=600')"><img src="/images/child/btn_print.gif" alt="��Ʈ���ɰ� �ٴ� ���� �̹��� �μ��ϱ�(��â)" /></a></div></td>
						</tr>
						</tbody>
					</table>
                </div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>