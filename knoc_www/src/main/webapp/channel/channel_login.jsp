<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
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
<%@include file="/include/comheader.jsp"%>
<script type="text/javascript">
	//<![CDATA[
	function submit_chk(f) {
		if(!f.id.value) {
			window.alert('���̵� �Է��ϼ���.');
			f.id.focus();
			return false;
		}else{
	  
			var special = ",;'#/*";
			for(var i = 0 ; i < f.id.value.length; i++)
			{
				ch = f.id.value.charAt(i); //���̵� �Է����� ���� �ϳ��� �����´�.
				for(var j=0; j < special.length; j++)
				{ 
					if(ch == special.charAt(j))
	   				{
						alert("Ư�� ���ڴ� �ȵ˴ϴ�.");
	    					f.id.value = "";
						f.id.focus();
	    					return false;
					}
				}
			}
		}
		if(!f.passwd.value) {
			window.alert('��й�ȣ�� �Է��ϼ���.');
			f.passwd.focus();
			return false;
		}
	}
	//]]>	
</script>

	<!--// subtopNavi: start //-->
	<%@include file="/include/subtopnavi_new.jsp"%>
	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
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
				<!-- 2009-10-24 �α��� ����-->
				<div id="substar">
					<p><img src="../../images/info/img_great_knoc_02_new.gif" alt="GREAT Way�� �系�������� �濵���� ���� �����ο� �ǰ߰����� �����Ͽ� â������ �����ȭ�� �����ϱ� ���Ͽ� ��Ǵ� ���Դϴ�." /></p>
					<div class="comLogin">
						<fieldset>
						<legend>�α���</legend>
						<form name="log_in" action="channel_login_proc.jsp" method="post" onsubmit="return submit_chk(this);">              	
							
							<div class="loginBox">
								
								<p class="blindtext">�ѱ��������� Ȩ�������� �湮�� �ּż� �����մϴ�.</p>
								
								<div><label for="id"><img src="../images/member/img_login_id.gif" alt="���̵�" /></label><input type="text" id="id" name="id" maxlength="20" /></div>
								
								<div><label for="passwd"><img src="../images/member/img_login_pw.gif" alt="��й�ȣ"/></label><input type="password" id="passwd" name="passwd" maxlength="32" /></div>
							
							</div>
							<div class="loginbtn"><input type="image" src="../images/member/btn_submit.gif" alt="Ȯ��"/></div>
						
						</form>

						</fieldset>
					</div>
              
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>���� </td>
						<td class="contact_user"><strong>����� : </strong>�ּ���</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2033</td>
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