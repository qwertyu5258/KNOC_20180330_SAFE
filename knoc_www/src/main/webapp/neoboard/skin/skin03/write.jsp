<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.neoboard.data.*, com.neoboard.* , com.neoboard.session.*, com.neoboard.tags.JUtil, com.neoboard.util.* " %>
<%@taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>

<jsp:useBean id="bm" class="com.neoboard.NeoBoardManager" scope="page" />
<jsp:useBean id="etcutil" scope="page" class="com.neoboard.util.EtcUtil" />
<%
	String sessionName = (String)pageContext.getAttribute("NB_SESNAME",PageContext.REQUEST_SCOPE);

	UserSession userSession = null;
	if(sessionName == null || sessionName.equals(""))
		userSession = (UserSession)session.getAttribute("USERSESSION");
	else
		userSession = (UserSession)session.getAttribute(sessionName);

	PageAttribute pageBean = (PageAttribute)pageContext.getAttribute("NB_PAGE",PageContext.REQUEST_SCOPE);

	Search schBean = (Search)pageContext.getAttribute("NB_SEARCH",PageContext.REQUEST_SCOPE);

	Property propBean = (Property)pageContext.getAttribute("NB_PROPERTY",PageContext.REQUEST_SCOPE);

	Authority authBean = (Authority)pageContext.getAttribute("NB_AUTHORITY",PageContext.REQUEST_SCOPE);

	String skinRoot = Property.SKIN_URL_IMG + "/" + propBean.getSkinID();
	String neoRoot = Property.ROOT_URL;
%>

<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function do_submit(f) {

		if(f.subject.value == "") {
			alert("�� ������ �Է��� �ֽñ� �ٶ��ϴ�.");
			f.subject.focus();
			f.subject.select();
			return;
		}

		if(f.name.value == "") {
			alert("������ �Է��� �ֽñ� �ٶ��ϴ�.");
			f.name.focus();
			f.name.select();
			return;
		}


		if(f.passwd.value=='') {
			alert("��й�ȣ�� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.passwd.focus();
			return;
		}
		/**
		if(f.HTML_BODY.value =="") {
			alert("�� ������ �Է��� �ֽñ� �ٶ��ϴ�.");
			f.HTML_BODY.focus();
			return;
		}
		**/
		if(!checkAllFileExt(f)){
			alert("�����Ͻ� ������ ���ε� �� �� �����ϴ�.");
			return;
		}

		if(confirm("���� ����Ͻðڽ��ϱ�?")) {

			oEditors.getById["HTML_BODY"].exec("UPDATE_IR_FIELD", []);
			// �������� ���뿡 ���� �� ������ �̰����� textarea �ʵ��� ir1�� ���� �̿��ؼ� ó���ϸ� �˴ϴ�.

			if (checkBanwd(f.subject) && checkBanwd(f.HTML_BODY)) { //������ üŷ
				try{
					// �� ������ ���� ��� ���� ���� ���� �޶����� �ֽ��ϴ�.
					f.submit();
				}catch(e){}
			}
		}
	}

// ���ε� ������ Ȯ���� �˻�
	function filterExtension(obj){
		if( !checkFileExt(obj) ) alert ( "�����Ͻ� ������ ���ε� �Ͻ� �� �����ϴ�. �ٽ� �������ּ���" );
	}

	// ���ε� ������ Ȯ���� �˻�
	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	function checkFileExt(obj){
		<%
		String strDefaultNotAllowedExtension = propBean.getDefaultNotAllowedExtension();
		if(strDefaultNotAllowedExtension == null) { strDefaultNotAllowedExtension = ""; }
		strDefaultNotAllowedExtension = strDefaultNotAllowedExtension.replaceAll(",","|");
		%>
		if( obj.value.toLowerCase().match(/(<%=strDefaultNotAllowedExtension%>)$/) ){
			return false;
		}

		return true;
	}

	function checkAllFileExt(f){
	<%for( int i = 1 ; i <= propBean.getMaxFileAttach() ; i++) {%>
		if ( f.file<%=i%>.value != "" ){
			if(!checkFileExt(f.file<%=i%>) ) return false;
		}
	<%}%>

		return true;
	}

// ������ �˻� �Լ�
	function checkBanwd(obj) {
	    var banwd = new Array();
<%
	    String[] banwd_ar;
		if (propBean.getBanwd() != null && !propBean.getBanwd().equals("")){
			banwd_ar = propBean.getBanwd().split(",");
			for (int i = 0; i < banwd_ar.length; i++) {
%>
				banwd[<%=i%>] = "<%=banwd_ar[i]%>";
<%
			}
%>
		var len = banwd.length;
	    var content = obj.value;
	    var ban_text = "";
	    var idx = -1;
	    for(i = 0 ; i < len ; i++) {
	        idx = content.indexOf(banwd[i]);
	        if(-1 < idx) {
	            alert("'" + banwd[i] + "'��(��) ����� �� ���� �ܾ��Դϴ�.");
	            return false;
	        }
	    }
<%
		}
%>
		return true;
	}

	function openZipcode() {
		//window.open("/member/pop_post.jsp","pop_post","width=362,height=280,scrollbars=yes");
		
		new daum.Postcode({
			oncomplete: function(data) {

            var fullAddr = ''; // ���� �ּ� ����

            // ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
            if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                fullAddr = data.roadAddress;

            } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                fullAddr = data.jibunAddress;
            }				

  		 	document.getElementById('zipno1').value = data.zonecode; //5�ڸ� �������ȣ ���
  		 	document.getElementById('addr1').value = fullAddr;
  		 	document.getElementById('addr2').focus();

			}
		}).open();		
		
	}

	function setZipcode(zipcode1,zipcode2,addr1) {
		document.writeform.zipno1.value = zipcode1;
		document.writeform.addr1.value = addr1;
	}
</script>
<script type="text/javascript" src="/neoboard/js/comm.js"></script>
<!-- SmartEditor ���� -->
<script type="text/javascript" src="/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<!-- form -->
<div id="boardsec">
<form name="writeform" method="post" action="<%=etcutil.SSL_DOMAIN_URL%><%=Property.SERVLET_ROOT%>/RegistArticle?bid=<%=propBean.getBoardID()%>&amp;callback=<%=pageBean.getPageUrl()%>&amp;ses=<%=sessionName%>&amp;grp=<%=schBean.getGroup()%>" enctype="multipart/form-data">
<input name="id" type="hidden" value="<%= userSession==null ? "":userSession.getUserID()%>" />
<input name="virtualno" type="hidden" value="<%= userSession==null ? "":userSession.getUserVirtualno()%>" />
<input name="secret" type="hidden" value="1" />
	<table cellspacing="0" cellpadding="0" class="viewtype" summary="<%=propBean.getBoardName() %>�� �Խù��� ����մϴ�">
	<caption><%=propBean.getBoardName() %>�Խù����</caption>
	<colgroup><col width="110px" /><col width="130px" /><col width="110px" /><col width="130px" /><col width="110px" /><col width="130px" /></colgroup>
		<tr>
			<th scope="row" class="th1"><label for="name">* ����</label></th>
			<td class="td1"><input type="text" id="name" name="name" class="input" style="width:110px;" value="<%= userSession==null ? "":userSession.getUserName() %>" maxlength="32" <%if(userSession!=null && propBean.getUseAuth().equals("1")) { %>readonly="readonly"<% } %> /></td>
                       	<th scope="row" class="th1"><label for="passwd">* ��й�ȣ</label></th>
			<td class="td1" colspan="3"><input type="password" value="" id="passwd" name="passwd" class="input" style="width:110px;" maxlength="16" /></td>
                        <!-- <th scope="row" class="th1">��й�ȣ Ȯ��</th>
			<td class="td1"><input type="text" value="" id="subjtxt" class="input" style="width:110px;" /></td> -->
		</tr>
		<tr>
			<th scope="row" class="th1" rowspan="3"><label for="zipno1">�ּ�</label></th>
			<td class="td1" colspan="5"><input type="text" value="" id="zipno1" name="zipno1" class="input" style="width:60px;" maxlength="3" readonly onclick="openZipcode();" title="�����ȣ ���ڸ�"/> <a href="#" onclick="openZipcode();"><img src="<%=skinRoot %>/images/btn_se.gif" align="top" alt="�ּ�ã��" title="�����ȣ ���ڸ�"/></a></td>
		</tr>
		<tr>
	         <td class="td1" colspan="5"><input type="text" value="" id="addr1" name="addr1" maxlength="200" class="input" style="width:580px;" readonly onclick="openZipcode();" title="�⺻�ּ�"/></td>
		</tr>
	    <tr>
	         <td class="td1" colspan="5"><input type="text" value="" id="addr2" name="addr2" maxlength="200" class="input" style="width:580px;" title="������ �ּ�"/></td>
		</tr>
		<tr>
			<th scope="row" class="th1"><label for="email">�̸���(����)</label></th>
			<td class="td1" colspan="5"><input type="text" id="email" name="email" class="input" style="width:580px;" value="" maxlength="200" /></td>
		</tr>
		<tr>
			<th scope="row" class="th1"><label for="tel1">��ȭ��ȣ</label></th>
			<td class="td1" colspan="5"><input type="text" value="" id="tel1" name="tel1" class="input" style="width:25px;" maxlength="3" title="������ȣ"/> - <input type="text" value="" id="tel2" name="tel2" class="input" style="width:25px;" maxlength="4" title="����"/> - <input type="text" value="" id="tel3" name="tel3" class="input" style="width:25px;" maxlength="4"  title="��ȭ��ȣ ���ڸ�"/></td>
		</tr>
		<tr>
			<th scope="row" class="th1">��������</th>
			<td class="td1" colspan="5"><label for="open_a">��������û <input name="viewStatus" type="radio" id="open_a" value="��������û" checked="checked" /></label> <label for="open_b">�纻����¹� <input name="viewStatus" type="radio" id="open_b" value="�纻����¹�" /></label> <label for="open_c">�������� <input name="viewStatus" type="radio" id="open_c" value="��������" /></label> <label for="open_d">��������ȭ�� <input name="viewStatus" type="radio" id="open_d" value="��������ȭ��" /></label> <label for="open_e">��Ÿ <input name="viewStatus" type="radio" id="open_e" value="��Ÿ" /></label></td>
		</tr>
		<tr>
			<th scope="row" class="th1">���ɹ��</th>
			<td class="td1" colspan="5"><label for="recive_a">�����湮 <input name="kind" type="radio" value="�����湮" id="recive_a" checked="checked" /></label> <label for="recive_b">���� <input name="kind" type="radio" id="recive_b" value="����" /></label>   <label for="recive_c">������� <input name="kind" type="radio" id="recive_c" value="�������" /></label>   <label for="recive_d">���ڿ��� <input name="kind" type="radio" id="recive_d" value="���ڿ���" /></label>  <label for="recive_e">��Ÿ <input name="kind" type="radio" id="recive_e" value="��Ÿ" /></label>  </td>
		</tr>
		<tr>
			<th scope="row" class="th1">������</th>
			<td class="td1" colspan="5"><label for="use_a">�м����� <input name="object" type="radio" id="use_a" value="�м�����" checked="checked" /></label> <label for="use_b">������� <input name="object" type="radio" id="use_b" value="�������" /></label> <label for="use_c">�������� <input name="object" type="radio" id="use_c" value="��������" /></label> <label for="use_d">��۰��� <input name="object" type="radio" id="use_d" value="��۰���" /></label> <label for="use_e">������ <input name="object" type="radio" id="use_e" value="������" /></label> <label for="use_f">��Ÿ <input name="object" type="radio" id="use_f" value="��Ÿ" /></label></td>
		</tr>
		<tr>
			<th scope="row" class="th1">�����ᰨ��</th>
			<td class="td1" colspan="5"><label for="commission_a">�ش� <input name="cut" type="radio" value="�ش�" id="commission_a" checked="checked" /></label> <label for="commission_b">�ش���� <input name="cut" type="radio" id="commission_b" value="�ش����" /></label></td>
		</tr>
		<tr>
			<th scope="row" class="th1"><label for="cutContent">�����ᰨ�����</label></th>
			<td class="td3" colspan="5"><input type="text" id="cutContent" name="cutContent class="input" style="width:580px;" maxlength="200" /><p><p>
                        <font style="color:#D32602">�ذ�������� ���������� ���� ��������� �� 17����3���� ������ ���Ͽ� ������ ������ �ش��ϴ� ��쿡 �����ϸ�, ��������� ������ �� �ִ� ������ ÷���Ͻñ� �ٶ��ϴ�.</font>

                        </td>
		</tr>
		<tr>
			<th scope="row" class="th1"><label for="subjtxt">��&nbsp;&nbsp;��</label></th>
			<td class="td1" colspan="5"><input type="text" value="" id="subjtxt" name="subject" class="input" style="width:570px;" maxlength="<%=propBean.getMaxSubjectLength()%>" /></td>
		</tr>
		<% if ( propBean.getUseGroup().equals("1")) { %>
		<!--  �׷� ����  -->
		<tr>
			<th scope="row" class="th1"><label for="grp">�׷켱��</label></th>
			<td class="td1" colspan="5">
				<select name="grp" id="grp" style="wihdt:150px;">
				<option value="" >������ �ּ���</option>
				<%=com.neoboard.PropertyManager.getGroupSelect(propBean.getBoardID(), "") %>
				</select>
			</td>
		</tr>
		<!-- �׷� ����  -->
		<% } %>
		<tr>
			<th scope="row" class="th1"><label for="htmlBody">��&nbsp;&nbsp;��</label></th>
			<td class="td12" colspan="5"><textarea name="HTML_BODY" id="HTML_BODY" cols="95" rows="15" class="area"></textarea></td>
		</tr>
		<% if ( propBean.getUseMovie().equals("1")) { %>
		<tr>
			<th scope="row" class="th1"><label for="url">������ URL</label></th>
			<td class="td1" colspan="5">
				<input type="text" value="" name="url" id="url" class="input" style="width:430px;" maxlength="200" />
			</td>
		</tr>
		<% } %>
		<tr>
			<th scope="row" class="th1"><label for="fileadd">÷������</label></th>
			<td class="td1" colspan="5">
				<div class="filedv1">
			<%
			if (propBean.getMaxFileAttach() > 0) {
				for( int i = 1 ; i <= propBean.getMaxFileAttach(); i++) {
					%>
					<input type="file" name="file<%=i%>" id="file<%=i%>" value="" class="input" style="width:330px;" title="÷������<%=i%>" /><span class="f_pad"> <%=propBean.getMaxUploadLimit("MB")%></span><br />
					<%
					}
				}
			%>
				</div>
			</td>
		</tr>
        <tr>
			<th scope="row" class="th1">�������ȭ��ȣ</th>
			<td class="td1" colspan="5">����� : �ѹ�����ó �ѹ��� ������ ��� Tel. 031-380-2308</td>
		</tr>
	</table>
</form>
	<div class="boardbtm">
		<div class="btnsec">
			<!--a href="#" onclick="do_submit(document.writeform);"><img src="<%=skinRoot %>/images/btn_ok.gif" alt="Ȯ��" /></a-->
			<input type="image"  onclick="do_submit(document.writeform);" src="<%=skinRoot %>/images/btn_ok.gif" alt="Ȯ��" />
			<a href="<%=pageBean.getPageUrl()%><%=pageBean.makeQueryString("list",true)%><%=schBean.makeQueryString("","bid=" + propBean.getBoardID()+"&amp;ses="+sessionName,false)%>"><img src="<%=skinRoot %>/images/btn_cancel.gif" alt="���" /></a>
		</div>
	</div>
</div>

<!-- form //-->

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "HTML_BODY",
	sSkinURI: "/smartEditor/SEditorSkin.html",
	fCreator: "createSEditorInIFrame"
});
</script>