<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","15");
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
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; <span>��������</span> &gt; <span>������������</span> &gt; <span class="locanow">��������ó������</span>
                </div>				
                <div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/n_img_sub5/ttl_sub05_1_2.gif" alt="�������� ó������" /></h3>
				</div>
                <div class="information">
					<!--star_��������ó������-->
                    <h4 class="mT0"><img src="../images/information/img_ttl_sub05_4_1_03.gif" alt="��������ó������" /></h4>
					<dl>
						<dt>������������ ó������</dt>
						<dd class="nobul"><img src="../images/information/img_sub05_4_1_01.gif" class="pt05" alt="������������ ó������" />
							<ol class="blindtext">
								<li><strong>û���� ����</strong>(û����)</li>
								<li><strong>û���� ���� </strong>(�����濵��)</li>
								<li><strong>û���� �̼�</strong>(ó���μ� �Ǵ� �Ұ����) �� [�� 3���� �ǰ�û��]</li>
								<li>[�� 3���� �������û (����û����� ���� ���������� 3���̳�)]  �� <strong>������������ ����</strong>(û���Ϻ��� 10�� �̳�) �� [������������ȸ�� ����]</li>
								<li><strong>�����������������������</strong>(����������� ������ ��ü����)</li>
								<li><strong>��3���� ���� ��û</strong>(�������� ���������� 7���̳�)</li>
								<li><strong>û������ ���ǽ�û</strong>(�������ΰ��������� �Ǵ� ��������������Ϻ��� 30���̳�)</li>
								<li><strong>���ǽ�û ����</strong>(���ǽ�û�Ϻ��� 7���̳�)</li>
								<li><strong>���� ��û ���� �������</strong>(���ǽ�û���� ���)</li>
								<li><strong>û���� Ȯ��</strong>(�ź������� ��)</li>
								<li><strong>������¡��</strong></li>
								<li><strong>�����ǽ�</strong>(���������Ϻ��� 10���̳�)</li>
							</ol>
						</dd>
					</dl>
					<dl>
						<dt>û�� �� ����</dt>
						<dd>û������ û���ϰ��� �ϴ� ������ �����������ϰ� �ִ� �������������������û�������� �����մϴ�.
							<div class="infoBox">							
								<dl>
									<dt>�� û���� �������</dt>
									<dd>û������ �̸����ֹε�Ϲ�ȣ���ּ�(������ ��� ���� ���θ� �� ��ǥ���� �̸�, �ܱ����� ��� ����<br/>�ܱ����� ��Ϲ�ȣ) �� ����ó(��ȭ��ȣ�����ڿ����ּ� ��)</dd>
									<dd>û���ϴ� ������ ����</dd>
									<dd>������(�м�����, �������, ��������, ��۰���, ������ ��)</dd>
									<dd>�������(����, ��û, �纻����¹�, ������, ��ȭ�� ��)</dd>
								</dl>
							</div>
						</dd>
						<dd class="mT10">û����� : �����⼮, ����, �������, �������</dd>
						<dd>��������� ��������û������ ������ �����¡���������ó�����塹�� ����ϰ� û���ο��� �������� �����մϴ�.</dd>
						<dd>��������û������ ������ �ְ��μ��� �̸� ���μ� �Ǵ� �Ұ������ �̼��մϴ�.</dd>
					</dl>
					<dl>
						<dt>�������ΰ���</dt>
						<dd>�������(���μ�)�� û���� ���� ���κ��� ��10�� �̳���(�ε����� ��� 10�� ���� ����)�� �������θ� �����մϴ�.</dd>
						<dd>��3���� �ǰ�û��
							<p>- ������������� ��3�ڿ� ������ �ִ� ��� ����û���� û������� ��3�ڿ��ԡ���ü���̡������ϰ�, �ʿ�� ��3����<br/>
							<span class="mL10">�ǰ��� û���Ͽ��� �մϴ�.</span></p>
						</dd>
						<dd>������������ �ǰ�û��
							<p>- ����û���� ������ �ٸ� ��������� ������ ������ ������ ���� ������ ������ ��������� �ǰ��� ��� �������θ�<br/>
							<span class="mL10">�����մϴ�.</span></p>
						</dd>
						<dd>��������û������ ������ �ְ��μ��� �̸� ���μ� �Ǵ� �Ұ������ �̼��մϴ�.</dd>
						<dd>3���� ����� ��û
							<p>- ���� û���� ����� �������� ��3�ڴ� �ǰ��� ���� ��� �������� ���κ��� "3���̳�"�� ���� ��������� �������� �ƴ���<br/>
							<span class="mL10">���� ��û�� �� �ֽ��ϴ�.</span></p>
						</dd>
						<dd>������������ȸ�� ����
							<p>- ��������� �������� ���θ� �����ϱ� ���Ͽ� ������������ȸ�� ��ġ����մϴ�.<br/>
							<span class="mL10">- ������������ȸ ���ǻ����� ������ �����ϴ�.</span></p>
							<p class="mL20">1. ��������� ���� �ܵ����� ����û���� ������ �������θ� �����ϱ� ����� ����</p>
							<p class="mL20">2. ���ǽ�û�� ����</p>
							<p class="mL20">3. ��Ÿ �������������� ��� ���� ����</p>
						</dd>
					</dl>

					<dl>
						<dt>�������ΰ����� ����</dt>
						<dd>��������� ����û���� ������ ���� �������θ� ���� �� �����¡���ü���̡������项�����ڿ����� ������ �����մϴ�.</dd>
						<dd>������������ ����
							<p>- �����Ͻá��������, �������, �������� �ݾ� �� ���ι�� ���� �����Ͽ� ������ ������ ���κ��� ��10���̳����� �����ǵ���<br/>
							<span class="mL10">�����Ͽ��� �մϴ�.</span></p>
						</dd>
						<dd>����� �������� ����
							<p>- ��������� ������ ����� ������ �� ������ �� ������ û���ο��� ����ü���̡������项���� �����մϴ�. �� ���<br/>
							<span class="mL10">������������Һ���� �� �Һ������� �����Ͽ��� �մϴ�.</span></p>
						</dd>					
					</dl>
					<dl>
						<dt>�����ǽ�</dt>
						<dd><strong>������Ģ</strong>
							<p>��������� ������ ������ ������ ��쿡�� û���ο��� ������ �����Ͻá�������ҿ��� �������� �������� ��Ģ�Դϴ�. �ٸ�, <br/>
							û���� ���� �Ǵ� �� �븮���� ���� Ȯ���� �ʿ䰡 ���� ��쿡�� û������ ��û�� ���Ͽ� �������� �ۺ��� �� �ֽ��ϴ�.</p>
						</dd>					
						<dd class="mT10"><strong>�������</strong>
							<div class="infoBox">							
								<ul>
									<li>����, ����, ����, ī��� : ���� �Ǵ� �纻�� ����</li>
									<li>����������, ��ȭ������, �����̵� : ��û �Ǵ� �������� ����</li>
									<li>��ȭ�ʸ� : ��û</li>
									<li>����ũ���ʸ� : ���� �Ǵ� �纻���������� ����</li>
									<li>���� : ���� �Ǵ� �纻�� ����</li>
									<li>�����ʸ� : ���� �Ǵ� ��ȭ������������ ����</li>
									<li>��ǻ�� ó������ : ��ü�� ��������û �Ǵ� �纻(��¹�)���������� ����</li>
								</ul>
							</div>
							<p class="mT5">û����� : �����⼮, ����, �������, �������</p>
							<p>��������� ��������û������ ������ �����¡���������ó�����塹�� ����ϰ� û���ο��� �������� �����մϴ�.</p>
							<p>��������û������ ������ �ְ��μ��� �̸� ���μ� �Ǵ� �Ұ������ �̼��մϴ�.</p>
						</dd>					
						<dd class="mT10"><strong>��������</strong>
							<div class="infoBox">							
								<ul>
									<li>�纻����<br/>
									���������� �������� �ϴ� ���� ��Ģ�̳�, ������ �����Կ� �־� ������ ������ ���յǰų� �ļյ� ����� �ִ�<br/>��쿡�� �纻���� ������ �����մϴ�.</li>
									<li>�κа���<br/>
									����� ������ ���������� ȥ�յǾ� �и� ������ ���, ���������� ���յǴ� ������ �κа����� �����մϴ�.</li>
									<li>��ð���<br/>
									�������ΰ������� ���� ��� �Ǵ� ������ ó���� ������ ������ ������ ���� ���� ��� �����մϴ�.</li>
								</ul>
							</div>						
						</dd>
						<dd class="mT10"><strong>���� �� Ȯ��</strong>
							<p>������ ������ ������ û���� ���� �Ǵ� �� �븮������ ������ ���� ������ Ȯ���մϴ�.</p>
							<div class="infoBox">							
								<ul>
									<li>û���� ���ο��� ������<br/>
									û������ �ſ��� Ȯ���� ���ִ� �ź�������(�ֹε���� ��)</li>
									<li>û������ �����븮�ο��� ������<br/>
									�����븮������ ������ �� �ִ� ������ �븮���� �ſ��� Ȯ���� �� �ִ� �ź�����</li>
									<li>û������ ���Ǵ븮�ο��� ������<br/>
									��������������� û���� �� �������� �ſ��� Ȯ���� �� �ִ� �ź�������</li>
								</ul>
							</div>
							<p class="mT5">�� ����������ҿ� ���� ������ ����(�������κа����������) ������������ ���� �ش� �������� �����Ͽ��� �մϴ�.</p>
						</dd>
					</dl>
                    <!--edn_��������ó������-->
				</div>
            </div>
			<!-- //contents -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
						<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ���������</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2607</td>
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