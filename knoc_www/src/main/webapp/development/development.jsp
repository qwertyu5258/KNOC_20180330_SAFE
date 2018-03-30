<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.knoc.domestic.xml.OilDateXmlParser"%>

<%
OilDateXmlParser dateXmlParser=new OilDateXmlParser("http://www.opinet.co.kr/dashboard/knoc/domestic_week_oildata.jsp");
List<HashMap<String, String>> dayList1=dateXmlParser.getDomestic_week_oildata(); 

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<link rel="stylesheet" type="text/css" href="/include/css/common_2012.css" />
<title>�ѱ��������� 5�ְ� ����</title>
</head>
<script type="text/javascript">

function go_print(){
	window.print(); 
}
</script>
<body>

<div id="development"><!-- �˾� width=584px -->
	<h1><img src="/images/2012/tit_5ju.gif" alt="5�ְ� ����" /></h1>
	<p>(���� : ��/��, �� �ΰ��� ����)</p>
	<table summary="�ѱ��������� �������� 5�ְ� ���� ���� �Դϴ�.">
	<caption>5�ְ� ����</caption>
	<colgroup>
		<col width="" />
		<col width="" />
		<col width="" />
		<col width="" />
	</colgroup>
	<thead>
		<tr>
			<th scope="col">����</th>
			<th scope="col">�ֹ���</th>
			<th scope="col">�ڵ�������</th>
			<th scope="col">�ڵ������ź</th>
		</tr>
	</thead>
	<tbody>
	<%
	for(int i =dayList1.size()-1 ; -1 <i ; i--){
		HashMap hashMap=(HashMap)dayList1.get(i);
		String year=(String)hashMap.get("value1");
		%>
		<tr>
			<td><%=year.substring(0,4) %>��<%=year.substring(4,6) %>��<%=year.substring(6,7) %>��</td>
			<td><%=hashMap.get("value2") %></td>
			<td><%=hashMap.get("value3") %></td>
			<td><%=hashMap.get("value4") %></td>
		</tr>
		<%
	}
	%>
		<%--
		<tr>
			<td>2012��7��2��</td>
			<td>1906,77</td>
			<td>1728,36</td>
			<td>1364,8</td>
		</tr>
		<tr>
			<td>2012��7��3��</td>
			<td>1906,77</td>
			<td>1728,36</td>
			<td>1364,8</td>
		</tr>
		<tr>
			<td>2012��7��4��</td>
			<td>1906,77</td>
			<td>1728,36</td>
			<td>1364,8</td>
		</tr>
		 --%>
	</tbody>
	</table>
	<p class="opinet_txt">�� ���� �ڷ�� ���ǳ�<a href="http://www.opinet.co.kr" target="_blank" title="��â���� �̵�">(http://www.opinet.co.kr)</a>���� Ȯ���Ͻ� �� �ֽ��ϴ�.</p>
	<div class="print_5">
		<a href="#" onclick="go_print();"><img src="/images/2012/5ju_print.gif" alt="�μ��ϱ�" /></a>
	</div>
</div><!-- development end -->

</body>
</html>