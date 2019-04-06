<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../common/header.jsp" />
</head>
<body>
	<c:import url="../common/top.jsp" />
	<div id="bang-info">
		<div class="prodViewArea contentsArea">
			<div id="bang-productInfo">
				<div class="prodTitBox">
					<strong> <%-- ${ Bang.pro_address } --%> </strong>
				</div>
				<div class="viewConWrap">
					<div class="contentBox imgSliderBox">
						<div id="imgSlider" class="slider-pro">
							<div class="sp-slides">
								<div class="sp-slide">
									<img class="sp-image"
										src="https://img.peterpanz.com/photo/20190324/2222915/962a5589dab3d236085eab981658c440_origin.jpg"
										alt="image" />
								</div>
								<div class="sp-slide">
									<img class="sp-image"
										src="https://img.peterpanz.com/photo/20190324/2222915/69886a46af2da16ef3df192c7e875f72_origin.jpg"
										alt="image" />
								</div>
								<div class="sp-slide">
									<img class="sp-image"
										src="https://img.peterpanz.com/photo/20190324/2222915/9c37ad229ccdb2c9e57d867c43ade560_origin.jpg"
										alt="image" />
								</div>
								<div class="sp-slide">
									<img class="sp-image"
										src="https://img.peterpanz.com/photo/20190324/2222915/013bf807d9c77419298819acd33751d4_origin.jpg"
										alt="image" />
								</div>
								<div class="sp-slide">
									<img class="sp-image"
										src="https://img.peterpanz.com/photo/20190324/2222915/9f42a93e64c95597d374e51d10f91d65_origin.jpg"
										alt="image" />
								</div>
								<div class="sp-slide">
									<img class="sp-image"
										src="https://img.peterpanz.com/photo/20190324/2222915/61fb0e97f7dcdf89a97ca6921deaf321_origin.jpg"
										alt="image" />
								</div>
							</div>
						</div>

						<div clas="clr"></div>

						<!--  <strong class="bangTit">도산대로 안 할 이유가 없는 실평수 12평 큰원룸</strong> -->
					</div>

					<div class="conTit">매물정보</div>
					<div class="contentBox prodInfoBox">
						<div class="infoTable left">
							<table>
								<tr>
									<th style="padding-top: 0;">주소</th>
									<td style="padding-top: 0;">${ Bang.pro_address }</td>
								</tr>
								<tr>
									<th>건물형태</th>
									<td>${ Bang.build_type }</td>
								</tr>
								<tr>
									<th>계약형태</th>
									<td>월세</td>
								</tr>
								<tr>
									<th>가격정보</th>
									<c:if test="${ Bang.con_type eq '월세'}">
										<td><fmt:formatNumber value="${ Bang.deposit }" type="number"/> / ${Bang.rent}</td>
									</c:if>
									<c:if test="${ Bang.con_type eq '전세' }">
										<td><fmt:formatNumber value="${ Bang.deposit }" type="number"/></td>
									</c:if>
								</tr>
								<tr>
									<th>관리비</th>
									<td>${ Bang.manage_pay }만원</td>
								</tr>
								<!-- <tr>
				                		<th>관리비포함내역</th>
				                		<td>수도</td>
				                	</tr> -->
								<tr>
									<th>융자금</th>
									<td>없음</td>
								</tr>
								<tr>
									<c:set var="today" value="<%=new java.util.Date()%>" />
									<th>입주가능일</th>
									<c:if test="${ !empty Bang.move_date }">
										<c:if test="${ Bang.move_date < today }">
											<td>즉시입주</td>
										</c:if>
										<c:if test="${ Bang.move_date >= today }">
											<td>${ Bang.move_date }</td>
										</c:if>
									</c:if>
									<c:if test="${ empty Bang.move_date }">
										<td>즉시입주</td>
									</c:if>
								</tr>
							</table>
						</div>
						<div class="infoTable right">
							<table>
								<tr>
									<th style="padding-top: 0;">방 개수</th>
									<td style="padding-top: 0;">${ Bang.room_count }개</td>
								</tr>
								<tr>
									<th>욕실개수</th>
									<td>${ Bang.bath_count }개</td>
								</tr>
								<tr>
									<th>공급/전용면적</th>
									<td>${ Bang.supply_area} m2 (<fmt:formatNumber value="${ Bang.supply_area * 0.3}"/>)평<br>
									${ Bang.real_area } m2 (<fmt:formatNumber value="${ Bang.real_area * 0.3}"/>)평</td>
								</tr>
								<tr>
									<th>해당층</th>
									<td>${ Bang.floor }</td>
								</tr>
								<tr>
									<th>방 거실 형태</th>
									<td>${ Bang.room_type }</td>
								</tr>
								<tr>
									<th>방향</th>
									<td>${ Bang.direction }</td>
								</tr>
								<tr>
									<th>현관 유형</th>
									<td>${ Bang.door_type }</td>
								</tr>
								<tr>
									<th>준공년월</th>
									<c:if test="${ !empty Bang.build_date }">
										<td>${ Bang.build_date }</td>
									</c:if>
									<c:if test="${ empty Bang.build_date }">
										<td>알수 없음</td>
									</c:if>
								</tr>
							</table>
						</div>
						<div class="clr"></div>
					</div>

					<div class="conTit">추가옵션</div>
					<div class="contentBox prodOptBox">
						<ul>
							<li><img src="/resources/images/detail_new_x.png"
								id="roomOptImg" /></li>
							<li><img src="/resources/images/detail_full_x.png"
								id="roomOptImg" /></li>
							<li><img src="/resources/images/detail_park_x.png"
								id="roomOptImg" /></li>
							<li><img src="/resources/images/detail_ev_x.png"
								id="roomOptImg" /></li>
							<li><img src="/resources/images/detail_animal.png"
								id="roomOptImg" /></li>
							<li><img src="/resources/images/detail_loan_x.png"
								id="roomOptImg" /></li>
							<li><img src="/resources/images/detail_road.png"
								id="roomOptImg" /></li>
						</ul>
					</div>

					<div class="conTit">시설정보</div>
					<div class="contentBox prodInfoBox">
						<div class="infoTable left">
							<table>
								<tr>
									<th style="padding-top: 0;">난방방식</th>
									<td style="padding-top: 0;">개별난방</td>
								</tr>
								<tr>
									<th>생활시설</th>
									<td><c:forEach items="${ live }" var="LiveOption">
				                		${ LiveOption.live_pro_con } &nbsp;
				                	</c:forEach></td>

								</tr>
								<tr>
									<th>기타시설</th>
									<td>
										<!-- 베란다, 소화기 -->
									</td>
								</tr>
							</table>
						</div>
						<div class="infoTable right">
							<table>
								<tr>
									<th style="padding-top: 0;">냉방시설</th>
									<td style="padding-top: 0;">
										<!-- 있음 -->
									</td>
								</tr>
								<tr>
									<th>보안시설</th>
									<td>
										<!-- 현관보안, 방범창, 인터폰 -->
									</td>
								</tr>
							</table>
						</div>
						<div class="clr"></div>
					</div>

					<div class="conTit">상세정보</div>
					<div class="contentBox infoBox">${ Bang.pro_content }</div>

					<div class="conTit">위치정보</div>
					<div class="contentBox mapBox">
						<!-- * 카카오맵 - 지도퍼가기 -->
						<!-- 1. 지도 노드 -->
						<div id="daumRoughmapContainer1554185117570"
							class="root_daum_roughmap root_daum_roughmap_landing"></div>

						<!--
								2. 설치 스크립트
								* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
							-->
						<script charset="UTF-8" class="daum_roughmap_loader_script"
							src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

						<!-- 3. 실행 스크립트 -->
						<script charset="UTF-8">
							new daum.roughmap.Lander({
								"timestamp" : "1554185117570",
								"key" : "sw6p",
								"mapWidth" : "765",
								"mapHeight" : "510"
							}).render();
						</script>
					</div>

					<div class="viewSideNav">
						<ul>
							<li class="sideBox sideBox1">
								<div class="bangNum">
									<span class="icon">매물번호</span> <strong class="num">${ Bang.pro_no }</strong>
								</div>
								<div class="likeBox">
									<a href="javascript:void(0);" class="btnLike trans-300"><span>찜하기</span></a>
								</div>
							</li>
							<li class="sideBox sideBox2">
								<div class="bangInfo1">
									<c:if test="${ Bang.con_type eq '월세'}">
										<span class="p_Way p_Way_a">월세</span>
										<strong class="price"><fmt:formatNumber value="${ Bang.deposit }" type="number"/> / ${Bang.rent}</strong>
									</c:if>
									<c:if test="${ Bang.con_type eq '전세' }">
										<span class="p_Way p_Way_b">전세</span>
										<strong class="price"><fmt:formatNumber value="${ Bang.deposit }" type="number"/></strong>
									</c:if>
								</div>
								<p class="bangAddr">서울특별시 강남구 테헤란로</p>
							</li>
							<li class="sideBox sideBox3">
								<p class="comInfo1">연락시 BANG BANG에서 보고 연락했다고 말씀하시면 더욱 빠르게 상담
									받을 수 있습니다.</p>
								<p class="comInfo2">차상*</p>
								<p class="comCall">010-3333-3333</p>
								<div class="comCallInfo">
									<p>통화가능시간</p>
									<p>월~금 10:00 ~ 22:00</p>
								</div>
							</li>
							<li class="sideBox sideBox4">
								<div class="sendBox sendBox2">
									<p class="sendTit">
										<strong>예약챗봇</strong>
									</p>
									<textarea name="askText" placeholder="챗봇으로 간편하게 예약해보세요!"></textarea>
								</div>
							</li>
						</ul>
						<a href="" class="btnModify"><span>상세 페이지 수정</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		$(function() {
			if ($('#imgSlider').find('.sp-slide').length > 0) {
				$('#imgSlider').sliderPro({
					width : 960,
					height : 500,
					fade : true,
					arrows : true,
					buttons : true,
					fullScreen : true,
					shuffle : true,
					smallSize : 500,
					mediumSize : 1000,
					largeSize : 3000,
					thumbnailTouchSwipe : true,
					autoplay : false
				});
			}
		});
	</script>
</body>
</html>