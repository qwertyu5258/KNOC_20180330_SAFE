<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","02");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>     
<%@include file="/include/comheader.jsp"%>


<!--// subtopNavi: start //-->
<%@include file="/include/subtopnavi_new.jsp"%>
	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
			  <%@include file="/include/subtop_03.jsp"%>
			  <!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>����Ұ�</span>
                    &gt; <span>��������</span>
                    &gt; <span>�����̾߱�</span>
                    &gt; <span class="locanow">�������߰���</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_6_3_2.gif" alt="�������߰���" /></h3>
				</div>
				<!--����-->
               <div class="business2">
					<div>
						<ul class="tab">
						<li><a href="sub03_6_3_2.jsp" title="���߼���" ><img src="/images/business/img_tab01.gif" alt="���߼���" /></a></li>
						<li><a href="sub03_6_3_2_1.jsp" title="Ž��ܰ�" ><img src="/images/business/img_tab02_on.gif" alt="Ž��ܰ�"/></a></li>
						<li><a href="sub03_6_3_2_2.jsp" title="���ߴܰ�" ><img src="/images/business/img_tab03.gif" alt="���ߴܰ�"/></a></li>
						<li><a href="sub03_6_3_2_3.jsp" title="����ܰ�" ><img src="/images/business/img_tab04.gif" alt="����ܰ�"/></a></li>
						</ul>
						<div class="mT20"><img src="../images/business/img_sub06_3_2_tab02_01.gif" alt="Ž���۾��� �������� �� ��������Ž�縦 �ǽ��Ͽ� ������ ����, �̵�, ���� ���ɼ��� ���� ���������� �ľ��Ͽ� ���� Ž���۾��� ���Ͽ� �������� ���θ� Ȯ���ϴ� ����" />
						</div>
						<h4><img src="../images/business/img_ttl_sub03_6_2_tab02_01.gif" alt="���� Ž����" /></h4>
						<h5>������� : <span>��ǥ�� ���Ͽ� ����, ������������ �� ���� ���� ���ɼ��� �����ϴ� �۾�</span></h5>
						<h5>����Ž��</h5>
						<ul>
						<li>�߷�(�ڷ�)Ž�縦 ���Ͽ� ����, ������ ���� �� ��ݾ� Ȯ��</li>
						<li>ź���� Ž�� : ������ �ٸ� ���� ������ �ݻ��ĸ� �̿� ����, ������������, �������� ���ɼ� �� ���������� Ȯ���ϴ� �۾�</li>
						<li>����Ž�� : ź����Ž�� ��� Ȯ�ε� ���������� ���� ���� ���� ���θ� ���� Ȯ���ϴ� �۾�
							<div><img src="../images/business/imgin1_sub03_6_3_2_1.gif" alt="���������� ���� 4�� ����" />
								<ul class="blindtext">
								<li>�ǿ��� : ���� �� ������ ������ �� �ִ� ���⹰�� ������ �ϼ�</li>
								<li>������ : �ٰ����� �ϼ����μ� źȭ���� ������ ����</li>
								<li>Ʈ�� : �����ϳ��� źȭ���Ҹ� ��ȹ, ������ �� �ִ� ����</li>
								<li>������ : ��ȹ�� ������ �������� �ʵ��� ������</li>
								</ul>
							</div>
						</li>
						</ul>						
						<h4><img src="../images/business/img_ttl_sub03_6_2_tab02_01.gif" alt="���� Ž����" /></h4>
						<h5>��ǥ��������(Surface Geology)</h5>
						<ul>
						<li>����Ž�� ��� ������ ������ �̿� ���õ� ���� ���������� �Ͻ��ϴ� ����, ����, �տ������ ���� Ž�� (Field Work)</li>
						<li>�������ڵ��� ������ ��� Ȯ���� ���� ���� ������ ���� ���� ���� �� ������� Ȱ���Ͽ� ����� ��ǥ���� Ž��</li>
						</ul>
						<h5>ź���� Ž��(Seismic Survey)</h5>
						<ul>
						<li>ź���� Ž��� ��ǥ �Ǵ� �ػ󿡼� ���������� ź���ĸ� �߻��Ͽ� ���������� ���鿡�� �ݻ�Ǿ� ���ƿ��� �ݻ��ĸ�<br />����ϰ� �ڷ�����ó�� �� �ؼ��۾��� ����, �������� ���ɼ��� ���� �������� ����</li>
						<li>�������ڵ��� ������ ��� Ȯ���� ���� ���� ������ ���� ���� ���� �� ������� Ȱ���Ͽ� ����� ��ǥ���� Ž��
							<p><img src="../images/business/img_sub03_6_3_2_1.gif" alt="��ǥ���� Ž�� : �ڷ����(acquisition)������ó��(processing)���ؼ�(interpretation)" /></p>	</li>
						<li class="mT10">ź���� Ž�� ������� 2D�� 3D Ž������ ����<br/>
							<p>�� <strong>2D Ž�� : </strong>ź���� �������κ��� ������������ ���ϰ����� �����Ⱑ �޸� 1�� line�� streamer�� ��ġ�Ͽ� �ڷḦ ȹ���ϴ�<br /><span style="padding-left:78px;">������� ���������� ���� �ܸ鵵�� ���� �� ����. �ַ� ����Ž�翡 �������� ���� ������ ���� 1km�̻󿡼�</span><br /><span style="padding-left:78px;">����km���� �پ���.</span></p>
							<p>�� <strong>3D Ž�� : </strong>ź���� �������κ��� ������ line�� streamer�� ��ġ�Ͽ� �ڷḦ ȹ���ϴ� ������� ���� �� ���� �ܸ鵵�� ����<br /><span style="padding-left:78px;">�� ������, �ַ� ����Ž�縦 ���� �������� Ž������ ������ ��쿡 ���� �ٸ��� �ִ� 50m�� ���� ����.</span></p>
							<p><img src="../images/business/img_sub03_6_3_2_2.gif" alt="3D Ž�� ���" /></p></li>						
						</ul>
						<h5>Ž�����(Exploratory Drilling)</h5>
						<ul>
						<li> ź����Ž�翡 ���� ����� ���������� ���Ͽ� �����۾�, ��������, ������� ���� ���Ͽ� �������� ���� Ȯ�� �� ����ɷ��� ���ϴ� �۾�
						<p>��<strong>���߹��</strong> : ������, �����, ������ ���� ����</p>
						<p><img src="../images/business/img_sub03_6_3_2_3.gif" alt="������ ���߹��" /></p></li>
						</ul>
						<h5>������� (Drill Stem Test , DST)</h5>
						<ul>
						<li>�����۾� �� �̼����� �� �������� � ���� źȭ���Ұ� �ִ� ������ Ȯ�ε� ���� ���Ͽ� �� ���� ����ɷ� ������ Ȯ���ϱ�<br />
						���Ͽ� ���߰��� �Ϻο� Ư���� ���� ��Ŀ�� �ٿ��� ���߰��� ���Ͻ��� ���� ����ɷ��� �����ϴ� ���</li>
						<li>�����з� �� ���귮�� �����ϰ� ������ ��ü �÷Ḧ ä���Ͽ� ������ ����ɷ� �� �����ϰ� ������ ��ü�� Ư�� �ľ�</li>
						<li>��������ڷῡ ���� �зºм� �� ���������� ���� ���Ͽ� ���差 �� �� ���� ���� ������ ���� ������ �� ������ Ȱ��
							<p><img src="../images/business/img_sub03_6_3_2_4.gif" alt="�����۾� ���" /></p></li>
						</ul>
						<h5>�������� (Wireline Logging)</h5>
						<ul>
						<li>���߰��� ������� �����Ͽ� �������� �ڿ������� �߻��Ǵ� ���������̳� �ΰ������� ��(����, �߼���, ����, ������)��<br />
						�߻��Ͽ� �̿� ���� ������ ����Ͽ� �ؼ��ϴ� �۾�</li>
						<li>�ϼ������� �ϼ����� ���ڰ��� ����(����)�� �����ϸ�, ����(����) ������ ����, ����, ���� ä���� �־� ������ ������ �ڱؿ�<br />
						������ ������ ���̴� ���� �̿��Ͽ� ���� ���� �� ������ Ư�� �Ǵ�</li>
						</ul>
                    </div>

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
						<td><strong>���μ� : </strong>������������ ������ȹ��</td>
						<td><strong>����ó : </strong>052-216-2508</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
				</table>
			</div><!--new_officer end -->
		  
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>