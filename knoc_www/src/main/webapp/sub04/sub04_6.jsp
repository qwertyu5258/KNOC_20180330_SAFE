<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
	function popup_passwd() {
		window.open("","bform","width=305,height=205,top=0,left=0,scrollbars=no");
		document.bform.submit();
	}
</script>



	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<form name="bform" method="post" action="/sub04/pop_login.jsp" target="bform" onsubmit="do_search(this); return false;">
	<input type="hidden" name="bid" value="BUDGET" />
	<input type="hidden" name="bno" value="" />
	<input type="hidden" name="callback" value="/sub04/sub04_6_list.jsp" />
	<input type="hidden" name="mode" value="list" />
</form>
	<div id="contents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->

		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_04.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; <span>������</span> &gt; <span class="locanow">���곶��Ű���</span>
				</div>
				<!--// location: end //-->
				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_6.gif" alt="���곶��Ű���" /></h3>
				</div>
				<div class="customer">
				<h4 class="mT0 pb10"><img src="../images/customer/img_sub04_6_01.gif" alt="���곶��Ű��ʹ� �ѱ��������翡�� �����ϰ� �ִ� ���߿��� ������ ����ǰ� �ִٰ� ���� �����е��� �Ǵ��ϴ� ���ο� ���� �ǰ߼����� �ϱ� ���ؼ� ��ϴ� ���Դϴ�.." /></h4>
				<div class="declaration pb05">
					<ul>
						<li>���곶��� ���þ��� �Ϲ����� �ο������� <a href="/sub04/sub04_2.jsp" title="������ �������� �̵�"><span class="ce45108_b">[������]</span></a>, <a href="/sub04/sub04_5.jsp" title="�ο�(������)���� �������� �̵�"><span class="ce45108_b">[�ο�(������)����]</span></a>�� �̿��� �ֽñ� �ٶ��ϴ�.</li>
						<li>���곶��Ű��Ϳ� �Ű�� ������ ������� ó���Ǹ�, �Ű����� �ſ��� ö���� ����˴ϴ�.</li>
						<li>�Ű�� ���뿡 ���ؼ��� ö���� ���縦 ���Ͽ� ������ ���� ���ϳ��� ����� ȸ���� �帮������, �߸��� ������ ���������� ������� ����ϰڽ��ϴ�.</li>
						<li>��� : ������ ������(�� 052-216-2316)</li>
					</ul>
				</div>
				<div class="customer2">
					<div class="declaration">
						<ul>
							<li>�ѱ���������� ������Ÿ� �̿����� �� ������ȣ � ���� ������ ����������ȣ�� �� �������� ���� ������ �ؼ��ϸ�, ��������ó����ħ�� ���Ͽ� ������ ���� ���������� �����Ͽ� ó������ �˷��帳�ϴ�.<br />
								<br />
								<ul>
									<li style="text-align:center;"> <strong>- �� �� -</strong> </li>
									<li> <strong>1. �����ϴ� �������� �׸�</strong><br />
										&nbsp;
										&nbsp;
										&nbsp;
										&nbsp;
										����� ������ ���� �׸���� �����Ͽ� ó���մϴ�.<br />
										&nbsp;
										&nbsp;
										&nbsp;
										&nbsp;
										-����, ��й�ȣ, ��ȭ��ȣ, �̸��� </li>
									<li><strong>2. ���������� �������̿� ����</strong> <br />
										&nbsp;
										&nbsp;
										&nbsp;
										&nbsp;
										-���곶��Ű��� �Խ��� �</li>
									<li><strong>3. ���������� ���� �� �̿�Ⱓ</strong><br />
										&nbsp;
										&nbsp;
										&nbsp;
										&nbsp;
										-���� �Ⱓ : �Խù� ���� ��û�ñ��� �Ǵ� �Խñ� ��� �� 3�� �����(�ڵ��ı�)<br />
										&nbsp;
										&nbsp;
										&nbsp;
										&nbsp;
										-���� �ٰ� : ���� ���� ��ħ </li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="pt25" align="center">
						<a href="/sub04/sub04_6_list.jsp?page=1&amp;mode=write&amp;bid=BUDGET" title="���곶�� �Ű��ϱ�"><img src="../images/customer/btn_05.gif" alt="���곶�� �Ű��ϱ�" /></a> <a href="#" onclick="popup_passwd();" title="ó�������ȸ (�����Է� ��â)"><img src="../images/customer/btn_04.gif" alt="ó�������ȸ (�����Է� ��â)" /></a>
					</div>
				</div>
			</div>

			<!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>��������ó ������</td>
					<td class="contact_user"><strong>����� : </strong>������</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2316</td>
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