<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.channel.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="ChannelMa" scope="page" class="kr.co.knoc.channel.ChannelManager" />
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<%
long startTime = System.currentTimeMillis() / 1000;

/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Page Navigator section
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
application.setAttribute("gNavMenuDepth1","01");
application.setAttribute("gNavMenuDepth2","01");
application.setAttribute("gNavMenuDepth3","04");
application.setAttribute("gNavMenuDepth4","00");
/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@include file="/channel/_channel_inc.jsp"%>
<%
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
	String pwd = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("pwd")));
	int	no	= (request.getParameter("no")==null)?0:Integer.parseInt(request.getParameter("no"));
	if(no <= 0) {
%>
		<stl:msgBack msg="�������� �ʴ� �Խù��Դϴ�."/>
<%
		return;
	}

	ChannelBean cb = ChannelMa.getChannel(no);
	if (!channel_user_id.equals(_CEO_USER)) {
		if (pwd == null || pwd.equals(""))
		{
%>
<script type="text/javascript">
	location.href = "/channel/channel_pwd.jsp?m=V&no=<%=no%>";
</script>
<%
			return;
		}

		/* ��й�ȣ ���� */
		if(!pwd.equals(cb.getPwd())) {
%>
<script type="text/javascript">
	alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
	history.back();
</script>
<%
			return;
		}
	}
%>

<%@include file="/include/comheader.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
<style type="text/css">
div.btnsec3 { float:left; height:28px; line-height:28px; padding-top:15px; vertical-align:middle; }
div.btnsec3 strong { vertical-align:middle; color:#e05003;  }
div.btnsec3 button { width:auto; height:auto; background:none; border:0; cursor:pointer; vertical-align:middle; }
div.btnsec3 img { vertical-align:middle; }

/* layer popup */
#layer_back { display:none; position:fixed; top:0; left:0; z-index:990; width:100%; height:100%; background-color:#000; filter:alpha(opacity=80); -khtml-opacity:0.8; -moz-opacity:0.8; opacity:0.8; }

#layer_popup { display:none; position:fixed; top:30%; left:50%; z-index:995; width:500px; height:auto!important; margin-left:-250px; border:solid 2px #e96f03; background-color:#fff;   }
#layer_header { position:relative; width:100%;padding:20px 15px 0 15px;  text-align:left; font-size:16px; font-weight:bold; box-sizing: border-box;}
#layer_header > h1 { font-weight:bold; font-size:16px; color:#1976d2;  }
#layer_header > button { position:absolute; top:15px; right:10px; z-index:996; margin:0; padding:0; border:0; font-size:24px; background-color:#fff; cursor:pointer; color:#7d7d7d;}
#layer_content {height:auto!important; max-height:370px; padding:30px; margin-bottom:0; overflow-y:auto; overflow-x:hidden; font-size:14px; color:#333; line-height:20px; }

#layer_content > div.box {padding:20px 0; border:solid 1px #d8d8d8; background-color:#f1f1f1; font-size:12px; color:#606060; text-align:center;}
#layer_content > div.box > span {color:#e96f03;}
#layer_content > div.box > p {padding-top:10px; font-size:18px; font-weight:900; color:#212121;}
#layer_content > div.box > p > span {font-size:18px; font-weight:900; color:#e96f03;}
#layer_content > p {padding-top:10px; font-size:12px; line-height:18px; text-align:center;}
#layer_content > p > span {color:#e96f03;}
#layer_content p.comment { }
#layer_content span.button { margin-top:20px; text-align:center; }


/* button */
button { border: none; cursor: pointer;}

div.btn_set { position:relative; left:50%; width:70%; margin: 20px 0 0 -150px;}

span.btn_pack a, span.btn_pack button, span.btn_pack input { display:inline-block; overflow:visible; position:relative; width:100%; height:40px; margin:0 0 10px 0; padding:0; border-radius: 2px; font-weight:900; font-size:14px; background:#fff; color:#3c3c3c; text-align:center; text-decoration:none; vertical-align:middle; white-space:nowrap; cursor:pointer; box-sizing:border-box; }

span.btn_pack.xlarge a, span.btn_pack.xlarge button, span.btn_pack.xlarge input { width:100%; }

span.btn_pack > .primary { background-color:#e96f03; color:#fff;}
span.btn_pack > .disabled {border:none !important; background-color:#7d7d7d; color:#fff;}

div.btn_set > ul {}
div.btn_set > ul:after { clear:both; display:block; content:"" }
div.btn_set > ul > li { float:left; width:50%; padding-left:10px; box-sizing:border-box; }
div.btn_set > ul > li:first-child { padding:0; }
</style>

<script type="text/javascript">
	function do_edit() {
		document.abs_w.submit();
	}
</script>
<!-- SmartEditor ���� -->
<script type="text/javascript" src="/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>

	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
		<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->

		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>CEO</span>
                    &gt; <span class="locanow">GREAT WAY</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_1_4.gif" alt="GREAT WAY" /></h3>
				</div>

				<div id="boardsec">
					<!--p>15:48:14 �ӽú����� ����</p-->
					<table cellspacing="0" cellpadding="0" class="viewtype" summary="�ش�Խ����� �����ڷ��� �󼼳����� �����ݴϴ�">
					<caption>�ش�Խ��� �󼼺���</caption>
					<colgroup><col width="100px" /><col width="260px" /><col width="100px" /><col width="260px" /></colgroup>
					<form action="channel_edit.jsp" method="post" name="abs_w" id="abs_w">
					<input type="hidden" name="no" value="<%=no %>">
					<input type="hidden" name="m" value="E">
					<input type="hidden" name="page" value="<%=nowpage %>">
					<input type="hidden" name="pwd" value="<%=pwd %>">
					</form>
					<tr>
						<th scope="row" class="th1">��&nbsp;&nbsp;��</th>
						<td class="td1"><%=cb.getTitle() %></td>
						<th scope="row" class="th2">�����</th>
						<td class="td1"><%=cb.getRegDateString("yyyy-MM-dd") %></td>
					</tr>
					<tr>
						<th scope="row" class="th1">��&nbsp;&nbsp;��</th>
						<td class="cnts1" colspan="3"><%=cb.getContent() %></td>
					</tr>
					<% if (channel_user_id.equals(_CEO_USER)) { %>
					<script type="text/javascript">

					function do_reply(f) {

						if(document.getElementById("chk_time").value < 0){
							alert("�ڵ��α׾ƿ� �Ǿ����ϴ�. �亯�� �ۼ��� �� �����Ƿ� �ۼ� ���̴� ������ �������ּ���.");
							return false;
						}

						if(!confirm("�亯�� �Է��Ͻðڽ��ϱ�?")) {
							return false;
						}

						return true;
					}

					var timer = null;

					$(function(){

						$(document).ready(function() {

							var server_time = "<%=startTime%>";
							var client_time = Math.floor(new Date().getTime() / 1000);
							var gap_time = client_time - server_time;
							//var nam_time = 1 * 60 - gap_time;//5.15 * 60 - gap_time;
							var nam_time = 30 * 60;
							timer = setTimeout(function(){countDown(nam_time - 1);}, 1000);

						});

						$(".pop_postpone").on("click", function(){

							document.getElementById("hidden_ifm").src = "./channel_list.jsp";
							nam_time = 30 * 60;
							clearTimeout(timer);
							timer = setTimeout(function(){countDown(nam_time - 1);}, 1000);

							$("#layer_back").css("display", "none");
							$("#layer_popup").css("display", "none");

						});

						$(".pop_close").on("click", function(){

							$("#layer_back").css("display", "none");
							$("#layer_popup").css("display", "none");

						});

					});

					function countDown(nam_time) {

						clearTimeout(timer);

						if(nam_time < 0) {

							document.getElementById("chk_time").value = nam_time;
							$("#time_box").parent("div").html("<strong>�ڵ��α׾ƿ� �Ǿ����ϴ�. �亯�� �ۼ��� �� �����Ƿ� �ۼ� ���̴� ������ �������ּ���.</strong>");

						}
						else {

							var m = Math.floor(nam_time / 60);
							var s = Math.floor(nam_time - m * 60);

							m = dasi(m);
							s = dasi(s);

							if(m == "01" && s == "00"){
								document.getElementById("mm").value = m;
								document.getElementById("ss").value = s;
								$("#layer_back").css("display", "block");
								$("#layer_popup").css("display", "block");
							}

							document.getElementById("time_box").innerHTML = m + "�� " + s + "��";            // �޼����� �ð� �ؽ�Ʈ ����
							document.getElementById("time_popupBox").innerHTML = " " + m + "�� " + s + "��"; // �˾� �ð� �ؽ�Ʈ ����

							timer = setTimeout(function(){countDown(nam_time - 1);}, 1000);
						}
					}

                    // 1�ڸ� ���ڸ� 2�ڸ��� �����
					function dasi(i){
						if(i<10){
							i = "0" + i;
						}
						return i;
					}

					function postponeTime() {
						document.getElementById("hidden_ifm").src = "./channel_list.jsp";
						//alert("�ڵ��α׾ƿ� �ð��� ����Ǿ����ϴ�.");
						nam_time = 30 * 60;

						clearTimeout(timer);
						timer = setTimeout(function(){countDown(nam_time - 1);}, 1000);
					}

				</script>
				<form action="channel_proc.jsp" method="post" name="abs_w" id="abs_w" onsubmit="return do_reply(this);">
				<input type="hidden" name="no" value="<%=no %>">
				<input type="hidden" name="m" value="R">
				<input type="hidden" name="page" value="<%=nowpage %>">
				<input type="hidden" name="chk_time" id="chk_time" value="">
				<input type="hidden" name="mm" id="mm" value="">
				<input type="hidden" name="ss" id="ss" value="">

				<tr>
					<th scope="row" class="th1"><label for="answer">��&nbsp;&nbsp;��</label></th>
					<td class="cnts1" colspan="3"><textarea name="answer" id="answer" cols="120" style="width:100%;height:300px" class="inputST"><%=etcutil.checkNull("null".equals( cb.getAnswer()) ? "":cb.getAnswer()) %></textarea></td>
				</tr>
				</table>
				<div class="boardbtm mtm10">
					<div class="btnsec3">
					�ڵ� �α׾ƿ� ���� �ð� : <i class="fa fa-clock-o"></i> <strong id="time_box">30�� 00��</strong> <button id="btn_postpone" type="button" onclick="postponeTime()"><img src="/images/board/btn_renewal.gif" alt="����" /></button>					</div>
					<div class="btnsec">
						<!--input type="image" src="/images/board/btn_pro_save.gif" class="tempSave"  alt="�ӽ�����" /-->
						<input type="image" src="/images/board/btn_answer2.gif" alt="�亯" />
						<a href="channel_list.jsp?page=<%=nowpage %>&no=<%=no %>"><img src="/images/board/btn_list.gif" alt="���" /></a>
					</div>
				</div>
				</form>

				<iframe name="hidden_ifm" id="hidden_ifm" src="" style="display:none;"></iframe>

				<% } else {
					if (cb.getAnswer() != null && !cb.getAnswer().equals("")) {
				%>
				<tr>
					<th scope="row" class="th1">�亯��</th>
					<td class="cnts1" colspan="3"><%=cb.getAnswerDateString("yyyy-MM-dd") %></td>
				</tr>
				<tr>
					<th scope="row" class="th1">��&nbsp;&nbsp;��</th>
					<td class="cnts1" colspan="3"><%=etcutil.checkNull(cb.getAnswer()) %></td>
				</tr>
				<% } %>
				</table>

				<div class="boardbtm mtm10">
					<div class="btnsec">
						<img src="/images/board/btn_modi.gif" alt="����" onclick="do_edit();" style="cursor:pointer;"/>
						<img src="/images/board/btn_del.gif" alt="����" onclick="do_edit();" style="cursor:pointer;"/>
						<a href="channel_list.jsp?page=<%=nowpage %>&no=<%=no %>"><img src="/images/board/btn_list.gif" alt="���" /></a>
					</div>
				</div>
				<% } %>

				</div>

			</div>

			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>���� </td>
						<td class="contact_user"><strong>����� : </strong>�ּ���</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2033</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->

		</div>
	</div>

	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>

<!-- layer popup -->
<div id="layer_back"></div>
<div id="layer_popup">
	<div id="layer_content">
		<div class="box"><span>�ڵ� �α׾ƿ�</span> �����Դϴ�.<br />	<p>�����ð�<span id="time_popupBox">18��</span></p></div>
		<p> �����ð����� ����� ������ ��� �ڵ����� �α׾ƿ� �˴ϴ�.<br /> �ð��� �����Ͻ÷��� <span>"�����ϱ�"</span> ��ư�� Ŭ���Ͽ� �ֽʽÿ�.</p>
		<div class="btn_set">
		<ul>
		<li><span class="btn_pack large pop_postpone"><button onclick="" type="button" class="primary">�����ϱ�</button></span></li>
		<li><span class="btn_pack large pop_close"><button onclick="" type="button" class="disabled">�ݱ�</button></span></li>
		</ul>
		</div>
	</div>
</div>
<!-- //layer popup -->
</body>
</html>
