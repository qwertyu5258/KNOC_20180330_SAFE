<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>       
<% request.setCharacterEncoding("euc-kr"); %> 
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
	function find_id(){
		frm = document.idform;
		if(frm.name.value == ""){
			alert("�̸��� �Է��ϼ���");
			frm.name.focus();
			return false;
		} else if(frm.email.value == ""){
			alert("�̸��� �ּҸ� �Է��ϼ���");
			frm.email.focus();
			return false;
		} else {
			frm.submit();
		}
	}
</script>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
    <div id="contents">
        <%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
        <div id="rightarea">
            <div id="subcnts">
               <%@include file="/include/subtop_member.jsp"%>
                <!--// location: start //-->
                <div class="locadv">
					
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">���̵� ã��</span></div>				
            <!--// location: end //-->
			
				<!-- [2009-09-29 ǥ���ڵ��� ���� ����] �ۼ���:������ -->
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_id_find.gif" alt="���̵� ã��" /></h3>
                </div>
				
				<div class="members">
					<div class="memBox">
						<div class="loginTxt"><img src="../images/member/img_login_text.gif" alt="�ѱ��������� Ȩ�������� �湮���ּż� �����մϴ�." />
							<ul>
							<li><img src="../images/member/img_id_find_01.gif" alt="�̸��� �̸����� �Է��Ͻ� �� Ȯ�� ��ư�� �����ּ���" /></li>
							<li><img src="../images/member/img_id_find_02.gif" alt="�Է��Ͻ� �̸��� �̸����� ��ġ�� ��� ���̵� Ȯ���Ͻ� �� �ֽ��ϴ�." /></li>
							</ul>
						</div>
						<form name="idform" method="post" action="<%=etcutil.SSL_DOMAIN_URL %>/member/id_ok.jsp" onsubmit="find_id();return false;"> 
						<fieldset>
							<legend>���̵� ã��</legend>
							<div class="idSearch">
								<ul>
								<li><label for="name" class="mR20"><img src="../images/member/img_pw_find_name.gif" alt=" �̸�" class="pt03" /></label> <input type="text" id="name" name="name" maxlength="20" value="" class="login" title="�̸��� �Է��ϼ���" /></li>
								<li><label for="email" class="mR20"><img src="../images/member/img_id_find_email.gif" alt="�̸���" class="pt03" /></label> <input type="text" id="email" name="email" maxlength="200" value="" class="login" title="�̸����� �Է��ϼ���" /></li>
								</ul>
								<div class="btn_id"><input type="image" src="../images/member/btn_submit.gif" alt="Ȯ��"/></div>
							</div>
						</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
    
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
</body>
</html>