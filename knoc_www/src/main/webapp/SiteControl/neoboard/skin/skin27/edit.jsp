<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.neoboard.data.*,com.neoboard.*,com.neoboard.session.*,com.neoboard.util.*" %>
<%@taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<jsp:useBean id="bm" class="com.neoboard.NeoBoardManager" scope="page" />
<%!
public static String removeStrNull(String sData) {
    String sReturn = "";
    if (sData != null && !sData.equals("null")) {
            sReturn = sData;
    }  // end IF ...
    return sReturn;
}
%>
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
	
	Article article = (Article)pageContext.getAttribute("NB_ARTICLE",PageContext.REQUEST_SCOPE);
	
	String skinRoot = Property.SKIN_URL_IMG + "/" + propBean.getSkinID();
	String neoRoot = Property.ROOT_URL;

	String userLevel = "9";

	if (userSession!=null && !userSession.equals("")) {
		userLevel = userSession.getUserLevel();
	}
	NeoBoardManager manager = new NeoBoardManager();
	boolean checkid = manager.checkID(propBean.getBoardID(), Integer.toString(article.getNo()));
%>
<% if(!Property.isViewable("edit",authBean,propBean,userSession,article.getId())) { %>
	<script language=javascript>
	alert("���� ������ �����ϴ�.");
	history.back();
	</script>
<% 
	return;
} %>

<script type="text/javascript"> 
	function do_submit(f) {
		var f = document.writeform;

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

		
	<% if (session.getAttribute("ADMINSESSION") == null && Integer.parseInt(userLevel) > 6 && !checkid) { %>
		if(f.passwd.value=='') {
			alert("��й�ȣ�� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.passwd.focus();
			return;
		}
	<% } %>
	     
		/*
		if(f.url.value == "") {
			alert("ī�崺�� URL�� �Է��� �ֽñ� �ٶ��ϴ�.");
			f.url.focus(); 
			f.url.select();
			return;
		} 
		*/
		
		if(!checkAllFileExt(f)){
			alert("�����Ͻ� ������ ���ε� �� �� �����ϴ�.");
			return;
		}

		if(confirm("���� �����Ͻðڽ��ϱ�?")) {	
			// �������� ���뿡 ���� �� ������ �̰����� textarea �ʵ��� ir1�� ���� �̿��ؼ� ó���ϸ� �˴ϴ�.
		
			if (checkBanwd(f.subject)) { //������ üŷ
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
	function checkFileExt(obj){
		if( obj.value.toLowerCase().match(/(<%=propBean.getDefaultNotAllowedExtension().replaceAll(",","|")%>)$/) ){
			return false;
		}
		return true;
	}

	function checkAllFileExt(f){
<%for( int i = 1 ; i <= 2 ; i++) {%>
		if ( f.file<%=i%>.value != ""){
			if(!checkFileExt(f.file<%=i%>) ) return false;
		}
<%}%>
		return true;
	}

	function checkFile(c, index) {
		var fo = eval("document.writeform.file" + index);
		if(typeof(fo) != "object") return;
		
		if(c.checked) {
			fo.disabled = 0;
		}else {
		fo.disabled = 1;
		}
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

<%
StringBuffer action = new StringBuffer();
action.append(EtcUtil.SSL_DOMAIN_URL);
action.append(Property.SERVLET_ROOT);
action.append("/EditArticle");
action.append("?num=");
action.append(article.getNo());
action.append("&amp;bid=");
action.append(propBean.getBoardID());
action.append("&amp;ses=");
action.append(sessionName);
action.append("&amp;callback=");
action.append(pageBean.getPageUrl());
action.append("&amp;page=");
action.append(pageBean.getPage());
action.append("&amp;mode=");
action.append(pageBean.getPageMode());
for(int i = 0 ; i < schBean.getSearchParam().size(); i++) { 
SearchParam sp = (SearchParam)schBean.getSearchParam().get(i);
action.append("&amp;field=");
action.append(sp.getField());
action.append("&text=");
action.append(sp.getText());
}
action.append("&amp;dir=");
action.append(schBean.getDir());
action.append("&amp;order=");
action.append(schBean.getOrder());
action.append("&amp;grp=");
action.append(schBean.getGroup());
action.append("&amp;psize=");
action.append(propBean.getListPerPage());
%>
<script type="text/javascript" src="/neoboard/js/comm.js"></script>
<!-- SmartEditor ���� -->
<script type="text/javascript" src="/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
	
<a tabindex="0"><%=propBean.getTopIncludeText()%></a>	
			
<!-- form -->
<div id="boardsec">
<form name="writeform" method="post" action="<%=action.toString()%>" enctype="multipart/form-data">
<input name="id" type="hidden" value="<%=article.getId()%>" />
<%-- <input name="name" type="hidden" value="<%=article.getName()%>" />--%>	
<input type="hidden" name="thumbType" value="new2" />
	<table cellspacing="0" cellpadding="0" class="viewtype" summary="<%=propBean.getBoardName() %>�� �Խù��� ����մϴ�">
	
	<caption><%=propBean.getBoardName() %>�Խù����</caption>
	<colgroup><col width="110px" /><col width="590px" /></colgroup>
		<tr>
			<th class="th1"><label for="subjtxt">����</label></th>
			<td class="td1"><input type="text" value="<%=article.getSubject()%>" id="subjtxt" name="subject" class="input" style="width:570px;" maxlength="<%=propBean.getMaxSubjectLength()%>" /></td>
		</tr>
		<tr>
			<th class="th1"><label for="subjtxt2">����</label></th>
			<td class="td1"><input type="text" value="<%=article.getContent()%>" id="subjtxt2" name="HTML_BODY" class="input" style="width:570px;" maxlength="80" /></td>
		</tr>		
		<% if ( propBean.getUseGroup().equals("1")) { %>	
		<!--  �׷� ����  -->
		<tr>
			<th class="th1"><label for="subjtxt">�׷켱��</label></th>
			<td class="td1">
				<select name="grp" style="wihdt:150px;">						
				<option value="" >������ �ּ���</option>
				<%=com.neoboard.PropertyManager.getGroupSelect(propBean.getBoardID(), article.getGrp()) %>
				</select>
			</td>
		</tr>			
		<!-- �׷� ����  -->
		<% } %>
        <tr>
			<th class="th1"><label for="name">����</label></th>
			<td class="td1"><input type="text" id="name" name="name" class="input" style="width:130px;" value="<%=article.getName()%>" maxlength="32" readonly="readonly" /></td>
		</tr>
		<tr>
			<th class="th1"><label for="passwd">��й�ȣ</label></th>
			<td class="td1"><input type="password" value="" id="passwd" name="passwd" class="input" style="width:130px;" maxlength="16" /></td>
		</tr>     
		<tr>
			<th class="th1"><label for="url">ī�崺�� URL</label></th>
			<td class="td1">
				<input type="text" value="<%=removeStrNull(article.getUrl()) %>" name="url" id="url" class="input" style="width:430px;" maxlength="200" />
			</td>
		</tr>	
<%
	AttachFiles attachFiles = article.getFiles();
%>		
		<tr>
			<th class="th1"><label for="file1">�̹��� ���ε�</label></th>
			<td class="td1">
				<div class="filedv1">						
<%	 	
	if(attachFiles != null && 0 < attachFiles.size() )  {
		AttachFile f = attachFiles.getAttachFile(0);
		if (f.getBun().equals("1")) {
%>
						<input type="file" name="file1" id="file1" value="" class="input" style="width:330px;" title="÷������1" onchange="filterExtension(this);" disabled /><span class="f_pad"> <%=propBean.getMaxUploadLimit("MB")%></span><br />
						<div style="height:24px;">
							<a tabindex="0"><font style='font-size:8pt;color=gray'>÷������: <b><%=f.getFileName()%></font></a>
							<input title="���ϻ���" type="checkbox" name="fileupdate" id="fileupdate" value="<%=f.getNo()%>" onclick="checkFile(this,1);" onkeypress="checkFile(this,1);">
						<span style="padding-top:3px"><a tabindex="0"><font style='font-size:8pt;color=gray'>���� üũ�ڽ��� �����Ͻø� �̹� ÷�ε� ȭ���� �����˴ϴ�.</font></a></span>
						</div>
<%
		} else {
%>
						<input type="file" name="file1" id="file1" value="" class="input" style="width:330px;" title="÷������1" onchange="filterExtension(this);" /><span class="f_pad"> <%=propBean.getMaxUploadLimit("MB")%></span><br />
<%			
		}
	} else {
%>
						<input type="file" name="file1" id="file1" value="" class="input" style="width:330px;" title="÷������1" onchange="filterExtension(this);" /><span class="f_pad"> <%=propBean.getMaxUploadLimit("MB")%></span><br />
<%		
	}
%>					
				</div>				
			</td>
		</tr>
		<tr>
			<th class="th1"><label for="file2">PDF���� ���ε�</label></th>
			<td class="td1">
				<div class="filedv1">
<%	 	
	AttachFile f = new AttachFile();
	String flag = "N";
	if (attachFiles != null) {
		if(1 == attachFiles.size() )  {
			f = attachFiles.getAttachFile(0);
			if (f.getBun().equals("2")) {
				flag = "Y";
			}
		} else if (attachFiles.size() == 2) {
			f = attachFiles.getAttachFile(1);
			if (f.getBun().equals("2")) {
				flag = "Y";						
			}
		}	
	}
	if (flag.equals("Y")) {
%>
					<input type="file" name="file2" id="file2" value="" class="input" style="width:330px;" title="÷������2" onchange="filterExtension(this);" disabled /><span class="f_pad"> <%=propBean.getMaxUploadLimit("MB")%></span><br />
					<div style="height:24px;">
						<a tabindex="0"><font style='font-size:8pt;color=gray'>÷������: <b><%=f.getFileName()%></font></a>
						<input title="���ϻ���" type="checkbox" name="fileupdate" id="fileupdate" value="<%=f.getNo()%>" onclick="checkFile(this,2);" onkeypress="checkFile(this,2);">
					<span style="padding-top:3px"><a tabindex="0"><font style='font-size:8pt;color=gray'>���� üũ�ڽ��� �����Ͻø� �̹� ÷�ε� ȭ���� �����˴ϴ�.</font></a></span>
					</div>
<%
	} else {
%>
					<input type="file" name="file2" id="file2" value="" class="input" style="width:330px;" title="÷������2" onchange="filterExtension(this);" /><span class="f_pad"> <%=propBean.getMaxUploadLimit("MB")%></span><br />
<%			
	}
%>
				</div>				
			</td>
		</tr>

	</table>
</form>			
	<div class="boardbtm">
		<div class="btnsec">
			<img src="<%=skinRoot %>/images/btn_ok.gif" alt="Ȯ��" onclick="do_submit(document.writeform);" style="cursor:hand" />
			<a href="<%=pageBean.getPageUrl()%><%=pageBean.makeQueryString("list",true)%><%=schBean.makeQueryString("","bid=" + propBean.getBoardID()+"&amp;ses="+sessionName,false)%>"><img src="<%=skinRoot %>/images/btn_cancel.gif" alt="���" /></a>
		</div>
	</div>
</div>

<!-- form //-->