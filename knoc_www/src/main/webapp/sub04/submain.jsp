<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","00");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>      
<%@include file="/include/comheader.jsp"%>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
	
    <div id="smcontents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea" class="mgn_top">
			<div id="smainvisual">
				<img src="/images/new_sub/cp.gif" alt="������(Customer Participation) ������ ���ɼ��� Ȯ���� ���� �ð���, ���ο� ȯ��� ����� �����ϸ� ������ ���並 ���������� �ֽ��ϴ�." />
			</div>
			
			<div id="smcnts_3">
				<div class="submain_04">
					<ul>
						<li><a href="/sub05/sub05_5_5.jsp"><img src="/images/submain/n_sub04_01.gif" alt="�������� - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_1_1.jsp"><img src="/images/submain/n_sub04_02.gif" alt="������ - ������ ������ ������ ���� ���ο��� ����� ������� �����ϴ� ���Դϴ�. - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_2.jsp"><img src="/images/submain/n_sub04_03.gif" alt="������ - ���� �� �� ������ �ٰ����� ���� ���������� ����Դϴ�. - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_3.jsp"><img src="/images/submain/n_sub04_04.gif" alt="��/�������� - ���� ������ �ǰ��� �޴� ���Դϴ�. - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_5.jsp"><img src="/images/submain/n_sub04_05.gif" alt="���ο�/�Ű� - ���� �δ��ϰų� ����� ������ ���� ���ǲ� �ذ��� �帮�ڽ��ϴ�. - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_8_1.jsp"><img src="/images/submain/n_sub04_06.gif" alt="�˶������� - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_6.jsp"><img src="/images/submain/n_sub04_07.gif" alt="���곶��Ű��� - ���곶�� ���� �ǰ߼����� �ޱ� ���� ���Դϴ�. - �ٷΰ���" /></a></li>
						<li><a href="/sub04/sub04_11.jsp"><img src="/images/submain/n_sub04_08.gif" alt="�����ü� �̿�ȳ� - �ٷΰ���" /></a></li>
						<li><a href="/sub05/sub05_9_1.jsp?grp=SENSE"><img src="/images/submain/n_sub04_09.gif" alt="FAQ - �ٷΰ���" /></a></li>
            		</ul>
				</div>
				<!-- 
				<div class="subMain">
					<div class="cusBox">
						<ul>
						<li class="busiMain06">
							<h3 class="mB5"><img src="/images/customer/main_tit_06.gif" alt="FAQ"/></h3>
							<a href="/sub04/sub04_4_1.jsp"><img src="/images/common/btn_go.gif" alt="FAQ �������� �̵�"/></a>
						</li>
						<li class="busiMain07">
							<h3 class="mB5"><img src="/images/customer/main_tit_07.gif" alt="��������"/></h3>
							<a href="/sub04/sub04_7.jsp"><img src="/images/common/btn_go.gif" alt="�������� �������� �̵�"/></a>
						</li>
						</ul>
					</div>
					<div class="busiBox02">
						<div class="custoMain01">
							<h3><img src="/images/customer/main_tit_01.gif" alt="������"/></h3>
							<p class="mT10"><img src="/images/customer/main_txt_01.gif" alt="������ ������ ������ ���� ���ο��� ����� ������� �����ϴ� ���Դϴ�."/></p>
							<p class="mT10"><a href="/sub04/sub04_1_1.jsp"><img src="/images/common/btn_main_go.gif" alt="������ �������� �̵�" /></a></p>
						</div>
						<div class="custoMain02">
							<h3><img src="/images/customer/main_tit_02.gif" alt="������"/></h3>
							<p class="mT10"><img src="/images/customer/main_txt_02.gif" alt="���� �� �� ������ �ٰ����� ���� ���������� ����Դϴ�." /></p>
							<p class="mT10"><a href="/sub04/sub04_2.jsp"><img src="/images/common/btn_main_go.gif" alt="������ �������� �̵�" /></a></p>
						</div>
						<div class="custoMain03">
							<h3><img src="/images/customer/main_tit_03.gif" alt="�ο�(������)����"/></h3>
							<p class="mT10"><img src="/images/customer/main_txt_03.gif" alt="���� �δ��ϰų� ����� ������ ���� ���ǲ� �ذ��� �帮�ڽ��ϴ�." /></p>
							<p class="mT10"><a href="/sub04/sub04_5.jsp"><img src="/images/common/btn_main_go.gif" alt="�ο�(������)���� �������� �̵�" /></a></p>
						</div>
					</div>
					<div class="busiBox03">
						<div class="custoMain06">
							<h3><img src="/images/customer/main_tit_16.gif" alt="�˶�������"/></h3>
							<p class="mT10"><img src="/images/customer/main_txt_16.gif" alt="�˶������ҿ� ���� �������� ���� â���Դϴ�."/></p>
							<p class="mT10"><a href="/sub04/sub04_8_1.jsp"><img src="/images/common/btn_main_go.gif" alt="�˶������� �������� �̵�" /></a></p>
						</div>
						<div class="custoMain04">
							<h3><img src="/images/customer/main_tit_04.gif" alt="��/��������"/></h3>
							<p class="mT10"><img src="/images/customer/main_txt_04.gif" alt="���� ������ �ǰ��� �޴� ���Դϴ�."/></p>
							<p class="mT10"><a href="/sub04/sub04_3.jsp"><img src="/images/common/btn_main_go.gif" alt="��/�������� �������� �̵�" /></a></p>
						</div>
						<div class="custoMain05">
							<h3><img src="/images/customer/main_tit_05.gif" alt="���곶��Ű���"/></h3>
							<p class="mT10"><img src="/images/customer/main_txt_05.gif" alt="���곶�� ���� �ǰ߼����� �ޱ� ���� ���Դϴ�." /></p>
							<p class="mT10"><a href="/sub04/sub04_6.jsp"><img src="/images/common/btn_main_go.gif" alt="���곶��Ű��� �������� �̵�" /></a></p>
						</div>
					</div>
				</div>
				-->
            </div>
        </div>
    </div> 
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>
