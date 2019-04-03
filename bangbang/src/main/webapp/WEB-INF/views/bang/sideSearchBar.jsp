<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		<div id="bang-searchForm" class="sideNavWrap sideNavLitWrap">
			<div class="sideNav nav_1">
				<h3 class="navTit">조건으로 검색</h3>
				<dl>
					<dd class="section section1">
						<strong>매물번호로 찾기</strong>
						<div class="numSearch">
							<input type="text" name="sGrNo" placeholder="매물번호"/>
							<a href="javascript:void(0);" class="btnSearch"><span>조회</span></a>
						</div>
					</dd>
					<dd class="section section3">
						<strong>보증금으로 찾기</strong>
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
							
							<div class="clr"></div>
						</div>
					</dd>
					<dd class="section section3">
						<strong>월세로 찾기</strong>
						<div class="pBoxBot">
							<div class="select_box pBox3">
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
							<div class="select_box pBox4">
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
		
						<div class="clr"></div>
					</dd>
		            
					<dd class="section section4">
						<strong>방구조로 찾기</strong>
						<div class="chkCtrl">
							<span class="chkBox">
								<b>전체선택</b>	
		                        <label for="chkAllY" class="">전체선택</label>
		                        <input type="checkbox" id="chkAllY" name="chkAllY" value="Y" />
							</span>
						</div>
						<div class="chkOpt">
							<span class="chkBox">
								<b>원룸</b>
	                            <input type="checkbox" id="opt1" name="" value="" class="chk" />
								<label for="opt1">원룸</label>
							</span>
							<span class="chkBox">
								<b>투룸</b>
	                            <input type="checkbox" id="opt2" name="" value="" class="chk" />
								<label for="opt2">투룸</label>
							</span>
							<span class="chkBox">
								<b>빌라</b>
	                            <input type="checkbox" id="opt3" name="" value="" class="chk" />
								<label for="opt3">빌라</label>
							</span>
							<span class="chkBox">
								<b>아파트</b>
	                            <input type="checkbox" id="opt4" name="" value="" class="chk" />
								<label for="opt4">아파트</label>
							</span>
							<span class="chkBox">
								<b>주택</b>
	                            <input type="checkbox" id="opt5" name="" value="" class="chk" />
								<label for="opt5">주택</label>
							</span>
							<span class="chkBox">
								<b>상가</b>
	                            <input type="checkbox" id="opt6" name="" value="" class="chk" />
								<label for="opt6">상가</label>
							</span>
							<span class="chkBox">
								<b>사무실</b>
	                            <input type="checkbox" id="opt7" name="" value="" class="chk" />
								<label for="opt7">사무실</label>
							</span>
						</div>
					</dd>
				</dl>
			</div>
		</div>
	</body>
</html>