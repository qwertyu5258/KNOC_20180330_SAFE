<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.mgr.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>
<sctrl:auth loginPage="../login.jsp" sessionName="ADMINSESSION"/>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MgrH" scope="page" class="kr.co.knoc.mgr.MgrHelper" />
<% request.setCharacterEncoding("euc-kr"); %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section ( ������ �ƴ�??Display )
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	String gNavSubTitle = "ȸ������";  		// ���� Depth ����
    String gNavSubName = "member";				// ���� Depth �̸�
    String gNavDepthTitle1 = "02"; 		// Ȩ > ���� > ����1 ����
    String gNavDepthName1 = "";				// Ȩ > ���� > ����1 �̹��� �±� �̸�
    String gNavDepthTitle2 = ""; 				// Ȩ > ���� > ����1 > ����2 ����

	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","01");
        
	String gNavPage = "ȸ������Ʈ";  					// ���� ������ ����
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%
	String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")),"8859_1");
	String key_word = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_word")),"8859_1");
	String key_gbn = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("key_gbn")),"8859_1");
	
	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");
	ArrayList al = MgrH.getMemberList(key_gbn, key_word, pp.getNPage(), pp.getNPageSize());		
	
	int count = MgrH.getMemberListCount(key_gbn, key_word);
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	/**
	 * 2016.3.21 JSM
	 * ���Ⱦ��� ��ġ
	 */
	if(seq < 0){seq=1;}
%>
<%@ include file="../inc/top.jsp" %>
<script language="javascript">
	function goFind()
	{
		var t = document.schform;
		t.submit();
	}	
	function edit(user_id) {
            	document.bForm.action = 'memberEdit.jsp';
            	document.bForm.userid.value = user_id;
            	document.bForm.submit();
	}
	function jsDelete() {
		var ff = document.bForm;
	    if (!isSelect(document.bForm, "uid")) {
	        alert("������ �Խù��� �����ϼ���.");
	        return;
	    }
	    if (confirm("������ �Ͻðڽ��ϱ�?")) {	
	    	ff.action = "memberDeleteOk.jsp";
	        ff.submit();
	
	    }
	}
</script>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="195" valign="top">  
<%@ include file = "left.jsp" %>  
</td>  
<td valign=top>
	<table width="100%" height="200"  border="0" cellpadding="0" cellspacing="0">
	<tr>
	<td valign="top">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		<td valign="top">			
			<table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td><img src="/SiteControl/images/admin_left_03.gif" width="11" height="11"> ȸ������ > ȸ������Ʈ</td>
			<td width="500" align="right" style="padding-right:20;">HOME > <span class="style6">ȸ������ > ȸ������Ʈ</span></td>
			</tr>
			<tr>
			<td height="2" colspan="2" bgcolor="EAEAEC"></td>
			</tr>
			</table>
			<table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td></td>
			</tr>
			</table>
			<table align=center border="0" cellpadding="0" cellspacing="0" width="100%">
<form name=schform method=post action="memberList.jsp">				
			<tr>
			<td class=descBorder_l>			
			</td>
			<td class=descBorder_r>
			�˻����� :
		      <select name=key_gbn class=select>
		      <option <% if (key_gbn.equals("")) { %>selected<% } %> value="">��ü
		      <option <% if (!key_gbn.equals("") && key_gbn.equals("id")) { %>selected<% } %> value="id">ȸ�����̵�
		      <option <% if (!key_gbn.equals("") && key_gbn.equals("name")) { %>selected<% } %> value="name">ȸ���̸�
		      </select>
		      		
		      <input type=text name=key_word size=15 maxlength=20 value="<%=key_word%>" class=input_re>
			<input type=button value=' �˻� ' class='button' onClick="javascript:goFind();">
			</td>		
			</tr>
			<tr height=10>
			<td></td>
			<td></td>
			</tr>
</form>		
			</table>	
<!-- ROW ���� -->	
			<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="B5B5B5">
<form name="bForm" method="post" action="memberList.jsp">
<input type=hidden name=page value="<%=nowpage%>">		
<input type="hidden" name="key_word" value="<%=key_word%>">	
<input type="hidden" name="key_gbn" value="<%=key_gbn%>">	
<input type="hidden" name="userid" value="">	
			<tr height="25"  bgcolor="E7E7E7">
			<td align=center width="60"><a href="JavaScript:selectChkAll(document.bForm,'uid');">����</a></td>
			<td align=center width="60">��ȣ</td>
			<td align=center width="100">����</td>
			<td align=center width="100">ID</td>
			<td align=center width="100">��ȭ��ȣ</td>
			<td align=center width="100">�޴�����ȣ</td>
			<td align=center>E-mail</td>
			<td align=center width="100">������</td>
			<td align=center width="100">�ֱ�������</td>	
			</tr>    
<%  if(count==0) { %>				
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center colspan=9>��ϵ� ȸ���� �����ϴ�.</td>
			</tr>
<% 
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			MgrDO mdo = (MgrDO)iter.next();
%>																																	
			<tr height="25"  bgcolor="#FFFFFF">
			<td align=center><input type="checkbox" name="uid" value="<%=mdo.getId() %>"></td>
			<td align=center><%=seq%></td>
			<td align=center><%=mdo.getName()%></td>
			<td align=center><a href="javascript:edit('<%= mdo.getId() %>')"><%= mdo.getId() %></a></td>			
			<td align=center><%=mdo.getPhoneNumber()%></td>
			<td align=center><%=mdo.getMobileNumber()%></td>
			<td align=center><%=etcutil.checkNull(mdo.getEmail())%></td>
			<td align=center><%=mdo.getJoinDateTime()%></td>
			<td align=center><%=etcutil.checkNull(mdo.getLastLoginDateTime())%></td>
			</tr>
<%				
			seq--;
		}
	}
%>				
			</table>
		</td>
		</tr>
</form>		
		</table>
		<br>
		<table align=center class=tableBorder border="0" cellpadding="0" cellspacing="0" width="100%">		
		<tr>
		<td align="right">
		<input type=button value=' ���� ' class=button onClick="jsDelete();">
		</td>
		</tr>        
		</table>
		<br>	
<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=MgrH.getMemberListCount(key_gbn,key_word)%>" />
	<table class="pagezig_table" align="center">
		<tr>
			<td><a href="<%=prevBlock.getAnchor("&key_gbn="+key_gbn+"&key_word="+key_word)%>"><img src="../images/btn_list_first.gif" alt="ó����������" align="absmiddle"></a> <a href="<%=prevPage.getAnchor("&key_gbn="+key_gbn+"&key_word="+key_word)%>"><img src="../images/btn_prev_1.gif" alt="������������" align="absmiddle"></a></td>
			<td class="pagezig">
			<% int ll = 1; %>
			<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
			<% if ( p.getPage() == pp.getNPage()) { %>
			<span><b><%=p.getPage()%></b></span> <% if (ll != pages.size()) {%> / <% } %>
			<% } else { %>
			<a href="<%=p.getAnchor("&key_gbn="+key_gbn+"&key_word="+key_word)%>" class="num01"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> / <% } %> 
			<% } %>
			<% ll++; %>
			</stl:loop>
			</td>
			<td><a href="<%=nextPage.getAnchor("&key_gbn="+key_gbn+"&key_word="+key_word)%>"><img src="../images/btn_next_1.gif" alt="������������" align="absmiddle"></a> <a href="<%=nextBlock.getAnchor("&key_gbn="+key_gbn+"&key_word="+key_word)%>"><img src="../images/btn_list_last.gif" alt="�ǳ���������" align="absmiddle"></a></td>
		</tr>
	</table>			
		
	</td>
	</tr>
	</table>
</td>
</tr>
</table>
<%@ include file="../inc/bottom.jsp" %>	