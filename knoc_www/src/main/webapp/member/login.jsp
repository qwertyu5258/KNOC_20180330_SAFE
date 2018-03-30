<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","01");
	application.setAttribute("gNavMenuDepth4","00");
	Kcookie.setCookie(response , "okurl","/member/silmung_login.jsp" );
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>     
<% request.setCharacterEncoding("euc-kr"); %>    
<%
	String return_url=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("returnURL")));
	String mode=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("mode")));
	String bid=etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("bid")));
	if(return_url == null || return_url.equals("")) {
		return_url = etcutil.DOMAIN_URL + "/index.jsp";
	}  else {
		int tag1 = return_url.indexOf("?");
		if (mode != null && !mode.equals("")) {
			if (tag1 > 0) {
				return_url = return_url + "&mode=" + mode + "&bid=" + bid;
				
			} else {
				return_url = return_url + "?mode=" + mode + "&bid=" + bid;
			}
			if(request.getParameter("rtype")!=null){
				return_url += ("&rtype=" + request.getParameter("rtype"));
			}
		}
	}
	application.setAttribute("return_url",return_url );
		

	// ��й�ȣ �ټ� Ʋ���� �α��� ���� ���� ����	
	String sess = "";
	
	if(session.getAttribute("loginSession") == null || session.getAttribute("loginSession").equals("")){
		session.setAttribute("loginSession", "");
	}else{
		sess = (String)session.getAttribute("loginSession");
	}

	int chkCookie = 0;
	Cookie[] co = request.getCookies();	
	
	for (int i=0; i<co.length; i++) {
		if (co[i].getName().equals("cntPasswdCookie")) {
			chkCookie = 1;
		}
	}	
		
	if(sess.equals("YY") && chkCookie == 0){  
		session.setAttribute("loginSession", "");
	}else if(sess.equals("Y")){ // Y: ��й�ȣ üũ �������� �Ѿ�� ��
		Cookie cookie = new Cookie ("cntPasswdCookie", "Y");
		cookie.setMaxAge(600);	
		response.addCookie(cookie);
		
		session.setAttribute("loginSession", "YY");
		chkCookie = 1;
	}
	
	// ��й�ȣ �ټ� Ʋ���� �α��� ���� ���� ����
	
	
%>   
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript" >
	function submit_login(){
		frm = document.form_login;
		if(frm.id.value == ""){
			alert("���̵� �Է��ϼ���");
			frm.id.focus();
			return false;
		} else if(frm.passwd.value == ""){
			alert("�н����带 �Է��ϼ���");
			frm.passwd.focus();
			return false;
		} else {
			frm.action = "loginOk.jsp";
			frm.submit();
		}
	}

	function testAuth() {
		
		
		if(<%=chkCookie %> == 1){
			alert("��й�ȣ�� 5ȸ �̻� Ʋ���̽��ϴ�. �α����� ���� �˴ϴ�.");
			return false;
		}
		
		wWidth = 360;
	    wHight = 120;
	    
	    wX = (window.screen.width - wWidth) / 2;
	    wY = (window.screen.height - wHight) / 2;
	    
	    var w = window.open("/GPIN/Sample-AuthRequest.jsp", "gPinLoginWin", "directories=no,toolbar=no,left="+wX+",top="+wY+",width="+wWidth+",height="+wHight);
	    //var w = window.open("http://gpin.knoc.co.kr/Sample-AuthRequest.jsp", "gPinLoginWin", "directories=no,toolbar=no,left="+wX+",top="+wY+",width="+wWidth+",height="+wHight);
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
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">�α���</span></div>
            <!--// location: end //-->
            
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_login.gif" alt="�α���" /></h3>
                </div>
                <div class="members">
					<h4 class="mT30"><img src="../images/member/img_i_pin_02.gif" alt="����������(i-pin) ����" /></h4>
                	
					<div class="loginBox4">
						<p><img src="../images/member/img_login_text01.gif" alt="�ѱ��������� Ȩ�������� �湮���ּż� �����մϴ�." /></p>
						
						<div class="ipinTxt">
	<img src="../images/member/img_i_pin_05.gif" alt="�츮 �ѱ���������� ������ ȸ������ ������ �����ϴ�. �Խñ� �ۼ� �� Ȩ������ �̿��� i-pin ������ �̿��Ͽ� �ֽñ� �ٶ��ϴ�. I-PIN�� �������� ��������� ���� �ֹε�Ϲ�ȣ�� ����ϴ� ���ͳݻ��� ���νĺ���ȣ�� �ǹ��մϴ�. ������Ÿ� �̿����� �� ������ȣ � ���� ���� �� 23���� 2(�ֹε�Ϲ�ȣ���� ȸ������ ���)�� ���� Ȩ������ �Խ��ǿ� ���� �Խ��Ҷ� �ݵ�� ����������(I-PIN) ������ �����ž� �մϴ�. ����������(I-PIN)�� ������ �е��� ��� �� ����Ͽ� �ֽñ� �ٶ��ϴ�." /></div>
						<div class="btnCen"><a href="/GPIN/Sample-AuthRequest.jsp" onclick="testAuth();return false;" target="_blank" title="��â"><img src="../images/member/btn_i_pin.gif" alt="����������(I-PIN) ����" /></a></div>
					</div>
					<!-- ȸ������ ����[2011.07]
 					<h4><img src="../images/member/img_login_55.gif" alt="���� ȸ������ �α���" /></h4>
 					
 					
					<div class="loginBox2">
						<p><img src="../images/member/img_login_text.gif" alt="�ѱ��������� Ȩ�������� �湮���ּż� �����մϴ�." /></p>
						<form name="form_login" method="post" action="<%=etcutil.SSL_DOMAIN_URL %>/member/loginOk.jsp" onsubmit="submit_login();return false;" AUTOCOMPLETE="OFF">
						<fieldset>
						<legend>�α���</legend>
						
						<input type="hidden"  name="mode" value="login" />
						<input type="hidden"  name="return_url" value="<%=return_url %>" />
						<div class="idSearch">
                        	<ul>
                            <li><label for="id"><img src="../images/member/img_login_id.gif" alt="���̵�" class="pt03" /></label><span class="pr23"></span> <input type="text" id="id" name="id" maxlength="20" class="login" title="���̵� �Է��ϼ���" /></li>
							<li><label for="passwd"><img src="../images/member/img_login_pw.gif" alt="��й�ȣ" class="pt03" /></label><span class="pr10"></span> <input type="password" id="passwd" name="passwd" maxlength="32" class="login" title="��й�ȣ�� �Է��ϼ���" /></li>
                            </ul>							
							<div class="btn_id"><input type="image" src="../images/member/btn_submit.gif" alt="Ȯ��" /></div>
						</div>
						</fieldset>
						
						<ul class="loginTxt">
						<li><img src="../images/member/img_find.gif" alt="���̵�/��й�ȣ�� �Ҿ�����̳���?" class="vMid pr10" /> <a href="id_find.jsp" title="���̵� ã��"><img src="../images/member/btn_id_find.gif" alt="���̵� ã��" class="vMid" /></a> <a href="pw_find.jsp"><img src="../images/member/btn_pw_find.gif" alt="�н����� ã��" class="vMid" /></a></li>
						<li><img src="../images/member/img_joinus.gif" class="vMid pr10" alt="�ѱ����������� ȸ���� �ƴϽø� ���� �����ϼ���." /> <a href="pre_join.jsp" ><img src="../images/member/btn_joinus.gif" alt="ȸ������" class="vMid"/></a></li>
						</ul>
						</form>
					</div> 
					 -->
                    
              </div>
            </div>
        </div>
    
      </div>
    
        <!--// footer: start //-->
		<%@include file="/include/comfooter.jsp"%>
		<!--// footer: end //-->
    </div>
    
</body>
</html>