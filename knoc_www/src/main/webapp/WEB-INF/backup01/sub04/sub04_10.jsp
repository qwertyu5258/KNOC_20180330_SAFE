<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","06");
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
	<input type="hidden" name="bid" value="MINWON" />			
	<input type="hidden" name="bno" value="" />
	<input type="hidden" name="callback" value="/sub04/sub04_5_list.jsp" />			
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
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>������</span>
					&gt; <span class="locanow">�ο�(������)����</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_5.gif" alt="�ο�(������)����" /></h3>
				</div>
				<div class="customer">
					<h4 class="mT0 pb10"><img src="../images/customer/img_sub04_5_01.gif" alt="�ѱ���������(�����)�� ���̹� �ο����� ã�� �ּż� �����մϴ�. ���� ������ ������ �����Ͽ� ����ó���� ���� ���ǽ�û�̳� �δ��ϰų� ����� ���׿� ���� ���� �� �ο����� ������� ���ɼ��ǲ� �ذ��Ͽ� �帮�ڽ��ϴ�." /></h4>
					<div class="declaration pb05">
						<ul>
						<li><strong>���̹� �ο�����?</strong><br />
							<ul>
								<li>- �ѱ���������� ���õ� ���� ��û, ���� ���� �ο������� �����Ͽ� ó�� ��ϴ� ���Դϴ�.</li>
							</ul></li>
						<li><strong>����</strong><br />
							<ul>
								<li>- �� �ο����� ����� ó���� ��Ģ���� �Ͽ� �ο����� �ź��� ����� ��ȣ�� �帳�ϴ�.</li>
								<li>- �����ο��� ó����� ��ȸ�� �ش� �ο��θ��� �����մϴ�.<br /><span class="pl10">��, �Ʒ��� [ó����� ��ȸ]���� Ŭ���� �� �ο����� ����� ������ �Է��Ͻ� ��й�ȣ, ������ȣ<br />&nbsp;&nbsp;&nbsp;(�ڵ��ο���)�� �Է��ϸ� ó�������</span><span class="pl10">��ȸ�Ͻ� �� �ֽ��ϴ�.</span></li>
								<li>- �ο�ó���� 7�� �̳� ó���� ��Ģ���� �ϸ�, �Ұ����ϰ� ������ ��쿡�� ��������, ó����ȹ ���� <br />&nbsp;&nbsp;&nbsp;����� �߰� ȸ���� �帮�ڽ��ϴ�.</li>
							</ul></li>
						<li><strong>���ǻ���</strong><br />
							<ul>
								<li>- �� �ο����� �Ǹ��� ��Ģ���� �ϸ�, �������� �Ϲ����� ���� �� �ο��� ������ ���� ������ �ݵ�� <br />&nbsp;&nbsp;&nbsp;����������<span class="pl10"><a href="http://www.petronet.co.kr/"  target="_blank" title="���������� Ȩ�������� �̵�(��â)"><span class="ce45108_b">"http://www.petronet.co.kr"</span></a>�� �Ϲݻ��� ���� �ڳʸ� �̿��Ͻñ� �ٶ��ϴ�.</span></li>
							</ul></li>
						<li><strong>����ó : ����� �ο����  ������ ����(�� 031-380-2143 / �ѽ� 031-388-9371)</strong></li>
						</ul>
					</div>
					<h4 class="pt20 pb10"><img src="../images/customer/img_sub04_5_02.gif" alt="�ѱ���������(�����)�� ������ �Ű���� ã�� �ּż� �����մϴ�. ���� ����� �����߹��� ���� �����ϰ� �ŷڹ޴� ������ȸ�� �����ϱ� ���Ͽ� ����ϰڽ��ϴ�. ���� ������ �������� ������ ��Ź�帳�ϴ�." /></h4>
					<div class="declaration pb05">
						<ul>
						<li><strong>������ �Ű��?</strong><br />
							<ul>
								<li>- �ѱ����������� ������ ���õ� �δ��� �з��̳� ûŹ, ���� �� ��ǰ�������� ���� �������� �����Ͽ� <br />&nbsp;&nbsp;&nbsp;ó����ϴ� ���Դϴ�.</li>
							</ul></li>
						<li><strong>����</strong><br />
							<ul>
								<li>- �� �Ű���� ����� ó���Ǹ�, �Ű����� �ź��� ö���� ������ �����Ͽ� �帳�ϴ�.</li>
								<li>- �����ο��� ó����� ��ȸ�� �ش� �ο��θ��� �����մϴ�.<br /><span class="pl10">��, �Ʒ��� [ó����� ��ȸ]���� Ŭ���� �� �ο����� ����� ������ �Է��Ͻ� ��й�ȣ, ������ȣ<br />&nbsp;&nbsp;&nbsp;(�ڵ��ο���)�� �Է��ϸ� ó�������</span><span class="pl10">��ȸ�Ͻ� �� �ֽ��ϴ�.</span></li>
								<li>- ó���� 7�� �̳� ó���� ��Ģ���� �ϸ�, �Ұ����ϰ� ������ ��쿡�� ��������, ó����ȹ ���� �����<br />&nbsp;&nbsp;&nbsp;�߰� ȸ���� �帮�ڽ��ϴ�.</li>
							</ul></li>
						<li><strong>���ǻ���</strong><br />
							<ul>
								<li>- �Ű�� �Ǹ��� ��Ģ���� �ϸ�, �������� �Ϲ����� ���� �� �������� ������ ���� ������ �ݵ��<br />&nbsp;&nbsp;&nbsp;����������<span class="pl10"><a href="http://www.petronet.co.kr/"  target="_blank" title="���������� Ȩ�������� �̵�(��â)"><span class="ce45108_b">"http://www.petronet.co.kr"</span></a>�� �Ϲݻ��� ���� �ڳʸ� �̿��Ͻñ� �ٶ��ϴ�.</span></li>
							</ul></li>
						<li><strong>����ó : ����� �ο���� ������ ����(�� 031-380-2132 / �ѽ� 031-388-9371)</strong></li>
						</ul>
					</div>
					<div class="customer2">					
					
					&nbsp;&nbsp;&nbsp;<BR />
					<div class="pt25" align="center">
					<table width="600px" >
					<tr>
						<td style="padding-left:50px;text-align:center;"><a href="/sub04/sub04_5_list.jsp?page=1&amp;mode=write&amp;bid=MINWON"><img src="../images/customer/btn_03.gif" alt="�ο�(������) �Ű�" /></a>&nbsp;<a href="#contents" onclick="popup_passwd(); return false;" title="��â"><img src="../images/customer/btn_04.gif" alt="ó�������ȸ" /></a></td>
						<td width="148"><a href="http://www.acrc.go.kr/acrc/board.do?command=searchDetail&menuId=0502" target="_blank"><img src="../images/customer/btn_030.gif" alt="���α�������ȸ ���нŰ��� Ȩ�������� �̵� (��â)" /></a></td>

					</tr>
					</table>
					</div>
				</div>
				
				<div class="declaration">
						<ul>							
							<li>�ѱ���������� ������Ÿ� �̿����� �� ������ȣ � ���� ������ ����������ȣ�� �� �������� ���� ������ �ؼ��ϸ�, 
��������ó����ħ�� ���Ͽ� ������ ���� ���������� �����Ͽ� ó������ �˷��帳�ϴ�.
<br /><br />
								<ul>
									<li style="text-align:center;">
										<strong>- �� �� -</strong>										
									</li>
								
									<li>
										<strong>1. �����ϴ� �������� �׸�</strong><br />
										&nbsp;&nbsp;&nbsp;&nbsp;����� ������ ���� �׸���� �����Ͽ� ó���մϴ�.<br />
										&nbsp;&nbsp;&nbsp;&nbsp;-����, ��й�ȣ, ��ȭ��ȣ, �̸���, �ּ�, ����
										
									</li>
									
									<li><strong>2. ���������� �������̿� ����</strong> <br />
									&nbsp;&nbsp;&nbsp;&nbsp;-�ο�(������) �Խ��� �</li>
									<!-- <li>�� ���� ���� ����<br />
										���� : ȫ���� <span class="ce45108_b">(�� 031-380-2158)</span><br />
										���� : �� ���� ("<a href="/sub01/sub01_5.jsp" title="���� �� �ο� �������� �̵�"><span class="ce45108_b">����Ұ� > ���� �� �ο� > ����ó</span></a>" ����)
									</li>
									-->
									
									<li><strong>3. ���������� ���� �� �̿�Ⱓ</strong><br />
									&nbsp;&nbsp;&nbsp;&nbsp;-���� �Ⱓ :  ����<br />
									&nbsp;&nbsp;&nbsp;&nbsp;-���� �ٰ� : ���� ���� ��ħ
									</li>
								
								</ul>
							</li>						
							
						</ul>
					</div>
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
						<td><strong>���μ� : </strong>�����</td>
						<td><strong>����ó : </strong>031-380-2143</td>
						<td></td>
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