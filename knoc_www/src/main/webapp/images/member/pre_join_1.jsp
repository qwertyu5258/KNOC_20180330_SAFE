<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="kr.co.knoc.util.*" %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	
	Kcookie.setCookie(response , "okurl","/member/join.jsp" );
	
%>     
<%@include file="/include/comheader.jsp"%>

<script type="text/javascript" language="javascript">
//<![CDATA[
//<!--
	function testAuth() {
	    wWidth = 360;
	    wHight = 120;
	    
	    wX = (window.screen.width - wWidth) / 2;
	    wY = (window.screen.height - wHight) / 2;
	    
	    var w = window.open("/GPIN/Sample-AuthRequest.jsp", "gPinLoginWin", "directories=no,toolbar=no,left="+wX+",top="+wY+",width="+wWidth+",height="+wHight);
	}
//-->
//]]>
</script>
<body>
<div id="wrap">
	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

    <div id="contents">
    <%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
    
        <div id="rightarea">
            <div id="subcnts">
               <%@include file="/include/subtop_member.jsp"%>
                <!--// location: start //-->
                <div class="locadv">
                    <a href="/"><img src="/images/common/loca_home.gif" alt="HOME" /></a>
                    &gt; <span>��Ÿ����
</span>
                    &gt; <span>ȸ������
</span>
                    &gt; <span class="locanow">ȸ������</span>
                </div>
                <!--// location: end //-->
            
                <!-- [2009-09-29 ǥ���ڵ��� ���� ����] �ۼ���:������ -->
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_join.gif" alt="ȸ������" /></h3>
                </div>
                <div class="members3">
					<div class="step"><img src="../images/member/tit_step02.gif" alt="02.�Ǹ�����-�پ��� ���񽺸� �̿��غ�����" />
						<ul class="stepCon">
						<li class="mL0"><img src="../images/member/img_step01.gif" alt="STEP 01.�������" /></li>
						<li><img src="../images/member/img_step02on.gif" alt="STEP 02.�Ǹ�����(����������)" /></li>
						<li><img src="../images/member/img_step03.gif" alt="STEP 03.�������Է�" /></li>
						<li><img src="../images/member/img_step04.gif" alt="STEP 04.���ԿϷ�" /></li>
						</ul>
					</div>
                	<!-- star_���� -->
					<h4><img src="/images/member/join_title2.gif" alt="�Ǹ�����" /></h4>
					<div>
						<ul>
						<li><img src="/images/member/join_txt01.gif" alt="Ȩ�������� ���� ��Ȱ�� ���񽺿�" />
							<span class="blindtext"> �¶��λ��� �͸����ڷ� ���� ���ظ� �����ϱ� ���Ͽ� �Ǹ����� ���񽺸� �ǽ��ϰ� �ֽ��ϴ�. ������ �Է��Ͻ� ����� �ֹε�Ϲ�ȣ�� ������� �ʰ� �Ǹ�Ȯ�� ������ ���ؼ��� �̿���� �˷��帳�ϴ�. </span></li>
						<li><img src="/images/member/join_txt02.gif" alt="�ѱ����������" />
							<span class="blindtext">����������ȣ�� ���� �ּ��� ����� ����̰� �ֽ��ϴ�. </span></li>
						<li><img src="/images/member/join_txt03.gif" alt="������ ����������" />
							<span class="blindtext">���� ���� �������� ������, ����������ȣ��å�� ���� ��ȣ�ް� �ֽ��ϴ�.</span></li>
						</ul>
					</div>
					<div class="btnCen"><a href="#" onclick="testAuth();" onkeypress="testAuth();"><img src="/images/member/btn_pre_name.gif" alt="�Ǹ�Ȯ��" border="0" /></a></a></div>
					<p>�Ǹ�Ȯ���� ���ͳݻ��� ���κ���ȣ�� �ǹ��ϸ�, ���Ȯ���� ����� ���ͳݿ��� �ֹε�Ϲ�ȣ�� ������� �ʰ� �������� Ȯ���� �� �ִ� �����Դϴ�.</p>
                    <!-- end_���� -->
                </div>
            </div>
        </div>
    
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
</body>
</html>