<%@page import="java.util.HashMap"%>
<%@page import="kr.co.knoc.sinmungo.SinmungoUserManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	
	SinmungoUserManager manager = new SinmungoUserManager();
	
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */	
	String user_id = request.getParameter("user_id");
	if(user_id == null){user_id="";}
	
	HashMap hash = manager.getAdminInfo(user_id); 
	
	
	String resultMsg = "";
	String returnUrl = "";
	
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */	
	 if(hash != null) {	 
		if(hash.get("USER_ID") == null){ //ȸ��üũ	
			resultMsg = "������ ���̵� �� ��й�ȣ�� ��ġ���� �ʽ��ϴ�. Ȯ�����ֽʽÿ�.";
		}else{
			if(!hash.get("USER_PWD").equals(request.getParameter("user_pwd").toString())){ //�н����� üũ
				resultMsg = "�н����尡 �ٸ��ϴ�.";
				returnUrl = "main.jsp";
			}else{ //�α���SUCCESS
				session.setAttribute("SINMUNGO_ID", hash.get("USER_ID"));
				session.setAttribute("SINMUNGO_EMAIL", hash.get("EMAIL"));
				session.setAttribute("SINMUNGO_PHONE", hash.get("PHONE"));
				session.setAttribute("SINMUNGO_STATUS_NO", hash.get("STATUS_NO"));
				
				
				
				
				if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("3")){ //����
					session.setAttribute("SINMUNGO_OBM_TYPE", hash.get("USER_ID"));
					returnUrl = "list.jsp";
				}else{//�Ϲ�
					returnUrl = "notice.jsp";
				}
			}
		}
	}else{
		resultMsg = "������ ���̵� �� ��й�ȣ�� ��ġ���� �ʽ��ϴ�. Ȯ�����ֽʽÿ�.";
	}		
	
	
%>   

 
<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<div id="contentsLayer">
<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
<script type="text/javascript">
<!--
<%
if(resultMsg.length() > 0){
%>
alert("<%=resultMsg %>");
location.href = "/ombudsman/main.jsp";
<%
}

if(resultMsg.length() == 0){
	//if(session.getAttribute("SINMUNGO_STATUS_NO").toString().trim().equals("1")){	
%>
location.href = "<%=returnUrl %>";
<%
	//}
}
%>

//-->
</script>
	<div id="rightarea">
		<div id="subcnts">	
			<!-- �������� ������û[start] -->
			<%@include file="/include/subtop_04.jsp"%>
			<!-- �������� ������û[end] -->
			
			<!--// location: start //-->
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
				&gt; <span>������</span>&gt; <span class="locanow">û�� �Ⱥ�� �Ű���</span>
			</div>
			<!--// location: end //-->

			<div class="pagetle">				
				<h3><img src="/images/customer/ttl_sub04_8_1.gif" alt="�λ� ûŹ&bull;�˼� �Ź���" /></h3>
			</div>
			<div class="customer">
			<h4 class="mT0 pb10"><img src="../images/customer/sinmungo_tit.gif" alt="'�λ�ûŹ,�˼� �Ź���' '�ȳ��� �λ�ûŹ,�˼� �Ź���'�� �λ� ûŹ,�˼����� ���� �������� �����ο� �ǰ߰����� �����Ͽ� ���� �� �λ� �Ұ��������� �����ϱ� ���Ͽ� ��Ǵ� ���Դϴ�." /></h4>	
			<div class="declaration" >						
				<ul>
					<li> ���� �����鸸 �̿��Ͽ� �ֽð�, ����� �����Ͽ� ����û, ������� ����, �ο� �� �Ű���� ���� ������ �ܺΰ������� ������, ��/��������, ���ο�/�Ű� �̿��Ͽ� �ֽñ� �ٶ��ϴ�. </li>
					<li> ���� �λ��̵���� �� �λ����� �系���� e-HR �޴��� �λ���� �ý����� �̿����ֽñ� �ٶ��ϴ�. </li>
					<li> ���λ� ûŹ���˼� �Ź����� ����� �ǰ��� ������������ �λ����常 Ȯ�� �����ϸ�, �������� �ſ��� Ȯ�ε��� �ʽ��ϴ�. </li>
				</ul>						
			</div>
				
			<div class="btnsec" style="text-align: center; margin-top: 20px">
				<a href="#boardsec" onclick="goPage(); return false;"><img src="/images/member/btn_write.gif" alt="�۰Խ��ϱ�" ></a>						
			</div>
			</div>	
		</div>
	</div>
</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</body>
</html>

