<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","08");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","03");
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
				<%@include file="/include/subtop_07.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="한국석유공사 메인페이지로 이동" /></a>	
					&gt; <span>어린이
</span>
                    &gt; <span>석유바로알기</span>
                    &gt; <span class="locanow">석유공부방</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 수정] :: 작성자: 장정인 -->
				<div class="pagetle">
					<h3><img src="/images/child/ttl_sub07_2_3.gif" alt="석유공부방" /></h3>
				</div>
				<!--시작-->
				<div class="child2">
					<div>
                		<ul class="tab">
                    	<li><a href="sub05_8_2_3.jsp"><img src="/images/child/tab_sub07_2_3_1_1.gif" alt="석유100년"/></a></li>
						<li><a href="sub05_8_2_3_1.jsp"><img src="/images/child/tab_sub07_2_3_1_2.gif" alt="석유의종류"/></a></li>
						<li><a href="sub05_8_2_3_2.jsp"><img src="/images/child/tab_sub07_2_3_1_3r.gif" alt="석유바로알기"/></a></li>
						</ul>
						<div class="tabCon">
							<h4 class="mT0"><img src="/images/child/tab_sub07_2_3_3_1.gif" alt="석유정제 과정에 대해 알아볼까요?" /></h4>
								<p>석유정제에는 원유의 주성분인 탄화수소의 혼합물들을 비등점 차이에 따라 분류하는 증류과정과 이 증류과정을 
								통해 뽑아 낸 여러 가지 유분 중에 포함되어 있는 불순물을 제거하고, 또 촉매를 첨가하여 탄화수소에 반응을 
								일으켜 성질이 다른 탄화수소를 만들어 내는 전화(분해, 개질)과정이 있습니다. 이와 같은 증류, 탈황, 분해, 
								개질 등의 공정을 총칭하여 석유 정제라고 합니다.</p>
								<div class="mT10 ctxt"><img src="/images/child/sub07_2_3_img1.gif" alt="석유정제 과정 장면" />
									<ul class="blindtext">
										<li>-42~1℃ : LPG</li>
										<li>30~120℃ : 휘발유, 나프타</li>
										<li>150~280℃ : 등유, 제트연료유</li>
										<li>230~350℃ : 경유</li>
										<li>가열로 → 석유증기 → 300℃ 이상 : 아스팔트, 증유/잔사유</li>
										<li>증류탑</li>
									</ul>
								</div>

							<h4><img src="/images/child/tab_sub07_2_3_3_2.gif" alt="증류" /></h4>
								<p>증류란 원유를 구성하고 있는 탄화수소를 그 비등점의 차이에 따라 분류하는 공정으로 2가지 방법이 있음.</p>
								<ul>
								<li><strong>상압증류방법</strong>
								<p>대기압과 같은 상온에서 비등점 차이로 분류, 이 공정을 통해 휘발유, 나프타, 등유, 경유, 중질유 등의 제품이 생산됨</p></li>
								<li class="mT10"><strong>감압증류</strong>
								<p>대기압보다 낮은 압력하에서 시행되는 증류로 중질유는 고온에서 증류하면 열분해하여 품질이 열화되고 수율이 낮아짐에 따라 낮은 온도에서 비등할 수 있도록 압력을 낮추어 증류하여 휘발유, 나프타, 등유, 경유, 중질유 등의 제품을 생산 </p></li>
								</ul>
							<h4><img src="/images/child/tab_sub07_2_3_3_3.gif" alt="탈황방식" /></h4>
								<p>먼저 수소화정제법을 들 수 있습니다. 수소화정제법은 원료유를 수소와 혼합하여 고온고압하에서 주로 코발트-몰리브데-알루미나계의 촉매를 사용하여 반응시킴으로써 황, 질소, 산소화합물 등을 제거하는 방법입니다. 또한 황성분을 제거하기 위해 산이나 알카리 세척을 이용한 화학적 정제법이 사용되기도 합니다. 이 방법은 현재 가장 보편적으로 사용되고 있는 방법이라 합니다. </p>
							<h4><img src="/images/child/tab_sub07_2_3_3_4.gif" alt="전화" /></h4>
								<p>전화란 가치가 적은 석유유분을 여러 방법으로 화학변화시켜 전보다 우수하고 새로운 석유제품으로 바꾸는 것으로서 고옥탄가의 휘발유, 개질휘발유 등의 제조를 위해 개발됨. 전화방법으로는 열분해, 접촉분해, 개질, 수소화분해, 이성화, 알킬화 등의 방법이 있는데, 이중 접촉분해, 개질, 수소화분해가 중요</p>
							<h4><img src="/images/child/tab_sub07_2_3_3_5.gif" alt="열분해란?" /></h4>
								<p>중질유를 원료로 하여 열분해를 통해 원료유보다 저점도의 중유와 경유를 제조하는 방법</p>
							<h4><img src="/images/child/tab_sub07_2_3_3_17.gif" alt="접촉분해란?" /></h4>
								<p>유 이상의 고비점 유분을 촉매 존재하에 고온에서 분해하여 높은 수율로 고옥탄가의 가솔린을 제조하는 방법으로 촉매로는 silica-alumina계나 합성 zeolite와 같은 고체산을 사용함</p>
							<h4><img src="/images/child/tab_sub07_2_3_3_6.gif" alt="개질이란?" /></h4>
								<p>옥탄가가 낮은 나프타성분을 변화시켜 고옥탄가의 가솔린으로 개질하는 방법으로 개질의 종류로는</p>
								<ul>
								<li><strong>열 개질법</strong>
								<p>대기압과 같은 상온에서 비등점 차이로 분류, 이 공정을 통해 휘발유, 나프타, 등유, 경유, 중질유 등의 제품이 생산됨</p></li>
								<li class="mT10"><strong>접촉개질법</strong>
								<p>중질가솔린 유분을 수소 기류중에서 고온가압하에서 촉매와 접촉시켜 고옥탄가의 가솔린을 얻는 방법이 있음</p></li>
								</ul>
							<h4><img src="/images/child/tab_sub07_2_3_3_7.gif" alt="수소화분해란?" /></h4>
								<p>수소기류 중에서 촉매를 사용하여 원료유를 고온고압하에서 분해하여 나프타나 중간유분을 제조하는 방법으로 이 공법의<br/>특징으로는</p>
								<ul>
								<li>광범위한 원료유의 처리가 가능하고 탈황이나 분해를 동시에 시행</li>
								<li>분해조건을 바꿈으로서 각종 분해 생성률의 수율을 광범위하게 바꿀 수 있음</li>
								<li>경질가스나 탄소의 생성이 적으며, 원료에 대한 수율은 120%까지 달할수도 있음</li>
								<li>분해와 동시에 탈황, 탈질소, 수소화도 행할 수 있으므로 제품은 고품질임</li>
								</ul>
							<h4><img src="/images/child/tab_sub07_2_3_3_8.gif" alt="이성화(에테르화 공정)란?" /></h4>
								<p>직류 탄화수소로부터 분기 탄화수소의 생성, 또는 분기도가 높은 탄화수소를 생성하는 방법으로 특히 N-파라핀으로부터 알킬화의 원료로 사용되는 이소부탄의 제조와 고옥탄가 연료로서의 아소펜탄과 이소핵산의 제조가 중요함 </p>
							<h4><img src="/images/child/tab_sub07_2_3_3_9.gif" alt="알킬화란?" /></h4>
								<p>알킬기를 어떤 화합물에 부가시키는 조작으로 공업적으로는 에틸벤젠, 도테실벤젠 등 의 석유화학제품의 제조를 목적으로 하는 것과 파리핀과 올레핀으로부터 고옥탄 가솔린의 제조를 목적으로 하는 것이 있다.</p>
							<h4><img src="/images/child/tab_sub07_2_3_3_10.gif" alt="중질유 분해공정에 대하여" /></h4>
								<p>중질유분해공정은 수소수첨분해공정, FCC공정, Delayed cocker공정, RHDS공정 등이 있습니다. 수송수첨분해공정은 비등점이 350도 이상인 Reduced crude(잔사유)를 원료로 하여 크래킹하기 위해 수소을 첨가하는 공정으로 이 공정은 중질류로 등유나 경유를 생산하기 위해 주로 사용됩니다.FCC공정은 수소를 첨가시키지 않고 크래킹하는 것으로 주로 가솔린을 제조하는데 주로 사용됩니다.Delayed cocker공정은 크래킹이 일어나면서 카본덩어리가 생산되어 cocker 상태로 존재합니다. <br/>마지막으로 RHDS공정은 상기 분해공정과는 달리 탈황만 전문적으로 하는 공정입니다. 따라서 이 공정을 사용하기 위해서는 초 저유황유를 사용하는 것이 일반화되어 있습니다. </p>
							<h4><img src="/images/child/tab_sub07_2_3_3_11.gif" alt="실내등유와 보일러 등유" /></h4>
								<p>경유의 경우 하절기용과 동절기용이 있어 하절기 경유를 동절기에 사용할 경우 점화불량 등의 현상이 발생할 수 있으나 등유의 경우, 실내등유와 보일러등유로 구분이 되며, 실내등유의 경우 왁스성분이 거의 없기 때문에 저온에도 잘 얼지 않으나, 보일러등유의 경우 유동점이 -15도까지로 되어 있습니다. 따라서 실내등유를 보일러에 사용해도 무리가 없습니다. 또한 실내등유와 보일러등유를 구분하기 위해 보일러등유는 적색을, 실내등유는 백색으로 되어 있습니다. 보일러등유는 석유제품의 효율적 활용을 위해 "98.8.1부로 공급하게 되었습니다. 보일러등유는 색상을 구분하기 위하여 등유와 경유를 혼합한 상태에서 솔벤트red 164란 제품을 첨가하여 적색을 만들고 있습니다. 발열량은 보일러등유가 8,970kcal/L, 실내등유가 8,690kcal/L입니다. </p>
							<h4><img src="/images/child/tab_sub07_2_3_3_12.gif" alt="자동차 경유와 선박용 경유의 차이점은?" /></h4>
								<p>가장 큰 차이점은 자동차용 경유가 휠씬 좋은 기름이라는 것이다. 도로에서 사용되는 경유는 환경오염방지를 위해 유황함량이 제한되어 있으나 선박용 경유는 유황함적용기준이 많이 완화되어 있기 때문에 값도 저렴한 편이다</p>
							<h4><img src="/images/child/tab_sub07_2_3_3_13.gif" alt="Biodiesel(바이오디젤)이란" /></h4>
								<p>Biodiesel 프로그램은 미국 에너지부와 농무부가 바이오디젤의 생산원가를 낮추기 위해 주요 연구 개발업무를 공동으로 수행하는 프로그램으로 알려지고 있다. 미 농무부에서는 작물 생산원가를 낮추기 위한 연구 및 작물 관리 기술 개량 등의 연구를 수행하고 있으며, 미 에너지부에서는 USEPA의 기준에 적합한 엔진을 테스트하고 있다고 한다.</p>
								<dl>
								<dt>1) 바이오디젤이란?</dt>
								<dd>- 미국 에너지부에서는 바이오디젤에 대해 다음과 같이 정의하고 있다.
									<ul>
									<li>식물의 오일이나 지방으로부터 얻어진 디젤연료를 대체할 수 있는 연료</li>
									<li>디젤엔진에 사용될 수 있고 기존의 디젤연료와 비슷한 성능을 발휘할 수 있는 대체연료</li>
									<li>외국으로부터 석유 수입량을 줄일 수 있는 재생가능한 원료로 국내에서 생산된 액체 연료</li>
									<li>분진, 이산화탄소, 황 등의 오염물질의 배출이 적고 생분해성인 운송 연료</li>
									</ul>
								</dd>
								</dl>
								<dl>
								<dt>2) 바이오디젤의 원료</dt>
								<dd>1991년 통계에 따르면 디젤연료 사용량의 10%를 바이오디젤 연료가 대체하여 사용되었으며 약 100억 kg 정도의 바이오디젤이 생산되었는데 주로 콩, 옥수수, 땅콩, 해바라기씨 등에서 만들어졌다고 한다.</dd>
								</dl>
								<dl>
								<dt>3) 바이오디젤의 역사</dt>
								<dd>바이오디젤은 2차 세계대전 전에 남아프리카에서 도입되었으며, 재 환경문제와 국내경제의 관점에서 바이오디젤의 사용에 대한 관심이 높였다.1991년 유럽연합은 바이오디젤을 포함한 바이오 연료의 사용을 위해 90%의 관세감면을 제안하기도 했으며. 미국에서는 1997년 현재 3천만 갤론 이상의 바이오디젤을 생산할 수 있는 시설이 설치되었으며 이들의 원료는 콩기름, 음식점에서 회수된 기름 및 동물성 지방이다. 바이오디젤은 현재 여러 용도로 사용되고 있는데 여행용 보트, 배, 경찰서 및 병원의 비상용 발전기등에서 사용되고 있다. 이미 20%의 바이오디젤을 포함한 혼합디젤연료는 광범위하게 사용되고 있다.</dd>
								</dl>
								<dl>
								<dt>4) 바이오디젤의 생산방법 및 생산비용</dt>
								<dd>바이오디젤은 채소의 오일이나 동물성 지방에 알콜과 촉매를 혼합하여 에스테르화 반응에 의해 만들어진다고 한다. 1차 부산물로는 글리세롤이 얻어지며 알콜과 에스테르 혼합물로부터 알콜은 재사용되고 에스테르는 정제과정을 거쳐 바이오디젤을 얻는다고 알려지고 있다. 바이오디젤의 생산 비용은 어떤 원료를 사용하는가에 전적으로 의존한다. 최근의 비용분석결과에 따르면 콩이 사용될 경우 판매가격은 리터당 대략 0.66$이나 0.40$ 수준까지 낮출 수 있다고 한다.현재 에너지부와 NREL(National Renewable Energy Laboratory)은 조류로부터 바이오 디젤을 생산하는 연구를 수행하고 있는데 가격을 0.26$ 까지 낮출 수 있을 것으로 전망하고 있다.</dd>
								</dl>
								<dl>
								<dt>5) 바이오디젤의 이용 및 안전성</dt>
								<dd>일반적으로 디젤엔진에 바이오디젤 연료를 사용하기 위해서는 점화부분과 연료 주입부분의 변형이 필요하며 연료의 특성상 연료가 흐르는 호스나 라인의 대체가 필요하기도 하다.<br/>
								수년간의 실험을 통해 바이오 디젤의 효율은 일반 디젤과 비슷하며 배출가스 기준으로는 훨씬 낮은 수준을 보이고 있다.<br/>
								바이오 디젤은 다른 연료보다 훨씬 안전하며, 바이오 디젤은 높은 발화점을 가지고 있고 척추동물에 흡입되었을 때도 독성이 매우 낮으며 생분해성이 높은 것으로 알려지고 있다.<br/>
								최근의 EPA 211B 테스트에서는 돌연변이, 발암성 등에서 디젤연료보다 훨씬 낮은 독성을 보여주고 있다. </dd>
								</dl>
							<h4><img src="/images/child/tab_sub07_2_3_3_14.gif" alt="벙커유의 구분 및 성질에 대하여" /></h4>
								<p>벙커유의 구분은 (동)점도에 따라 구분되며 이들 벙커유들은 황함량에 따라 다시 구분된다. 또한 점도는 투입원유에 따라 10% 편차가 발생되기도 한다.</p>
						</div>
					</div>
                </div>
				<!--//끝-->
			</div>
			
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
						<td><strong>담당부서 : </strong>비서실 홍보팀</td>
						<td><strong>연락처 : </strong>031-380-2149</td>
						<td><strong>관리일 : </strong>2015-09-30</td>
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