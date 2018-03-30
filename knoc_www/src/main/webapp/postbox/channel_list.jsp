<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.postbox.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>

<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@include file="/postbox/_channel_inc.jsp"%>
<%
	String mode = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("m")));
	if (mode == null || mode.equals("")) {
		mode = "G";
	}
	if (mode == null || mode.equals("")) {
		return;
	}

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
	String pwd = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("qpwd")));

	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");

	ArrayList al = new ArrayList();
	int count = 0;
	int seq = 0;
%>
<%@include file="/include/comheader.jsp"%>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->

		<div id="rightarea">
			<div id="subcnts">
			<%@include file="/include/subtop_04.jsp"%>

				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>������</span>
                    &gt; <span class="locanow">eû�ſ�����</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub04_5_4.gif" alt="e_POST" /></h3>
				</div>
				<div id="boardsec">
				<% if(!channel_user_id.equals(_CEO_USER)) { %>
						<script type="text/javascript">
						//<!--
							String.prototype.trim = function() {
								return this.replace(/(^ *)|( *$)/g, "");
							}
							function do_submit(f) {
								/*if(f.no.value == "") {
									alert('�۹�ȣ�� �Է��ϼ���.');
									f.no.focus();
								}
								else */
								if(f.qpwd.value == "") {
									alert('��й�ȣ�� �Է��ϼ���.');
									f.qpwd.focus();
								}
								else if(f.qpwd.value.length < 6) {
									alert('��й�ȣ�� �ּ� 6�� �̻� �Է��ϼž߸� �մϴ�.');
									f.qpwd.focus();
								}
								else if(!check_pwd(f.qpwd.value)){
									alert('��й�ȣ�� ���� ���ڸ� �ݵ�� ȥ���Ͽ��߸��մϴ�.');
									f.qpwd.focus();
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
				    <table cellspacing="0" cellpadding="0" class="listtype" summary="GREAT WAY �Խ��� �н����带 �Է��� �� �ֽ��ϴ�.">
				<form action="channel_list.jsp" method="post" name="abs_w" onsubmit="do_submit(this); return false;">
				<input type="hidden" name="page" value="<%=nowpage%>">
					<caption>��й�ȣ Ȯ��</caption>
					<colgroup><col width="130px" /><col width="150px" /><col width="70px" /><col width="370px" /></colgroup>
						<tr>
							<th scope="col"><label for="qpwd">��й�ȣ</label></th>
							<td><input type="password" value="" id="qpwd" name="qpwd" class="input" /></td>
							<td><input type="image" src="/images/board/btn_ok.gif" alt="Ȯ��" /></td>
							<td></td>
						</tr>
						<tr>
							<td class="td2" colspan="4"></td>
						</tr>
				</form>
					</table>
				<%
						al = PostBoxMa.getChannelListPwd(pwd, pp.getNPage(), pp.getNPageSize());

						count = PostBoxMa.getChannelListCountPwd(pwd);
						seq = count-(pp.getNPage()-1) * pp.getNPageSize();
					} else {
						al = PostBoxMa.getChannelList(pp.getNPage(), pp.getNPageSize());

						count = PostBoxMa.getChannelListCount();
						seq = count-(pp.getNPage()-1) * pp.getNPageSize();
					}
				%>
					<table cellspacing="0" cellpadding="0" class="listtype" summary="�系�������� �ǰ� ����� �����ݴϴ�.">
					<caption>GREAT WAY �Խ��� ���</caption>
					<colgroup><col width="55px" /><col width="375px" /><col width="110px" /><col width="85px" /></colgroup>
						<tr>
							<th scope="col">��ȣ</th>
							<th scope="col">����</th>
							<th scope="col">�۾���</th>
							<th scope="col">�����</th>
						</tr>
				<%  if(count==0) { %>
						<tr>
							<td colspan="4" align="center">�˻��� �Խù��� �������� �ʽ��ϴ�.</td>
						</tr>
				<%
					} else {
						Iterator iter = al.iterator();
						while(iter.hasNext()){
							PostBoxBean cb = (PostBoxBean)iter.next();
				%>
						<tr>
							<td><%=seq %></td>
							<td class="subj"><a href="channel_view.jsp?no=<%=cb.getNo() %>&page=<%=nowpage %>&pwd=<%=pwd %>"><%=cb.getTitle() %></a></td>
							<td>�����</td>
							<td><%=cb.getRegDateString("yyyy-MM-dd") %></td>
						</tr>
				<%
							seq--;
						}
					}
				%>
					</table>
					<%
					String attach = "";
					if(channel_user_id.equals(_CEO_USER)) {
						attach = "&m="+mode;
					}else{
						attach = "&m="+mode+"&qpwd="+pwd;
					}
					%>

					<div class="boardbtm">
						<div class="leftdv">
							<!--// paging: start //-->
				<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=count%>" />
							<div class="paging">
								<a href="<%=prevBlock.getAnchor(attach)%>"><img src="/images/board/preview.gif" alt="ó��" /></a>
								<a href="<%=prevPage.getAnchor(attach)%>"><img src="/images/board/ppreview.gif" alt="����" /></a>
								<% int ll = 1; %>
								<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
								<% if ( p.getPage() == pp.getNPage()) { %>
								<span class="pagenow"><%=p.getPage()%></span> <% if (ll != pages.size()) {%> <% } %>
								<% } else { %>
								<a href="<%=p.getAnchor(attach)%>"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> <% } %>
								<% } %>
								<% ll++; %>
								</stl:loop>
								<a href="<%=nextPage.getAnchor(attach)%>"><img src="/images/board/nnext.gif" alt="����" /></a>
								<a href="<%=nextBlock.getAnchor(attach)%>"><img src="/images/board/next.gif" alt="��" /></a>
							</div>
							<!--// paging: end //-->
						</div>
						<div class="rightdv">
						<% if(channel_user_id.equals(_CEO_USER)) { %>
							<a href="#pass_ch_pop" onclick="pass_ch_pop(); return false;"><img src="/images/common/btn_changepass.gif" alt="��й�ȣ����" /></a>
						<%} %>
						</div>
					</div>
				</div>
			</div>

			<!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>����� û�Ű�����</td>
					<td class="contact_user"><strong>����� : </strong>Ȳ��ö</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2124</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->

		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>

<script type="text/javascript">
function pass_ch_pop(){
	var Url ="";
	Url = "/postbox/password_ch_pop.jsp";
	window.open(Url, "_blank");
}


</script>