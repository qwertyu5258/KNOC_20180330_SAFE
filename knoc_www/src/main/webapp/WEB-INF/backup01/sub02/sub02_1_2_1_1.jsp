<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","01");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>�����濵</span>
                    &gt; <span>�����濵</span>
					&gt; <span>�����濵�ҽ�</span>
                    &gt; <span class="locanow">�����濵����Ȱ��</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_2_1.gif" alt="�����濵����Ȱ��" /></h3>
				</div>
				<!--����-->			
				<div class="moralsNews">
					<div id="six">
						<ul class="tab">
							<li><a href="sub02_1_2_1.jsp" title="2012�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2012.gif" alt="2012�� �����濵����Ȱ��" id="six_button2012"/></a></li>
							<li><a href="sub02_1_2_1_9.jsp" title="2011�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2011.gif" alt="2011�� �����濵����Ȱ��" id="six_button2011"/></a></li>
							<li><a href="sub02_1_2_1_8.jsp" title="2010�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2010.gif" alt="2010�� �����濵����Ȱ��" id="six_button2010"/></a></li>
							<li><a href="sub02_1_2_1_7.jsp" title="2009�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_7.gif" alt="2009�� �����濵����Ȱ��" id="six_button7"/></a></li>
							<li><a href="sub02_1_2_1_6.jsp" title="2008�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_1.gif" alt="2008�� �����濵����Ȱ��" id="six_button1"/></a></li>
							<li><a href="sub02_1_2_1_1.jsp" title="2007�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_2r.gif" alt="2007�� �����濵����Ȱ��" id="six_button2"/></a></li>
							<li><a href="sub02_1_2_1_2.jsp" title="2006�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_3.gif" alt="2006�� �����濵����Ȱ��" id="six_button3"/></a></li>
							<li><a href="sub02_1_2_1_3.jsp" title="2005�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_4.gif" alt="2005�� �����濵����Ȱ��" id="six_button4"/></a></li>
							<li><a href="sub02_1_2_1_4.jsp" title="2004�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_5.gif" alt="2004�� �����濵����Ȱ��" id="six_button5"/></a></li>
							<li><a href="sub02_1_2_1_5.jsp" title="2003�� �����濵����Ȱ��" ><img src="/images/management/tab_sub02_1_2_1_6.gif" alt="2003�� �����濵����Ȱ��" id="six_button6"/></a></li>
						</ul>
						<h4><img src="/images/management/sub02_1_2_1_ta2.gif" alt="2007��" /></h4>
						<ul class="newsBox">
							<li><strong>�����ǽ��� ���� ���� ǥ�� ���� �� Ȱ��(��07.3��)</strong>
								<dl>
									<dt>- 2007�⵵ �����濵 ǥ�� ����</dt>
									<dd>1. �� ����� �ٸ� ���� ������� ��������</dd>
									<dd> 2. �����濵, ������ ������, ���ú����Դϴ�.</dd>
									<dd>3. ��õ�ϴ� �����濵 �ռ����� ��������</dd>
								</dl>
								<p>- �ڼ�Ȧ���� ǥ�� �����Ͽ� �� �������� ����</p>
							</li>
							
							<li><strong>�����濵 å���� ����(��07.4��)</strong>
								<p>- �� �� : �����濵 å���� 37���� ������� �����濵 å���ڷμ��� ���� �������� ��ũ��</p>
								<p>- �� �� : ������������ ������ ����, ������������ ���� ���� �м� �� ���</p>
							</li>
							
							<li><strong>�����濵 ���� ��ȸ ���� (��07.5��)</strong>
								<p>- �� �� : ���νŷڸ� ȸ���ϰ� û���� ����� �ŵ쳪�� ���� ���� ��ȸ ���� �ǽ�</p>
								<p>- �� �� : 8�� ���� �� 4���Ǽ��繫��, ������ �����繫��</p>
								<p>- �������� : ��ʷ� ���� ����, �����浹��Ȳ���� ��ó ���, ûŹ ����/��ȭ ������ ��</p>								
							</li>

							<li><strong>UN Global Compact ����(��07.8��)</strong>
								<p>- UN Global Compact�� 10�� ��Ģ�� ���� ���������� ���� CEO�� ������ UN�繫���忡�� �߼��� �� ���伭���� ����</p>
								<p>- 10�� ��Ģ ����Ȱ���� ���� ��ü�� ��õ����, ����� ���� communication on Progress (COP) ������ �ų� �ۼ��Ͽ� ���� <br /><span class="mL10">������</span> </p>
								<dl>
									<dt>- UN Global Compact��?</dt>
									<dd>�� UN Global Compact�� �α�, �뵿, ȯ��, �ݺ��� 4���� �о��� 10���� ��Ģ���� �ؼ��ϱ�� �ϴ� ������� �ڹ����� �������� �� UN �繫������ ���ǾƳ��� 1999�� 1�� ó������ ��â�Ͽ��� 2000�� 7�� ���� UN���ο��� ����</dd>
									<dd>�� UN Global Compact�� ������� �ൿ�� ���ϰų� �����ϴ� ���� �ƴ϶� ���� å�Ӽ��� ������ ���ʷ� ����� �������� ������ �߱��ϴ� ��</dd>
								</dl>
							</li>

							<li><strong>���� ���� ���� TF �� ���� �� �(��07.9��)</strong>
								<p>- �� �� : ������� ���ýý��� ����� �ൿ���� �� �ൿ��ħ�� ���� ����� Ȯ�� ������ ���� ����</p>
								<dl>
									<dt>- �� ��</dt>
									<dd>�� ���� ���� ��� ���� �� ����</dd>
									<dd>�� � � ���࿡ ���� ����Ȱ��,�Ű��� �</dd>
									<dd>�� ���������� ������ ���� ��</dd>
									<dd>�� ���� ���� TF���� ���� ������ ���������� �ൿ��ħ,�ൿ���� �ؼ� ���θ� �����ϰ� ���ݻ��� �߰� �� ����ǿ� ó�� �Ƿ�</dd>
								</dl>
							</li>
							
							<li><strong>������ û�� ��Ȱ ��õ ���� (��07.10��)</strong>
								<p>- �� �� : �������� �ּ������Ͽ� û�� ��Ȱ�� ��õ�����ν� ���ε��� ��� ���ؿ� �´� ������ ���� �ǽ� ����</p>
								<dl>
									<dt>- ���೻��</dt>
									<dd>�� ���������� �ൿ ��ħ �� �ൿ���� �ؼ�</dd>
									<dd>�� 3� � (�������� ���� : �Ļ�, ����, ��ǰ) ���� ����</dd>
								</dl>								
							</li>							
							
							<li><strong>������ �ൿ��ħ ��üȭ(��07.11��)</strong>
								<p>- �� �� : �߻����� �����Թ��� ������ �������� ��üȭ�Ͽ� �� ���κ��� �������� ���̵� ������ ����</p>
								<dl>
									<dt>- �� ��</dt>
									<dd>�� ���� : �������� ���� ��, �ؿ������� ��� �� ���� ����,�������� �����簣 ����ŷ� �� 10����</dd>
									<dd>�� ���� : ��Ź����, �뿪 �����ڷμ� �����ǽ�,���� �� ���迹�� �� 10����</dd>
									<dd>�� �濵���� : �ٹ�ȯ�� ����, ���� ������, ������ ������ȭ���� �� 10����</dd>
									<dd>�� �Ǽ� : ������ �۾��� ����, ������ �ŷ� ���� ���� �� 10����</dd>
								</dl>
							</li>

						</ul>
					</div>

                </div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>