<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","00");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>        
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%>
    <!--// subtopNavi: start //-->
    <div id="smcontents">
        <!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
        <div id="rightarea">
            <div id="smainvisual">
				<img src="/images/new_sub/about_us.gif" alt="����Ұ�(About Us) ��������� �������� �ѱ���������, ���������� ���� ���� �ӿ��� ���� �����ϴ�." />
			</div>

            <div id="smcnts">
            	<div class="submain_01">
            		<ul>
                    	<li><a href="/sub01/sub01_10_intro.jsp"><img src="/images/submain/sub01_10_intro.gif" alt="�����ȭ �ٷΰ���" /></a></li>
            			<!--<li><a href="/sub01/sub01_10_1.jsp"><img src="/images/submain/sub01_10.gif" alt="��� �� ���� �ٷΰ���" /></a></li>
            			<li><a href="/sub01/sub01_11_1.jsp"><img src="/images/submain/sub01_11.gif" alt="�濵��Ģ �� �濵��ħ �ٷΰ���" /></a></li>
            			<li><a href="/sub01/sub01_12_1.jsp"><img src="/images/submain/sub01_12.gif" alt="�ٽɰ�ġ �� ��ó����� �ٷΰ���" /></a></li>-->
            			<li><a href="/sub01/sub01_5.jsp"><img src="/images/submain/sub01_13.gif" alt="������ �� �ֿ��� �ٷΰ���" /></a></li>
            			<li><a href="/sub01/sub01_4.jsp"><img src="/images/submain/sub01_14.gif" alt="ȸ�翬�� �ٷΰ���" /></a></li>
            			<li><a href="/sub01/sub01_7_1.jsp"><img src="/images/submain/sub01_15.gif" alt="ä������ �ٷΰ���" /></a></li>            			
            			<li><a href="/sub01/sub01_9.jsp"><img src="/images/submain/sub01_16.gif" alt="ã�ƿ��±�  �ٷΰ���" /></a></li>
            			
            		</ul>
            		<div class="submain_box">
            			<a href="/sub01/sub01_4_3.jsp"><img src="/images/submain/sub01_07.gif" alt="��������30��� �ٷΰ���" /></a><!-- a href=" http://www.eknoc.co.kr/index1.html" target="_blank"><img src="/images/submain/sub01_08.gif" alt="����ȸ �ٷΰ���" /></a-->
            		</div>
            	</div>
            	
            <!--
				<div class="subMain">
					<div class="comBox01">
						<li style="margin-left:5px; "><a href="/sub01/sub01_9.jsp"><img src="/images/submain/sub01_06.gif" alt="ã�ƿ��ô� �� �ٷΰ���" /></a></li>
						<div class="comMain01">
							<h3><img src="/images/info/main_tit_01.gif" alt="CEO �λ縻"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_01.gif" alt="���� �ѱ��������� Ȩ�������� �湮�� �ֽŵ� ���� ����帳�ϴ�."/></p>
							<p class="mT10"><a href="../sub01/sub01_1_1.jsp" ><img src="/images/common/btn_main_go.gif" alt="CEO �λ縻 �������� �̵�"/></a></p>
						</div>
						
						<div class="comMain02">
							<h3><img src="/images/info/main_tit_02.gif" alt="�����ȭ"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_02.gif" alt="������ ������ ������ ���� ���ο��� ����� ������� �����մϴ�."/></p>
							<p class="mT10"><a href="../sub01/sub01_2.jsp" ><img src="/images/common/btn_main_go.gif" alt="�����ȭ �������� �̵�"/></a></p>
						</div>
						<div class="comMain03">
							<h3><img src="/images/info/main_tit_03.gif" alt="Great KNOC 3020"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_03.gif" alt="���ο��� ��� �޴� ������ ��������ȸ��"/></p>
							<p class="mT10"><a href="../sub01/sub01_3.jsp" ><img src="/images/common/btn_main_go.gif" alt="Great KNOC 3020 �������� �̵�"/></a></p>
						</div>
					</div>
					<div class="comBox02">
						<div class="comMain04">
							<h3><img src="/images/info/main_tit_04.gif" alt="ȸ�翬��"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_04.gif" alt="�ѱ����������� ������ ����"/></p>
							<p class="mT10"><a href="../sub01/sub01_4.jsp"><img src="/images/common/btn_main_go.gif" alt="ȸ�翬�� �������� �̵�"/></a></p>
						</div>
						<div class="comMain05">
							<h3><img src="/images/info/main_tit_05.gif" alt="�������� 30���"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_05.gif" alt="�ѱ����������� 30�� �ɾ�� ������"/></p>
							<p class="mT10"><a href="../sub01/sub01_6.jsp" ><img src="/images/common/btn_main_go.gif" alt="�������� 30��� �������� �̵�"/></a></p>
						</div>
						<div class="comMain06">
							<h3><img src="/images/info/main_tit_06.gif" alt="ä������"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_06.gif" alt="â�����̰� �������� ���� �������� ��ٸ��ϴ�."/></p>
							<p class="mT10"><a href="../sub01/sub01_7_1.jsp" ><img src="/images/common/btn_main_go.gif" alt="ä������ �������� �̵�"/></a></p>
						</div>
					</div>
					<div class="comBox03">
						<div class="comMain07">
							<h3><img src="/images/info/main_tit_07.gif" alt="ã�ƿ��ô� ��"/></h3>
							<p class="mT10"><img src="/images/info/main_txt_07.gif" alt="�ѱ���������� ������ ������ �翡 �ֽ��ϴ�."/></p>
							<p class="mT10"><a href="../sub01/sub01_9.jsp"><img src="/images/common/btn_main_go.gif" alt="ã�ƿ��ô±� �������� �̵�"/></a></p>
						</div>
						<div class="comMain08">
							<div class="comSbox01">
								<h3><img src="/images/info/main_tit_08.gif" alt="���� �� �ο�"/></h3>
								<a href="../sub01/sub01_5.jsp"><img src="/images/common/btn_go.gif" alt="���� �� �ο� �������� �̵�"/></a>
							</div>
							<div class="comSbox02">
								<h3><img src="/images/info/main_tit_09.gif" alt="����ȸ"/></h3>
								<a href="../sub01/sub01_8.jsp"><img src="/images/common/btn_go.gif" alt="����ȸ �������� �̵�"/></a>
							</div>							
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
