<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>    
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.channel.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="ChannelMa" scope="page" class="kr.co.knoc.channel.ChannelManager" />
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>  
<% request.setCharacterEncoding("euc-kr"); %>
<%@include file="/channel/_channel_inc.jsp"%>
<%	
	if (channel_user_id == null || (!channel_user_id.equals(_CHANNEL_USER)
		&& !channel_user_id.equals(_CEO_USER)))  
	{ 
%>
<script type="text/javascript">
	location.href = "channel_login.jsp";	
</script>
<%		
		return;
	} 
	
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")));	
%>        

<%@include file="/include/comheader.jsp"%>
<!-- SmartEditor ���� -->
<script type="text/javascript" src="/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
//<!--
	String.prototype.trim = function() {
	    return this.replace(/(^ *)|( *$)/g, "");
	}
	function do_submit(f) {
		//oEditors.getById["content"].exec("UPDATE_IR_FIELD", []);
		if(f.subject.value.trim() == "") {
	 		alert('������ �Է��ϼ���.');
	 		f.subject.focus();
	 	}
 		else if(document.getElementById("content").value.trim() == "") {
	 		alert('������ �Է��ϼ���.');
	 		//oEditors.getById["content"].exec("FOCUS",[]);
			f.content.focus();
	 	}
	 	else if(f.pwd.value == "") {
	 		alert('��й�ȣ�� �Է��ϼ���.');
	 		f.pwd.focus();
	 	}
	 	else if(f.pwd.value.length < 6) {
	 		alert('��й�ȣ�� �ּ� 6�� �̻� �Է��ϼž߸� �մϴ�.');
	 		f.pwd.focus();
	 	}
		else if(!check_pwd(f.pwd.value)){
			alert('��й�ȣ�� ���� ���ڸ� �ݵ�� ȥ���Ͽ��߸��մϴ�.');
			f.pwd.focus();
		}
	 	else {
 			try{
				f.submit();
			}catch(e){}
	 	}

	}
	function check_pwd(str) {
		var reg = new RegExp("^[0-9a-zA-Z]+$");
		var reg2 = new RegExp("[0-9]+");
		var reg3 = new RegExp("[a-zA-Z]+");
		return reg.test(str) && reg2.test(str) && reg3.test(str);
	}
//-->		
</script>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>CEO</span>
                    &gt; <span class="locanow">GREAT WAY</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_1_4.gif" alt="GREAT WAY" /></h3>
				</div>
				
				<div id="boardsec">
					<table cellspacing="0" cellpadding="0" class="viewtype" summary="GREAT WAY �Խ����� �������� �Է��մϴ�.">
					<caption>GREAT WAY �۾���</caption>
					<colgroup><col width="100px" /><col width="620px" /></colgroup>
<form action="channel_proc.jsp" method="post" name="abs_w" onsubmit="do_submit(this); return false;">
<input type="hidden" name="m" value="W">					
						<tr>
							<th scope="row" class="th1"><label for="subject">��&nbsp;&nbsp;��</label></th>
							<td class="td1"><input type="text" value="" id="subject" name="subject" maxlength="200" class="input" style="width:570px;" /></td>
						</tr>
						<tr>
							<th scope="row" class="th1"><label for="content">��&nbsp;&nbsp;��</label></th>
							<td class="cnts1"><textarea name="content" id="content" cols="120" style="width:100%;height:300px" class="inputST"></textarea></td>
						</tr>
				
						<tr>
							<th scope="row" class="th1"><label for="pwd">��й�ȣ</label></th>
							<td class="cnts1"><input type="password" value="" id="pwd" name="pwd" maxlength="20" class="input" style="width:330px;"> (��й�ȣ�� ���� ���� ȥ�� 6�� �̻��Դϴ�.)</td>
						</tr>				
					</table>
					<div class="boardbtm mtm10">
						<div class="btnsec">
							<input type="image" src="/images/board/btn_write.gif" alt="�۾���" />
							<a href="channel_list.jsp"><img src="/images/board/btn_list.gif" alt="���" /></a>
						</div>
					</div>
</form>							
										
				</div>	
				
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>				