<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$.ajax({
		
	});
</script>
</head>
<body>
	<c:forEach items="${blist}" var="Bang">
		<li class="prodLit curPoint">
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
								<strong class="p_price">${ Bang.deposit } /
									${Bang.rent}</strong>
							</c:if>
							<c:if test="${ Bang.con_type eq '전세' }">
								<span class="p_Way p_Way_b">전세</span>
								<strong class="p_price">${ Bang.deposit }</strong>
							</c:if>

						</dd>
						<dd>
							<!-- <span class="b_opt_1">&nbsp;원룸 | 전기난방 | 전기포함 250kw 까지</span> -->
							<span class="b_opt_1" id="loption">&nbsp;</span> <span
								class="b_opt_2" id="roption">&nbsp;</span>
						</dd>
						<dd>
							<span class="b_keyword">&nbsp;복현1동 / 동문근처 / 투룸 / 반려동물</span>
						</dd>
						<!--  <dd class="lastDD">		                     
		                    <div class="clr"></div>
		                </dd> -->
					</dl>
				</div>
			</div>
		</li>
	</c:forEach>
	<!-- <li class="prodLit curPoint">
		    <div class="prodI_Box">
		        <div class="btnInfo"><img src="https://img.peterpanz.com/photo/20190322/2215338/e5b7602e981f8b22f9caf8e75068b97f_thumb.jpg" class="p_Img" /></div>
		        <div class="prodI_Sum">
		            <dl>
		                <dd>
		                	<span class="p_Way p_Way_a">월세</span>
		                    <strong class="p_price">200/28</strong>
		                </dd>
		                <dd>
		                    <span class="b_opt_1">&nbsp;원룸 | 전기난방 | 전기포함 250kw 까지</span>
		                    <span class="b_opt_2">&nbsp;에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션..</span>
		                </dd>
		                <dd>
		                    <span class="b_keyword">&nbsp;복현1동 / 동문근처 / 투룸 / 반려동물</span>
		                </dd>
		                <dd class="lastDD">		                     
		                    <div class="clr"></div>
		                </dd>
		            </dl>
		        </div>
		    </div>
		</li>
		<li class="prodLit curPoint">
		    <div class="prodI_Box">
		        <div class="btnInfo"><img src="https://img.peterpanz.com/photo/20190322/2215338/e5b7602e981f8b22f9caf8e75068b97f_thumb.jpg" class="p_Img" /></div>
		        <div class="prodI_Sum">
		            <dl>
		                <dd>
		                	<span class="p_Way p_Way_b">전세</span>
		                    <strong class="p_price">200/28</strong>
		                </dd>
		                <dd>
		                    <span class="b_opt_1">&nbsp;원룸 | 전기난방 | 전기포함 250kw 까지</span>
		                    <span class="b_opt_2">&nbsp;에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션..</span>
		                </dd>
		                <dd>
		                    <span class="b_keyword">&nbsp;복현1동 / 동문근처 / 투룸 / 반려동물</span>
		                </dd>
		                <dd class="lastDD">		                     
		                    <div class="clr"></div>
		                </dd>
		            </dl>
		        </div>
		    </div>
		</li>
		<li class="prodLit curPoint">
		    <div class="prodI_Box">
		        <div class="btnInfo"><img src="https://img.peterpanz.com/photo/20190322/2215338/e5b7602e981f8b22f9caf8e75068b97f_thumb.jpg" class="p_Img" /></div>
		        <div class="prodI_Sum">
		            <dl>
		                <dd>
		                	<span class="p_Way p_Way_d">매매</span>
		                    <strong class="p_price">200/28</strong>
		                </dd>
		                <dd>
		                    <span class="b_opt_1">&nbsp;원룸 | 전기난방 | 전기포함 250kw 까지</span>
		                    <span class="b_opt_2">&nbsp;에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션..</span>
		                </dd>
		                <dd>
		                    <span class="b_keyword">&nbsp;복현1동 / 동문근처 / 투룸 / 반려동물</span>
		                </dd>
		                <dd class="lastDD">		                     
		                    <div class="clr"></div>
		                </dd>
		            </dl>
		        </div>
		    </div>
		</li>
		<li class="prodLit curPoint">
		    <div class="prodI_Box">
		        <div class="btnInfo"><img src="https://img.peterpanz.com/photo/20190322/2215338/e5b7602e981f8b22f9caf8e75068b97f_thumb.jpg" class="p_Img" /></div>
		        <div class="prodI_Sum">
		            <dl>
		                <dd>
		                	<span class="p_Way p_Way_c">단기</span>
		                    <strong class="p_price">200/28</strong>
		                </dd>
		                <dd>
		                    <span class="b_opt_1">&nbsp;원룸 | 전기난방 | 전기포함 250kw 까지</span>
		                    <span class="b_opt_2">&nbsp;에어컨 / 세탁기 / 냉장고 / 전자렌지 / 인덕션..</span>
		                </dd>
		                <dd>
		                    <span class="b_keyword">&nbsp;복현1동 / 동문근처 / 투룸 / 반려동물</span>
		                </dd>
		                <dd class="lastDD">		                     
		                    <div class="clr"></div>
		                </dd>
		            </dl>
		        </div>
		    </div>
		</li> -->
</body>
</html>