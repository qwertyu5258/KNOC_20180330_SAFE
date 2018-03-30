<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.neoboard.data.*, com.neoboard.* , com.neoboard.session.*, com.neoboard.util.*" %>
<%@taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
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
	
	//�ѱ۱����� �������� �߰� 20130605 kgs
	schBean.setName(etc.strBlockSpecialTags(etc.checkNull(request.getParameter("name"))), true);
	
	Property propBean = (Property)pageContext.getAttribute("NB_PROPERTY",PageContext.REQUEST_SCOPE);
	
	Authority authBean = (Authority)pageContext.getAttribute("NB_AUTHORITY",PageContext.REQUEST_SCOPE);		
	
	// �������� ������ ����Ʈ
	Articles articles = bm.getSangdamArticlesCk(userSession, pageBean, schBean, propBean, authBean);
	
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
<script type="text/javascript" src="/neoboard/js/comm.js"></script>
<script type="text/javascript">
	function group_change() {
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
	<colgroup><col width="55px" /><col width="375px" /><col width="110px" /><col width="85px" /></colgroup>
	<thead>
		<tr>
			<th scope="col">��ȣ</th>
			<th scope="col">����</th>
			<th scope="col">����</th>
			<th scope="col">��¥</th>
		    <th scope="col">ó����Ȳ</th>
		</tr>	
	</thead>
	<tbody>
<% if ( articles.size() == 0) { %>
		<tr>
		<td colspan="5">�˻� ������ �����ϴ�.</td>
		</tr>
<% } else { %>		
<%
	String bgcolor = "";
	for(int i = 0 ; i < articles.size(); i++ ) {
		bgcolor="";
		Article article = articles.getArticle(i);
		int no = article.getNo();
		if (article.getRefLevel() > 0) {
			no = article.getRef();
		}
		if (i % 2 == 0) {
			bgcolor="#f5f5f5";
		}			
		boolean checkid = bm.checkID(propBean.getBoardID(), Integer.toString(no));
%>	
		<tr>
			<td>
			<% if ( article.getNotice().equals("1") ) { %>
			<img src="<%=skinRoot %>/images/btn_no.gif" alt="����" class="ic" style="vertical-align:middle;" />
			<% } else { %>
			<%=article.getSeq()%>
			<% } %>
			</td>
			<td class="subj">
			<!-- ���� ���� ǥ�� -->
			<% if (article.getIsDelete().equals("Y")) { %>
				<img src="<%=skinRoot %>/images/btn_reple_del.gif" alt="����" style="vertical-align:middle;" />
			<% } else { %>
				<!-- ����� ���� ǥ�� -->
				<%if(article.getSecret().equals("1")){%>
				<img src="<%=skinRoot %>/images/ico_secret.gif" alt="" style="vertical-align:middle;" />
				<% } %>
			<% } %>
			<!-- ��� ���� ���� -->
			<%=article.makeReply("<img src='"+skinRoot+"/images/icon_reply.gif' alt='�亯' class='re' style='vertical-align:middle;' />","&nbsp;&nbsp;")%>
			<!-- ��ũ  ���� -->
			<% if (article.getNo() <= 9) { %>
					<a href="#boardsec">
			<% } else { %>
					<a href="javascript:popup_passwd('<%=article.getNo()%>');">						
			<% } %>
			<!-- ���� ��� -->
					<%=article.getSubject(30)%></a>
			<!-- ��ũ ��  -->	
			
			<!-- New ������ -->		
			<% if ( propBean.getUseNew().equals("1")) { %><span ><%=article.makeNew("<img alt='new' src='"+skinRoot+"/images/btn_new.gif' style='vertical-align:middle;' />",propBean.getNewLimit()*24)%></span><% } %>
			<!-- Cool ������ -->
			<% if ( propBean.getUseCool().equals("1") && (article.getHitcnt() >= propBean.getCoolLimit())) { %><span ><img alt='new' src='<%=skinRoot %>/images/btn_cool.gif' style='vertical-align:middle;' /></span><% } %>
			<!-- ��� ���� -->
			<% if (propBean.getUseComment().equals("1")) { %><span><%=article.makeCmtCnt("(",")")%></span><% } %>
			</td>
			<td><%=article.getName() %></td>
			<td><span title="<%=article.getRegDateString("yyyy�� MM�� dd�� HH�� mm�� ss��")%>"><%=article.getRegDateString("yyyy-MM-dd")%></span></td>
		    <td><%=etc.checkNull(article.getStatus()) %></td>
		</tr>		
<% 
	}
}
%>
	</tbody>
	</table>	
<!-- list //-->


</div>	