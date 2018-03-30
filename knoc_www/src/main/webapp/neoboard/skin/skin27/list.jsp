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

	Property propBean = (Property)pageContext.getAttribute("NB_PROPERTY",PageContext.REQUEST_SCOPE);

	Authority authBean = (Authority)pageContext.getAttribute("NB_AUTHORITY",PageContext.REQUEST_SCOPE);

	// �������� ������ ����Ʈ
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
<style type="text/css">
table.viewtype_noline { border-collapse:collapse; border-spacing:0; border:0; }
table.viewtype_noline tr td { margin:0; padding:0; border:0; font-weight:normal!important;}
table.viewtype_noline tr td dl { height:250px; overflow:hidden; }
table.viewtype_noline tr td dl dt { height:40px; line-height:20px;}
table.viewtype_noline tr td dl dt div.board_title {display: block; overflow: hidden; width:160px; margin-left:5px; color:#3c3c3c; font-weight:bold; text-overflow: ellipsis; white-space: nowrap;}
table.viewtype_noline tr td dl dt div.board_stitle {display: block; overflow: hidden; width:160px; margin-left:5px; font-weight:normal!important; text-overflow: ellipsis; white-space: nowrap;}
table.viewtype_noline tr td dl dd { padding:5px; }
table.viewtype_noline tr td dl dd div.imgbg { height:110px; }
table.viewtype_noline tr td dl dd div.imgheight { height:110px!important; }
table.viewtype_noline tr td dl dd div.btnin { height:20px; }

</style>
<script type="text/javascript" src="/neoboard/js/comm.js"></script>


<script type="text/javascript" language="javascript">
//<![CDATA[
//<!--
	function al_pop(){
		alert("÷�������� �����ϴ�.");
		return;
	}
//-->
//]]>
</script><noscript><a href="not_found_page.jsp">�ڹٽ�ũ��Ʈ�� ����ϰ� �ֽ��ϴ�.</a></noscript>

<script type="text/javascript">
	//<![CDATA[
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

	function resizeImage(img) {
		var oHeight = img.height;
		var oWidth = img.width;

		//���ΰ� ���κ��� Ŭ���
		if (oWidth > oHeight) {
			if (oHeight > 96) {
				img.width = oWidth * (96 / oHeight);
				img.height = 96;
			}else if(oWidth > 152) {
				img.height = oHeight * (152 / oWidth);
				img.width = 152;
			}
		//���ΰ� ���κ��� Ŭ���
		} else if (oWidth < oHeight) {
			if (oHeight > 96) {
				img.width = oWidth * (96 / oHeight);
				img.height = 96;
			}
		//����,���� �������
		} else	{
			if (oWidth > 96) {
				img.width = 96;
				img.height = 96;
			}
		}
	}
	function popup_passwd(bno) {
		window.open("","bform","width=302px,height=151px,scrollbars=no");
		document.bform.bno.value = bno
		document.bform.submit();
	}
	//]]>
</script>

<form name="bform" method="post" action="/neoboard/popup_passwd.jsp" target="bform" onsubmit="do_search(this); return false;">
	<input type="hidden" name="bid" value="<%=propBean.getBoardID()%>" />
	<input type="hidden" name="bno" value="" />
	<input type="hidden" name="callback" value="<%=pageBean.getPageUrl()%>" />
	<input type="hidden" name="mode" value="view" />
</form>

<!-- list -->
<div id="boardsec">
	<table cellspacing="0" cellpadding="0" class="viewtype_noline" summary="�ش�Խ����� <%=propBean.getBoardName() %>�� ����� �����ݴϴ�">
	<caption><%=propBean.getBoardName() %> ���</caption>
	<colgroup><col width="170px" /><col width="170px" /><col width="170px" /><col width="170px" /></colgroup>
<% if ( articles.size() == 0) { %>
		<tr>
		<td colspan="4">�˻� ������ �����ϴ�.</td>
		</tr>
<% } else { %>
<%
	int j = 1;
	for(int i = 0 ; i < articles.size(); i++ ) {
		Article article = articles.getArticle(i);
		int no = article.getNo();
		if (article.getRefLevel() > 0) {
			no = article.getRef();
		}
		boolean checkid = bm.checkID(propBean.getBoardID(), Integer.toString(no));
		if (j % 4 == 1) {
%>
		<tr>
<%
		}
%>
			<td>
				<dl>
					<dt><div class="board_title"><%= article.getSubject() %></div><div class="board_stitle"><%= article.getContent() %></div></dt>
					<dd>
			<% if(article.getFiles() != null && article.getFiles().size() > 0) { %>
			<%  AttachFiles afs = article.getFiles();
					 for(int k = 0 ; k < 1; k++) {
						 AttachFile af = afs.getAttachFile(k);
						 if(af.getBun() != null && af.getBun().equals("1") && af.getMimeType().equals("gif") || af.getMimeType().equals("jpg") || af.getMimeType().equals("jpeg") ) {
			%>
					 <div class="imgbg"><img src="/upload/neoboard/<%=propBean.getBoardID()%>/T<%=af.getNewFileName()%>" alt="" width="152" height="95" /></div>
						<% } else { %>
						<div class="imgbg"><img src="<%=skinRoot %>/images/no_img.gif" alt="no_image" width="152" height="95" /></div>
						<% }
					} %>
			<% } else { %>
						<div class="imgbg"><img src="<%=skinRoot %>/images/no_img.gif" alt="no_image" width="152" height="95" /></div>
			<% } %>
					</dd>
					<dd>
					<div class="btnin">
					 <% if(article.getUrl()==null){ %>
					 <% }else{ %>
					 <a href="<%=article.getUrl()%>" target="_blank" title="��â">
					 <% } %>
					 <% if(article.getUrl()!=null){%>
					 <img src="<%=skinRoot %>/images/btn_move.gif" alt="�̵�" /></a>
					 <% } %>
			<%
			String flag = "N";
			if(article.getFiles() != null && article.getFiles().size() > 0) {
%>

			<%
				AttachFiles afs = article.getFiles();
					 for(int k = 0 ; k < afs.size(); k++) {
						 AttachFile af = afs.getAttachFile(k);
						 if (af.getBun() != null) {
							if(af.getBun().equals("2") && af.getMimeType().equals("pdf")){%><a target="_parent" href="<%=Property.SERVLET_ROOT%>/Download?num=<%=article.getNo()%>&amp;fno=<%=af.getNo()%>&amp;bid=<%=propBean.getBoardID()%>&amp;callback=<%=pageBean.getPageUrl()%>&amp;ses=<%=sessionName%>"><img src="<%=skinRoot %>/images/btn_pdf.gif" alt="PDF�ٿ�ޱ�" /></a><%}%>
					<%

						 }
					}
			%>
			</div>
			<%
			}
			%>

					</dd>
				</dl>
			</td>
<%
		if (j !=0 && j % 4 == 0) {
%>
		</tr>
<%
		}
		j++;
	}

	if (j % 4 == 2) {
%>
			<td></td>
			<td></td>
			<td></td>
		</tr>
<%
	} else if (j % 4 == 3) {
%>
			<td></td>
			<td></td>
		</tr>
<%
	} else if (j % 4 == 0) {
%>
			<td></td>
		</tr>
<%
	}
}
%>
	</table>
<!-- list //-->

	<div class="boardbtm">
		<!-- paging -->
		<div class="leftdv">
			<neo:neoPager pageName="NB_PAGE" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="<%=propBean.getPagePerBlock()%>" totalCount="<%=articles.getTotalCount()%>" />
			<!--// paging: start //-->
			<div class="paging">
				<a href="<%=prevBlock.getAnchor(schBean.makeQueryString("","mode=list&amp;bid="+propBean.getBoardID()+"&amp;ses="+sessionName+"&amp;psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/preview.gif" alt="ó����������" style="vertical-align:middle;" /></a>
				<a href="<%=prevPage.getAnchor(schBean.makeQueryString("","mode=list&amp;bid="+propBean.getBoardID()+"&amp;ses="+sessionName+"&amp;psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/ppreview.gif" alt="��������" style="vertical-align:middle;" /></a>
				<% int ll = 1; %>
				<neo:loop name="pages" loopId="p" className="com.neoboard.data.NeoAnchor">
				<% if ( p.getPage() == pageBean.getNPage()) { %>
				<span class="pagenow"><%=p.getPage()%></span> <% if (ll != pages.size()) {%> <% } %>
				<% } else { %>
				<a href="<%=p.getAnchor(schBean.makeQueryString("","mode=list&amp;bid="+propBean.getBoardID()+"&amp;es="+sessionName+"&amp;psize="+propBean.getListPerPage(),false))%>"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> <% } %>
				<% } %>
				<% ll++; %>
				</neo:loop>
				<a href="<%=nextPage.getAnchor(schBean.makeQueryString("","mode=list&amp;bid="+propBean.getBoardID()+"&amp;ses="+sessionName+"&amp;psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/nnext.gif" alt="����������" style="vertical-align:middle;" /></a>
				<a href="<%=nextBlock.getAnchor(schBean.makeQueryString("","mode=list&amp;bid="+propBean.getBoardID()+"&amp;ses="+sessionName+"&amp;psize="+propBean.getListPerPage(),false))%>"><img src="<%=skinRoot %>/images/next.gif" alt="�ǳ���������" style="vertical-align:middle;" /></a>
			</div>
			<!--// paging: end //-->
		</div>
		<!-- paging //-->
		<!-- ��ư -->
		<div class="rightdv">
			<% if ( propBean.getUseRss().equals("1")) { %>
			<img src="<%=skinRoot %>/images/btn_rss.gif" alt="RSS" onclick="javascript:boardrss('rss');" style="cursor:pointer" />
			<input type="hidden" name="rss" value="http://<%=request.getServerName() %>/neoboard/rss.jsp?bid=<%=propBean.getBoardID()%>&amp;url=<%=pageBean.getPageUrl()%>" />
			<% } %>
		</div>
		<!-- ��ư //-->
	</div>

<!-- search -->
<form name="searchform" method="post" action="<%=pageBean.getPageUrl()%>" onsubmit="do_search(this); return false;">
<input type="hidden" name="bid" value="<%=propBean.getBoardID()%>" />
<input type="hidden" name="ses" value="<%=sessionName%>" />
<input type="hidden" name="mode" value="list" />
	<!--// searchbox: end //-->
	<div id="schsec">
		<fieldset class="schset">
			<legend>Search Box</legend>
<% if ( propBean.getUseGroup().equals("1")) { %>
			<select name="grp" class="formNo"  title="�׷�˻�">
			<option value="" selected="selected">����</option>
			<%=com.neoboard.PropertyManager.getGroupSelect(propBean.getBoardID(), schBean.getGroup()) %>
			</select>
<% } %>
			<label for="field" class="nlabel">�˻����� ����</label>
			<select id="field" name="field">
				<option value="subject">����</option>
			</select>

			<label for="schinput" class="nlabel">��ϰ˻�</label>
			<input type="text" value="" id="schinput" name="text" class="input" />

			<div class="btndv"><a href="#schsec" onclick="do_search(document.searchform); return false;"><img src="<%=skinRoot %>/images/btn_search.gif" alt="�˻�"/></a></div>
	  </fieldset>
	</div>
	<!--// searchbox: end //-->
</form>
<!-- search //-->
</div>