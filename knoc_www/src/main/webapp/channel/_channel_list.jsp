<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>    
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.channel.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="ChannelMa" scope="page" class="kr.co.knoc.channel.ChannelManager" />
<%
	if (mode == null || mode.equals("")) {
		return;
	}
	
	if (channel_user_id == null || (!channel_user_id.equals(_CHANNEL_USER)
		&& !channel_user_id.equals(_CEO_USER)))  
	{ 
%>
<script type="text/javascript">
	  alert("<%=channel_user_id%>");  
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
    <table cellspacing="0" cellpadding="0" class="listtype" summary="�ش�Խ����� �н������Դϴ�.">
<form action="channel.jsp" method="post" name="abs_w" onsubmit="do_submit(this); return false;">
<input type="hidden" name="m" value="L">
<input type="hidden" name="page" value="<%=nowpage%>">    
	<caption>�ش�Խ��� �н�����</caption>
	<colgroup><col width="130px" /><col width="150px" /><col width="70px" /><col width="370px" /></colgroup>
		<tr>
			<th>��й�ȣ</th>
			<th><input type="password" value="" id="qpwd" name="qpwd" class="input" /></th>
			<th><input type="image" src="/images/board/btn_ok.gif" alt="Ȯ��" /></th>
			<th></th>
		</tr>
		<tr>
			<td class="td2" colspan="4"></td>
		</tr>
</form>		
	</table>
<%
		al = ChannelMa.getChannelList(pwd, pp.getNPage(), pp.getNPageSize());		
		
		count = ChannelMa.getChannelListCount(pwd);
		seq = count-(pp.getNPage()-1) * pp.getNPageSize();
		if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
	} else {
		al = ChannelMa.getChannelList("", pp.getNPage(), pp.getNPageSize());		
		
		count = ChannelMa.getChannelListCount("");
		seq = count-(pp.getNPage()-1) * pp.getNPageSize();
		if(seq < 0){ seq = 1;} // ���Ⱦ��� ��ġ 2016.03.21 ECJ
	}
%>
	<table cellspacing="0" cellpadding="0" class="listtype" summary="�ش�Խ����� �����ڷ��� ����� �����ݴϴ�">
	<caption>�ش�Խ��� ���</caption>
	<colgroup><col width="55px" /><col width="375px" /><col width="110px" /><col width="85px" /></colgroup>
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�۾���</th>
			<th>�����</th>
		</tr>
<%  if(count==0) { %>
		<tr>
			<td colspan="4" align="center">�˻��� �Խù��� �������� �ʽ��ϴ�.</td>
		</tr>		
<% 
	} else {
		Iterator iter = al.iterator();
		while(iter.hasNext()){
			ChannelBean cb = (ChannelBean)iter.next();
%>			
		<tr>
			<td><%=seq %></td>
			<td class="subj"><a href="channel.jsp?m=V&no=<%=cb.getNo() %>&page=<%=nowpage %>&pwd=<%=pwd %>"><%=cb.getTitle() %></a></td>
			<td>�����</td>
			<td><%=cb.getRegDateString("yyyy-MM-dd") %></td>
		</tr>
<%				
			seq--;
		}
	}
%>					
	</table>
	
	<div class="boardbtm">
		<div class="leftdv">
			<!--// paging: start //-->
<stl:pager pageName="pp" prevPage="prevPage" nextPage="nextPage" prevBlock="prevBlock" nextBlock="nextBlock" pages="pages" firstPage="firstPage" lastPage="lastPage" blockSize="10" totalCount="<%=count%>" />			
			<div class="paging">
				<a href="<%=prevBlock.getAnchor("&m="+mode)%>"><img src="/images/board/preview.gif" alt="ó��" /></a>
				<a href="<%=prevPage.getAnchor("&m="+mode)%>"><img src="/images/board/ppreview.gif" alt="����" /></a>
				<% int ll = 1; %>
				<stl:loop name="pages" loopId="p" className="kr.co.knoc.tags.pager.PageAnchor">
				<% if ( p.getPage() == pp.getNPage()) { %>
				<span class="pagenow"><%=p.getPage()%></span> <% if (ll != pages.size()) {%> <% } %>
				<% } else { %>
				<a href="<%=p.getAnchor("&m="+mode)%>"><%=p.getPage()%></a> <% if (ll != pages.size()) {%> <% } %> 
				<% } %>
				<% ll++; %>
				</stl:loop>								
				<a href="<%=nextPage.getAnchor("&m="+mode)%>"><img src="/images/board/nnext.gif" alt="����" /></a>
				<a href="<%=nextBlock.getAnchor("&m="+mode)%>"><img src="/images/board/next.gif" alt="��" /></a>
			</div>
			<!--// paging: end //-->
		</div>
		<div class="rightdv">
			<!-- <a href="2-1write.jsp"><img src="/images/board/btn_write2.gif" alt="�۾���" /></a> -->
		</div>
	</div>
	<!--// searchbox: end //-->
	<div id="schsec">
		<fieldset class="schset">
			<legend>Search Box</legend>
			
			<label for="schsel" class="nlabel">��ϰ˻�����</label>
			<select id="schsel">
				<option>����</option>
				<option>�۾���</option>
				<option>����</option>
			</select>
			
			<label for="schinput" class="nlabel">��ϰ˻�</label>
			<input type="text" value="" id="schinput" class="input" />							
			
			<div class="btndv"><a href="#"><img src="/images/board/btn_search.gif" alt="�˻�" /></a></div>
	  </fieldset>
	</div>
	<!--// searchbox: end //-->
</div>