<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<c:forEach items="${blist}" var="Bang">
		<c:url var="binfo" value="binfo.do">
			<c:param name="pro_no" value="${ Bang.pro_no }" />
		</c:url>
		<li class="prodLit curPoint"><a href="${ binfo }">

			<div class="prodI_Box">
				<div class="btnInfo">
					<img
						src="https://img.peterpanz.com/photo/20190322/2215338/e5b7602e981f8b22f9caf8e75068b97f_thumb.jpg"
						class="p_Img" />
				</div>
				<div class="prodI_Sum">
					<dl>
						<dd>
							<c:if test="${ Bang.con_type eq '월세'}">
								<span class="p_Way p_Way_a">월세</span>
								<strong class="p_price"><fmt:formatNumber value="${ Bang.deposit }" type="number"/> / ${Bang.rent}</strong>
							</c:if>
							<c:if test="${ Bang.con_type eq '전세' }">
								<span class="p_Way p_Way_b">전세</span>
								<strong class="p_price"><fmt:formatNumber value="${ Bang.deposit }" type="number"/></strong>
							</c:if>
						</dd>
						<dd>
							<span class="b_opt_1" id="loption">&nbsp; 건물형태 : ${ Bang.build_type }</span>

							<c:set var="today" value="<%= new java.util.Date() %>" />
							<c:if test="${ !empty Bang.move_date }">
								<c:if test="${ Bang.move_date < today }">
									<span class="b_opt_2" id="roption">&nbsp; 입주가능일 : 즉시입주가능</span>
								</c:if>
								<c:if test="${ Bang.move_date >= today }">
									<span class="b_opt_2" id="roption">&nbsp; 입주가능일 : ${ Bang.move_date }</span>
								</c:if>

							</c:if>
							<c:if test="${ empty Bang.move_date }">
								<span class="b_opt_2" id="roption">&nbsp; 입주가능일 : 즉시입주가능</span>
							</c:if>

						</dd>
						<!-- <dd>
							<span class="b_keyword">&nbsp;복현1동 / 동문근처 / 투룸 / 반려동물</span>
						</dd> -->
						<!--  <dd class="lastDD">		                     
		                    <div class="clr"></div>
		                </dd> -->
					</dl>
				</div>
			</div>
			</a>
		</li>
	</c:forEach>
</body>
</html>