<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","11");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","04");
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
				<%@include file="/include/subtop_11.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>���̹�ȫ����</span>	
					&gt; <span>���</span>
                    &gt; <span>�������</span>
                    &gt; <span class="locanow">�Ʋ���!����!</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/child/ttl_sub07_2_3_a3.gif" alt="�Ʋ���!����!" /></h3>
				</div>
				<!--����-->
				<div class="child">
					<div>
                    
						<div class="tabCon2">
							<h4 class="mT0"><img src="/images/child/tab_sub07_2_2_2_1.gif" alt="�츮����� ������ �ؿ��������� �ſ� �����ϴ�." /></h4>
							<ol>
								<li><strong>1. ����� ���� ���ݴ� Ƚ���� ���Խô�.</strong>
								<p>����� ���� ���� �ñⰡ ���������� ������� ���� ���¼Ҹ��� Ŀ���ϴ�.<br/>
									����ȿ�� : - ���� 70�� - ���� 840�� - ���� 126���</p></li>
								<li><strong>2. ������ ��ǳ�⸦ ����սô�.</strong>
									<p>����ö 2��4�� ���̿��� ������ ����� �����ϰ� ��ǳ�⸦ �̿��սô�.<br/>
									����ȿ�� : - ���� 500�� - ���� 6,000�� - ���� 480���</p></li>
								<li><strong>3. ��ǳ�� ǳ���� �Ѵܰ辿 ���߾� ����սô�.</strong>
									<p>��ǳ��� ���߾� ������ ���� 10W ������ ���¼Ҹ� ���� ���Ƿ� �����ϸ� ���ϰ� ����ϵ��� �սô�.<br/>
									����ȿ��(����ö 3����) : - ���� 150�� - ���� 450�� - ���� 9���</p></li>
								<li><strong>4. �������� ���� �� �¼��� ����� ���Խô�.</strong>
								<p>�¼��� �����µ��� �ϰ� ������ �����⸦ �̿��սô�.<br/>
								����ȿ�� : - ���� 500�� - ���� 6,000�� - ���� 90���</p></li>
								<li><strong>5. �������� �Ʋ����� �� �̿��սô�.</strong>
								<p>���� Ʋ����� ��ġ��, �鵵�� ���� ����, �� ������ �����ô�.<br/>
								����ȿ�� : - ���� 788�� - ���� 9,456�� - ���� 709���</p></li>
								<li><strong>6. TV�� �ʿ��� �ð��� ��û�սô�.</strong>
								<p>���������� TV�� �ѳ��� �ʵ��� �սô�.<br/>
								����ȿ�� : - ���� 230�� - ���� 2,800�� - ���� 67���</p></li>
								<li><strong>7. ��ǻ�͸� ���� ���� ���� ���ӽô�.</strong>
								<p>10���̻� ������� ���� ���� ������ ���δ� ���� �����ϴ�.<br/>
								����ȿ�� : - ���� 2,130�� - ���� 25,600�� - ���� 512���</p></li>
							</ol>
						</div>					
					 </div>
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"></td>
							<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ����</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2231</td>
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