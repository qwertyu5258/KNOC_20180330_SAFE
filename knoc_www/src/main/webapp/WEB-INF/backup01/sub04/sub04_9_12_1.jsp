<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","13");
	application.setAttribute("gNavMenuDepth3","09");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>        
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_05.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="한국석유공사 메인페이지로 이동" /></a>	
					&gt; <span>정보마당</span>
                    &gt; <span>사전정보공개</span>
                    &gt; <span class="locanow">소송정보</span>
				</div>
				<!--// location: end //-->
				
				<div class="pagetle">
					<h3><img src="/images/information/ttl_sub04_9_12.gif" alt="소송정보" /></h3>
				</div>
				 <div class="officer" style="padding-top:20px;">
					<ul class="tab">
			            <li><a href="sub04_9_12.jsp" ><img src="/images/business/ab_sub02_2_6_12_2.gif" alt="2013년" /></a></li>
						<li><a href="sub04_9_12_1.jsp" ><img src="/images/business/ab_sub02_2_6_12r.gif" alt="2012년" /></a></li>
					</ul>				
				<h5 style="margin-bottom:10px; margin-top:20px;">2012년 확정판결 내역 및 소송대리인</h5>
				<table  class="chart2" summary="2012년 확정판결 내역 및 소송대리인">

					<caption>2012년 확정판결 내역 및 소송대리인</caption>
					<col width="150px" />
					<col width="300px" />
					<col width="70px" />
					<thead>
						<tr>
							<th scope="col" class="first">사건명</th>
							<th scope="col">소송대리인</th>
							<th scope="col">확정일</th>
						</tr>
					</thead>
					<tbody>
					<tr>
                      <th rowspan="3" class="first" scope="row">부당이득금반환</th>
					  <td class="tdleft" style="text-align:center;">법무법인 하나로</td>
					  <td>2012.5.22</td>
					</tr>
					</tbody>
				</table>			
				
						
				<h5 style="margin-bottom:10px; margin-top:30px;">2012년 확정판결 소송대리인별 사건수임건수</h5>
				<table  class="chart2" summary="2012년 확정판결 소송대리인별 사건수임건수">

					<caption>2012년 확정판결 소송대리인별 사건수임건수</caption>
					<col width="150px" />
					<col width="370px" />
					<thead>
						<tr>
							<th scope="col" class="first">소송대리인</th>
							<th scope="col">사건수임건수</th>
						</tr>
					</thead>
					<tbody>
					<tr>
                      <th rowspan="3" class="first" scope="row">법무인 하나로</th>
					  <td class="tdleft" style="text-align:center;">1</td>
					</tr>
					</tbody>
				</table>	
				
				<div class="new_officer">
				<table summary="담당부서 및 연락처 관리일">
				<caption>담당부서 및 연락처 관리일</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>담당부서 : </strong>경영조정실 법무팀</td>
						<td><strong>연락처 : </strong>031-380-2568</td>
						<td><strong>관리일 : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div> <!--new_officer end -->
			</div>
		</div>
	</div>
	   
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>