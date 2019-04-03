<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript">
			$(function(){
				// 상세검색 폼 슬라이드 토글
				$(".sideNav .searchForm").on("click", function(){
					$(".sideSForm").slideToggle();					
				});
				
				// 방리스트 리사이즈
				var docHeight			= $(document).height();
				var sideNav1Height		= $('.sideNav1').height();
				var etcHeight			= 40 + 50;
				var sideBangLitHeight	= docHeight - (sideNav1Height + etcHeight);
				
				
				//$(window).resize(function(){
					var sideNav1Height		= $('.sideNav1').height();
					var sideBangLitHeight	= docHeight - (sideNav1Height + etcHeight);
					$('.sideBangLit').height(sideBangLitHeight);
				//});
				
			});
			
			
		</script>
	</head>
	<body>
		<div id="" class="sideRight mapRightWrap">
			<div class="sideNav sideNav1">
				<div class="sideTop searchForm">
					<span>조건검색</span>
					<a href="javascript:void(0);" class="btnShow"><span>더보기 +</span></a>
				</div>
		       
				<div class="sideCon sideSForm" style="display:none;">
					<dl>
						<dd class="section section1">
							<strong>* 보증금</strong>
							<div class="pBoxTop">
								<div class="select_box pBox1">
									<div class="select">
		                                <span class="ctrl"><span class="arrow"></span></span>
		                                <button type="button" name="sDepositSt" for="sDepositSt" class="my_value">선택하세요</button>
		                                <ul name="sDepositSt" id="sDepositSt" class="a_list region" title="select sDepositSt">
		                                    <li class=""><a href="javascript:void(0);">50만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">100만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">200만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">300만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">400만원</a></li>
		                                </ul>
									</div>
								</div>
								<span class="mid">~</span>
								<div class="select_box pBox2">
									<div class="select">
		                                <span class="ctrl"><span class="arrow"></span></span>
		                                <button type="button" name="sDepositEd" for="sDepositEd" class="my_value">선택하세요</button>
		                                <ul name="sDepositEd" id="sDepositEd" class="a_list region" title="select sDepositEd">
		                                    <li class=""><a href="javascript:void(0);">50만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">100만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">200만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">300만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">400만원</a></li>
		                                </ul>
									</div>
								</div>
							</div>
						</dd>
						<dd class="section section2">
							<strong>* 월세</strong>
							<div class="pBoxTop">
								<div class="select_box pBox1">
									<div class="select">
		                                <span class="ctrl"><span class="arrow"></span></span>
		                                <button type="button" name="sRentSt" for="sRentSt" class="my_value">선택하세요</button>
		                                <ul name="sRentSt" id="sRentSt" class="a_list region" title="select sRentSt">
		                                    <li class=""><a href="javascript:void(0);">50만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">100만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">200만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">300만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">400만원</a></li>
		                                </ul>
									</div>
								</div>
								<span class="mid">~</span>
								<div class="select_box pBox2">
									<div class="select">
		                                <span class="ctrl"><span class="arrow"></span></span>
		                                <button type="button" name="sRentEd" for="sRentEd" class="my_value">선택하세요</button>
		                                <ul name="sRentEd" id="sRentEd" class="a_list region" title="select sRentEd">
		                                    <li class=""><a href="javascript:void(0);">50만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">100만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">200만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">300만원</a></li>
		                                    <li class=""><a href="javascript:void(0);">400만원</a></li>
		                                </ul>
									</div>
								</div>
							</div>
						</dd>
						<dd class="section section3">
							<strong>* 선택사항</strong>
							<div class="chkCtrl">
								<span class="chkBox">
									<b>전체선택</b>
		                            <input type="checkbox" name="allChkY" id="allChkY" value="Y" class="chk" />
									<label for="allChkY">전체선택</label>
								</span>
							</div>
							<div class="chkOpt">
								<span class="chkBox">
									<b>월세</b>
		                            <input type="checkbox" id="opt1" name="" value="" class="chk" />
									<label for="opt1">월세</label>
								</span>
								<span class="chkBox">
									<b>전세</b>
		                            <input type="checkbox" id="opt2" name="" value="" class="chk" />
									<label for="opt2">전세</label>
								</span>
								<span class="chkBox">
									<b>매매</b>
		                            <input type="checkbox" id="opt3" name="" value="" class="chk" />
									<label for="opt3">매매</label>
								</span>
								<span class="chkBox">
									<b>단기</b>
		                            <input type="checkbox" id="opt4" name="" value="" class="chk" />
									<label for="opt4">단기</label>
								</span>
							</div>
						</dd>
					</dl>
				</div>
			</div>
			<div class="sideNav sideNav2">
				<div class="sideTop">
					<span class="searchTitle">검색결과 120개</span>
				</div>
				<div class="sideCon">
					<p class="conTit">이 지역 추천 공인 중개업소 매물</p>
					<div class="sideBangLit">
						<ul>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_a">월세</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_b">전세</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_a">월세</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_b">전세</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_c">단기</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_d">매매</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
							<li class="curPoint">
							    <div class="bangInfoBox">
							        <div class="imgBox left">
							            <img src="./resources/images/no_image.jpg" alt="방이미지">
							        </div>
							        <div class="infoBox right">
							            <dl>
							                <dd class="infoRow row1">
							                	<span class="p_Way p_Way_a">월세</span>
							                    <span class="price nbgFont">1000/30</span>
							                </dd>
							                <dd class="infoRow row2"><span>원룸 | 전기난방 | 전기포함 250kw 까지</span></dd>
							                <dd class="infoRow row3"><span>에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션 ..</span></dd>
							                <dd class="infoRow row4">
							                    <span>복현1동 / 동문근처 / 투룸 / 반려동물</span>
							                </dd>
							            </dl>
							        </div>
							        <div class="clr"></div>
							    </div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>