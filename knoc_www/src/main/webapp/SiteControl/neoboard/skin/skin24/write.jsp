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

			//oEditors.getById["HTML_BODY"].exec("UPDATE_IR_FIELD", []);
			// �������� ���뿡 ���� �� ������ �̰����� textarea �ʵ��� ir1�� ���� �̿��ؼ� ó���ϸ� �˴ϴ�.

			if (checkBanwd(f.subject) && checkBanwd(f.content)) { //������ üŷ
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
</script>
<script type="text/javascript" src="/neoboard/js/comm.js"></script>
<!-- SmartEditor ���� -->
<script type="text/javascript" src="/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<!-- form -->
<div id="boardsec">
	<table cellspacing="0" cellpadding="0" class="viewtype" summary="<%=propBean.getBoardName() %>�� �Խù��� ����մϴ�">
<form name="writeform" method="post" action="<%=etcutil.SSL_DOMAIN_URL%><%=Property.SERVLET_ROOT%>/RegistArticle?bid=<%=propBean.getBoardID()%>&amp;callback=<%=pageBean.getPageUrl()%>&amp;ses=<%=sessionName%>&amp;grp=<%=schBean.getGroup()%>" enctype="multipart/form-data">
<input name="id" type="hidden" value="<%= userSession==null ? "":userSession.getUserID()%>" />
<input type="hidden" name="thumbType" value="new2" />
	<caption><%=propBean.getBoardName() %>�Խù����</caption>
	<colgroup><col width="110px" /><col width="590px" /></colgroup>
		<tr>
			<th class="th1"><label for="subjtxt">��&nbsp;&nbsp;��</label></th>
			<td class="td1"><input type="text" value="" id="subjtxt" name="subject" class="input" style="width:570px;" maxlength="<%=propBean.getMaxSubjectLength()%>" /></td>
		</tr>
		<% if ( propBean.getUseGroup().equals("1")) { %>
		<!--  �׷� ����  -->
		<tr>
			<th class="th1"><label for="subjtxt">�׷켱��</label></th>
			<td class="td1">
				<select name="grp" style="wihdt:150px;">
				<option value="" >������ �ּ���</option>
				<%=com.neoboard.PropertyManager.getGroupSelect(propBean.getBoardID(), "") %>
				</select>
			</td>
		</tr>
		<!-- �׷� ����  -->
		<% } %>
        <tr>
			<th class="th1"><label for="subjtxt">����</label></th>
			<td class="td1"><input type="text" id="name" name="name" class="input" style="width:130px;" value="<%= userSession==null ? "":userSession.getUserName() %>" maxlength="32" <%if(userSession!=null && propBean.getUseAuth().equals("1")) { %>readonly="readonly"<% } %> /></td>
		</tr>
		<tr>
			<th class="th1"><label for="subjtxt">��й�ȣ</label></th>
			<td class="td1"><input type="password" value="" id="passwd" name="passwd" class="input" style="width:130px;" maxlength="16" /></td>
		</tr>
		<tr>
			<th class="th1"><label for="catesel">��&nbsp;&nbsp;��</label></th>
			<td class="td12"><textarea  name="content" id="content"  cols="95" rows="15" class="area"></textarea></td>
		</tr>
		<% if ( propBean.getUseSecret().equals("1")) { %>
		<tr>
			<th class="th1"><label for="subjtxt">��������</label></th>
			<td class="td1">
				<input type="radio" name="secret" value="0" checked />���� <input type="radio" name="secret" value="1" /> �����
			</td>
		</tr>
		<% } %>
		<% if ( propBean.getUseMovie().equals("1")) { %>
		<tr>
			<th class="th1"><label for="subjtxt">������ URL</label></th>
			<td class="td1">
				<input type="text" value="" name="url" id="url" class="input" style="width:430px;" maxlength="200" />
			</td>
		</tr>
		<% } %>
		<tr>
			<th class="th1"><label for="fileadd">÷������</label></th>
			<td class="td1">
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
</form>
	</table>

	<div class="boardbtm">
		<div class="btnsec">
			<img src="<%=skinRoot %>/images/btn_ok.gif" alt="Ȯ��" onclick="do_submit(document.writeform);" style="cursor:hand" />
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