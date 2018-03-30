<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.neoboard.data.*, com.neoboard.* , com.neoboard.session.*, com.neoboard.util.*" %>
<%@ page import="kr.co.knoc.division.DivisionListManager"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<!--
	�ڷ��01 ��� ��Ų 
--> 

<jsp:useBean id="bm" class="com.neoboard.NeoBoardManager" scope="page" />
<jsp:useBean id="etc" class="com.neoboard.util.EtcUtil" scope="page" />

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
	
	Articles articles = bm.getArticles(userSession, pageBean, schBean, propBean, authBean);
	
	String skinRoot = Property.SKIN_URL_IMG + "/" + propBean.getSkinID();
		
	String user_id = "";
	String userLevel = "9";
	if (userSession!=null && !userSession.equals("")) {
		user_id = userSession.getUserID();
		userLevel = userSession.getUserLevel();
	}

	int pageTotal = articles.getTotalCount() / Integer.parseInt(pageBean.getPageSize());
	if(articles.getTotalCount() % Integer.parseInt(pageBean.getPageSize())>0)
		pageTotal+=1;

%>
<script language="javascript" src="/neoboard/js/comm.js"></script>
<script language=javascript>
	function group_change() {
		//location.href="?mode=list&bid=<%=propBean.getBoardID()%>&ses=<%=sessionName%>";
		var f = document.searchform;
		f.submit();
	}

	function do_search(f)
	{
		//if(f.text.value == "") alert("�˻�� �Է��� �ּ���.");
		//else 
			f.submit();
	}
	function changePsize() {
		document.searchform.submit();
	}
	function popup_passwd(bno) {
		window.open("","bform","width=302px,height=151px,scrollbars=no");
		document.bform.bno.value = bno
		document.bform.submit();
	}
</script>	

<form name="bform" method="post" action="/neoboard/popup_passwd.jsp" target="bform" onsubmit="do_search(this); return false;">
	<input type="hidden" name="bid" value="<%=propBean.getBoardID()%>" />			
	<input type="hidden" name="bno" value="" />
	<input type="hidden" name="callback" value="<%=pageBean.getPageUrl()%>" />			
	<input type="hidden" name="mode" value="view" />
</form>	

<!-- list -->	
<div id="boardsec">
	<table cellspacing="0" cellpadding="0" class="listtype" summary="�ش�Խ����� <%=propBean.getBoardName() %>�� ����� �����ݴϴ�">
	<caption><%=propBean.getBoardName() %> ���</caption>
	<colgroup><col width="55px" /><col width="150px" /><col width="394px" /><col width="100px" /></colgroup>
		<tr>
			<th>No</th>
			<th>����</th>
			<th>����</th>
			<th>�����</th>
		</tr>
<% if ( articles.size() == 0) { %>
		<tr>
		<td colspan="4">�˻� ������ �����ϴ�.</td>
		</tr>
<% } else { %>		
<%
	for(int i = 0 ; i < articles.size(); i++ ) {
		Article article = articles.getArticle(i);
		int no = article.getNo();
		if (article.getRefLevel() > 0) {
			no = article.getRef();
		}
		boolean checkid = bm.checkID(propBean.getBoardID(), Integer.toString(no));
%>	
		<tr>
			<td>
			<% if ( article.getNotice().equals("1") ) { %>
			<img src="<%=skinRoot %>/images/btn_no.gif" alt="����" class="ic" align="absmiddle" />
			<% } else { %>
			<%=article.getSeq()%>
			<% } %>
			</td>
			<td class="subj2">			
			<% if(article.getFiles() != null && article.getFiles().size() > 0) { %>			
			<%  AttachFiles afs = article.getFiles();
					AttachFile af = afs.getAttachFile(0);
					if(af.getMimeType().equals("gif") || af.getMimeType().equals("jpg") || af.getMimeType().equals("jpeg") ) {
			%>
				<img src="/upload/neoboard/<%=propBean.getBoardID()%>/T<%=af.getNewFileName()%>" alt="�̹���" width="60" height="40" /></div>
			<% 
					} %>  
			<% } else { %>
				&nbsp;
			<% } %>
			</td>
			<td class="subj">
			<% if (article.getIsDelete().equals("Y")) { %>
				<img src="<%=skinRoot %>/images/btn_reple_del.gif" alt="����" tabindex="0" align="absmiddle" />
			<% } else { %>
				<!-- ����� ���� ǥ�� -->			
				<%if(article.getSecret().equals("1")){%>
				<img src="<%=skinRoot %>/images/ico_secret.gif" alt="" tabindex="0" align="absmiddle" />
				<% } %>
			<% } %>
			<!-- ��� ���� ���� -->
			<%=article.makeReply("<img src='"+skinRoot+"/images/btn_re.gif' alt='�亯' class='re'/>","&nbsp;&nbsp;")%>
			<!-- ��ũ  ���� -->
			<% if (article.getSecret().equals("1") && !bm.checkManager(authBean, propBean, userSession)) { %>
				<% if (checkid) { %>
					<% if (userSession == null) { %>
					<a href="javascript:alert('�α��� �� �̿� �����Ͻʴϴ�.');">
					<% } else { %>					
					<a href="<%=pageBean.getPageUrl()%><%=pageBean.makeQueryString(article.getNo(),"view",true)%><%=schBean.makeQueryString("","bid=" + propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false)%>" class="board" tabindex="0">					
					<% } %>
				<% } else { %>
					<a href="javascript:popup_passwd('<%=article.getNo()%>');">
				<% } %>
			<% } else { %>
					<a href="<%=pageBean.getPageUrl()%><%=pageBean.makeQueryString(article.getNo(),"view",true)%><%=schBean.makeQueryString("","bid=" + propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false)%>" class="board" tabindex="0">								
			<% } %>
			<!-- ���� ��� -->
					<%=article.getSubject(30)%></a>
			<!-- ��ũ ��  -->	
			
			<!-- New ������ -->		
			<% if ( propBean.getUseNew().equals("1")) { %><span ><%=article.makeNew("<img alt='new' tabindex='0' src='"+skinRoot+"/images/btn_new.gif'>",propBean.getNewLimit()*24)%></span><% } %>
			<!-- Cool ������ -->
			<% if ( propBean.getUseCool().equals("1") && (article.getHitcnt() >= propBean.getCoolLimit())) { %><span ><img alt='new' tabindex='0' src='<%=skinRoot %>/images/btn_cool.gif'></span><% } %>
			<!-- ��� ���� -->
			<% if (propBean.getUseComment().equals("1")) { %><span><%=article.makeCmtCnt("(",")")%></span><% } %>
			</td>			
			<td><%=article.getRegDateString("yyyy-MM-dd") %></td>            
		</tr>
<% 
	}
}
%>
	</tbody>
	</table>	
<!-- list //-->

	<div class="boardbtm">
		<!-- paging -->
		<div class="leftdv">		
			<neo:neoPager pageName="NB_PAGE" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="<%=propBean.getPagePerBlock()%>" totalCount="<%=articles.getTotalCount()%>" />
			<!--// paging: start //-->
			<div class="paging">
				<a href="<%=prevBlock.getAnchor(schBean.makeQueryString("","mode=list&bid="+propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/preview.gif" alt="ó����������" align="absmiddle"/></a>		
				<a href="<%=prevPage.getAnchor(schBean.makeQueryString("","mode=list&bid="+propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/ppreview.gif" alt="��������" align="absmiddle"/></a>
				<% int ll = 1; %>
				<neo:loop name="pages" loopId="p" className="com.neoboard.data.NeoAnchor">
				<% if ( p.getPage() == pageBean.getNPage()) { %>
				<span class="pagenow"><%=p.getPage()%></span> <% if (ll != pages.size()) {%> <% } %>
				<% } else { %>
				<a href="<%=p.getAnchor(schBean.makeQueryString("","mode=list&bid="+propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false))%>"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> <% } %> 
				<% } %>
				<% ll++; %>
				</neo:loop>				
				<a href="<%=nextPage.getAnchor(schBean.makeQueryString("","mode=list&bid="+propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/nnext.gif" alt="����������" align="absmiddle"/></a>					
				<a href="<%=nextBlock.getAnchor(schBean.makeQueryString("","mode=list&bid="+propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/next.gif" alt="�ǳ���������" align="absmiddle"/></a>
			</div>
			<!--// paging: end //-->
		</div>
		<!-- paging //--> 
		<!-- ��ư -->
		<div class="rightdv">
			<a href="<%=pageBean.getPageUrl()%><%=pageBean.makeQueryString("write",true)%><%=schBean.makeQueryString("","bid=" + propBean.getBoardID()+"&ses="+sessionName+"&psize="+propBean.getListPerPage(),false)%>"><img src="<%=skinRoot %>/images/btn_write.gif" alt="�۾���" /></a>
			<% if ( propBean.getUseRss().equals("1")) { %>	
			<img src="/images/board/btn_rss.gif" alt="RSS" onclick="javascript:boardrss('rss');" style="cursor:hand" />	
			<input type="hidden" name="rss" value="http://<%=request.getServerName() %>/neoboard/rss.jsp?bid=<%=propBean.getBoardID()%>&url=<%=pageBean.getPageUrl()%>" />
			<% } %>
		</div>
		<!-- ��ư //-->
	</div>
	
<!-- search -->
<form name=searchform method=post action="<%=pageBean.getPageUrl()%>" onsubmit="do_search(this); return false;">
<input type=hidden name=bid value="<%=propBean.getBoardID()%>">
<input type=hidden name=ses value="<%=sessionName%>">
<input type=hidden name=mode value="list">		
	<!--// searchbox: end //-->
	<div id="schsec">
		<fieldset class="schset">
			<legend>Search Box</legend>
<% if ( propBean.getUseGroup().equals("1")) { %>	
			<select name="grp" title="�׷�˻�">
			<option value="" selected="selected">����</option>
			<%=com.neoboard.PropertyManager.getGroupSelect(propBean.getBoardID(), schBean.getGroup()) %>
			</select>			
<% } %>			
			<label for="schsel" class="nlabel">��ϰ˻�����</label>
			<select id="field" name="field">
				<option value="subject">����</option>
			</select>
			
			<label for="schinput" class="nlabel">��ϰ˻�</label>
			<input type="text" value="" id="schinput" name="text" class="input" />							
			
			<div class="btndv"><img src="<%=skinRoot %>/images/btn_search.gif" alt="�˻�" onclick="do_search(document.searchform);" style="cursor:hand" /></div>
	  </fieldset>
	</div>
	<!--// searchbox: end //-->
</form>
<!-- search //-->	
</div>	