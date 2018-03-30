<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","13");
	application.setAttribute("gNavMenuDepth4","05");
//	application.setAttribute("gNavMenuDepth3","06");
//	application.setAttribute("gNavMenuDepth4","14");	
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>
<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%>
<!--// subtopNavi: start //-->
<script type="text/javascript">
$(document).ready(function(){
	$("a.btn_open_popup").on("click", function(e) {
		openPopup(this);
		e.preventDefault();
	});	
});
function openPopup(obj) {
	obj = $(obj);
	var url = obj.attr("href");
	var title = obj.attr("title");
	var popup_size = "size_640x480"; //�⺻ ������
		
	var class_arr = obj.attr("class").split(" ");
	var size_fmt = /^size_\d{3,4}x\d{3,4}$/;
	for(var i = 0 ; i < class_arr.length ; i++) {
		if(size_fmt.test(class_arr[i])) { popup_size = class_arr[i]; break; }
	}
	
	size_arr = popup_size.replace("size_", "").split("x");
	var popup_width = size_arr[0];
	var popup_height = size_arr[1];
	
	try {
		window.open(url, title, "scrollbars=yes,width=" + popup_width + ",height=" + popup_height + ",top=100,left=600");		
	}
	catch (e) {
		window.open(url, "", "scrollbars=yes,width=" + popup_width + ",height=" + popup_height + ",top=100,left=600");
	}
}
</script>
<div id="contents">
	<%@include file="/include/sub_leftmenu_new.jsp"%>
	<div id="rightarea">
		<div id="subcnts">
			<%@include file="/include/subtop_02.jsp"%>
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; 
				<span>�����濵</span> &gt; 
				<span>�濵����</span> &gt; 
				<span>��Ÿ����</span> &gt; 
				<span class="locanow">�������� ó�а�� �� ¡�衤��� ����</span>
			</div>
			<div class="pagetle">
				<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="��Ÿ����" /></h3>
			</div>
			<div class="officer">
				<h4><img src="/images/management/sub02_2_6_14_ta.gif" alt="�������� ó�а�� �� ¡�衤��� ����" /></h4>
                 <p style="padding:10px 0 20px 0;"><a class="btn_open_popup size_800x1000" href="/popup_open.html"><img src="/images/management/ab_sub02_2_6_14_btn.gif" alt="¡�衤��� ���� �ٷκ���" /></p>
				<ul class="tab mb_10">
					<li><a href="/sub02/sub02_2_6_14.jsp" ><img src="/images/management/ab_sub02_2_6_16.gif" alt="2016��" /></a></li>
					<li><a href="/sub02/sub02_2_6_14_15.jsp" ><img src="/images/management/ab_sub02_2_6_14_15.gif" alt="2015��" /></a></li>
					<li><a href="/sub02/sub02_2_6_14_14.jsp" ><img src="/images/management/ab_sub02_2_6_14_14r.gif" alt="2014��" /></a></li>
				</ul>

				<div style="clear:both;">
				</div>
				<table class="chart2" summary="�������� ó�а�� �Դϴ�.">
					<caption>�������� ó�а��</caption>
					<colgroup>
					<col width="" />
					<col width="" />
					<col width="" />
					<col width="" />
					<col width="" />
					<col width="" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="first">����</th>
							<th scope="col">���� ����</th>
							<th scope="col">���бݾ�</th>
							<th scope="col">¡������</th>
							<th scope="col">ó����</th>
							<th scope="col">��� ����</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="first">1</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>���</td>
							<td>2014.4</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">2</td>
							<td>���α���� ����</td>
							<td>-</td>
							<td>��å</td>
							<td>2014.7</td>
							<td>���</td>
						</tr>
						<tr>
							<td class="first">3</td>
							<td>ǰ�������ǹ� ����</td>
							<td>-</td>
							<td>����1��</td>
							<td>2014.7</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">4</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>����3��</td>
							<td>2014.8</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">5</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>��å</td>
							<td>2014.8</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">6</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>��å</td>
							<td>2014.8</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">7</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>���</td>
							<td>2014.8</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">8</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>���</td>
							<td>2014.8</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">9</td>
							<td>ǰ�������ǹ� ����</td>
							<td>-</td>
							<td>�ĸ�</td>
							<td>2014.12</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">10</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>���</td>
							<td>2014.12</td>
							<td>�̰��</td>
						</tr>
						<tr>
							<td class="first">11</td>
							<td>�����ǹ� ����</td>
							<td>-</td>
							<td>���</td>
							<td>2014.12</td>
							<td>�̰��</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"></td>
							<td class="contact_team"><strong>���μ� : </strong>����濵ó �λ���</td>
							<td class="contact_user"><strong>����� : </strong>�ڿ�ȯ</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2706</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!--div class="infoCheck">
				<%@include file="/include/satisfy_link.jsp"%>
			</div-->
		</div>
	</div>
</div>
<%@include file="/include/comfooter.jsp"%>
<!--// footer: start //-->
<!--// footer: end //-->
</div>
</body></html>