<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","03");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>           
<%@include file="/include/comheader.jsp"%>


  <%@include file="/include/subtopnavi_new.jsp"%>
  <!--// subtopNavi: start //-->

	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
			  <%@include file="/include/subtop_03.jsp"%>
			  <!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="한국석유공사 메인페이지로 이동" /></a>	
					&gt; <span>사업소개</span>
                    &gt; <span>해외사업</span>
                    &gt; <span class="locanow">석유개발현황도</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 수정] :: 작성자: 장정인 -->
				<div class="pagetle">
					<h3><img src="/images/business/ttl_sub03_2_2.gif" alt="석유개발현황도" /></h3>
				</div>
				<!--시작-->
				<div class="business2">
                	<%@include file="sub03_2_2_map.jsp"%>
                    
                   <h4><img src="../images/business/img_ttl_sub03_2_2_krg.gif" alt="이라크 Bazian" /></h4>
                   <div class="mT10"><img src="../images/business/img_sub03_2_2_krg_bzian.gif" alt="이라크 Bazian광구도" /></div>
                    
                    <p class="rtxt">[2013년 12월말 기준]</p>
					<table class="chart2" summary="이라크 KRG BAZIAN 광구 정보를 확인할 수 있습니다.">
					
					<caption>이라크 KRG BAZIAN 광구 정보</caption>
					<col width="60px" />
					<col width="60px" />
					<col width="70px" />
					<col width="70px" />
					<col width="50px" />
					<col width="50px" />
					<col width="60px" />
					<thead>
					<tr>
					<th scope="col" class="first">구분</th>
					
					<th scope="col">광구명</th>
					
					<th scope="col">운영권자</th>
					
					<th scope="col">지경부 신고일</th>
					
					<th scope="col">한국측지분<br />(%(퍼센트))</th>
					
					<th scope="col">한국측지분<br />공사</th>					
					
					<th scope="col">국내참여기업</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">탐사사업</td>
					<td>이라크 Bazian</td>
					<td>석유공사</td>
					<td>'07.11</td>
					<td>100</td>
					<td>73.38</td>
					<td>대성, 삼천리,<br />마주코, GS 홀딩스</td>
					</tr>
					</tbody>
					</table>
                        
                    <p class="mT20">이라크 북부 쿠르드 지역에 위치한 Bazian광구는, 2007년 11월 이라크 쿠르드 자치 정부와 생산물 분배계약을 체결하고 광권을 취득하였다. 동 광구는 한국콘소시움 주주사로 구성된 KNOC Bazian Ltd.가 운영하고 있으며, 주주구성은 석유공사(73.38%)를 비롯하여 대성(8.8%), 삼천리(8.8%), 마주코(4.43%), GS홀딩스(4.43%)가 참여하고 있다. 2009년 10월부터 2010년 8월까지 첫 탐사공을 시추하여 탄화수소(원유 및 가스)부존을 확인하였으며, 2013년 6월부터는 두 번째 탐사정 시추를 진행 중이다</p>
                </div>
				<!--//끝-->
		  </div>
		  
		  <div class="new_officer">
				<table summary="담당부서 및 연락처 수정일">
				<caption>담당부서 및 연락처 수정일</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>담당부서 : </strong>탐사사업처 아시아탐사팀</td>
						<td><strong>연락처 : </strong>031-380-2774</td>
						<td><strong>수정일 : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
		  
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>