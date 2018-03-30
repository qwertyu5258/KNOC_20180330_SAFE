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
<title>한국석유공사 5주간 추이</title>
</head>
<script type="text/javascript">

function go_print(){
	window.print(); 
}
</script>
<body>

<div id="development"><!-- 팝업 width=584px -->
	<h1><img src="/images/2012/tit_5ju.gif" alt="5주간 추이" /></h1>
	<p>(단위 : 원/ℓ, ※ 부가세 포함)</p>
	<table summary="한국석유공사 국내유가 5주간 추이 내용 입니다.">
	<caption>5주간 추이</caption>
	<colgroup>
		<col width="" />
		<col width="" />
		<col width="" />
		<col width="" />
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">휘발유</th>
			<th scope="col">자동차경유</th>
			<th scope="col">자동차용부탄</th>
		</tr>
	</thead>
	<tbody>
	<%
	for(int i =dayList1.size()-1 ; -1 <i ; i--){
		HashMap hashMap=(HashMap)dayList1.get(i);
		String year=(String)hashMap.get("value1");
		%>
		<tr>
			<td><%=year.substring(0,4) %>년<%=year.substring(4,6) %>월<%=year.substring(6,7) %>주</td>
			<td><%=hashMap.get("value2") %></td>
			<td><%=hashMap.get("value3") %></td>
			<td><%=hashMap.get("value4") %></td>
		</tr>
		<%
	}
	%>
		<%--
		<tr>
			<td>2012년7월2주</td>
			<td>1906,77</td>
			<td>1728,36</td>
			<td>1364,8</td>
		</tr>
		<tr>
			<td>2012년7월3주</td>
			<td>1906,77</td>
			<td>1728,36</td>
			<td>1364,8</td>
		</tr>
		<tr>
			<td>2012년7월4주</td>
			<td>1906,77</td>
			<td>1728,36</td>
			<td>1364,8</td>
		</tr>
		 --%>
	</tbody>
	</table>
	<p class="opinet_txt">※ 과거 자료는 오피넷<a href="http://www.opinet.co.kr" target="_blank" title="새창으로 이동">(http://www.opinet.co.kr)</a>에서 확인하실 수 있습니다.</p>
	<div class="print_5">
		<a href="#" onclick="go_print();"><img src="/images/2012/5ju_print.gif" alt="인쇄하기" /></a>
	</div>
</div><!-- development end -->

</body>
</html>