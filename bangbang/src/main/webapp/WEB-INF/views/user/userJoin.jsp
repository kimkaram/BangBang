<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<c:import url="../common/header.jsp"/>
	</head>
	
	<body>
		<c:import url="../common/top.jsp"/>
		<script type="text/javascript">
			
			function userJoinCheck(){
				if(checkpwd()==false){
					return false
				}else if(checkValidate()==false){
					return false
				}else{
					return true;
				}
			}
					
			function checkpwd(){
			
					var pwd1 = $("#user_pwd").val();
					var pwd2 = $("#user_pwd_check").val();
					
					if(pwd1 != pwd2){
						alert("암호와 암호확인이 일치하지 않습니다.\n"
							+ "다시 입력하십시요.");
						$("#userpwd").select();
						return false;
					}else{
						return true;
					}
			}
			
			
			function checkValidate(){
				
				var userpwd = $("#user_pwd").val();

				if(!(userpwd.length >= 5 && userpwd.length <= 12)){
					alert("암호의 글자갯수는 5글자이상 12글자이하여야 합니다.");
					$("#user_pwd").select();
					return false;  
				}		
				
				for(var i in userpwd){
					var ch = userpwd.charAt(i);
					if(!((ch >= 'A' && ch <= 'Z') || 
						(ch >= 'a' && ch <= 'z') || 
						(ch >= '0' && ch <= '9') || 
						(ch == '#' || ch == '_' || ch == '!' || ch == '*'))){
						alert("암호는 영어소문자와 영어대문자, " + 
							"숫자, 기호문자(#,_,!,*)만 사용할 수 있습니다.");
						$("#user_pwd").select();
						return false;
					}
				}
				
				return true;  
			}
				
			function checkId(){
				var userid = $("#user_id").val();
				if(!(userid.length >= 5 && userid.length <= 12)){
					alert("아이디의 글자갯수는 5글자이상 12글자이하여야 합니다.");
					$("#user_id").select();
					return false;  
				}
				for(var i in userid){
					var ch = userid.charAt(i);
					if(!((ch >= 'A' && ch <= 'Z') || 
						(ch >= 'a' && ch <= 'z') || 
						(ch >= '0' && ch <= '9') || 
						(ch == '#' || ch == '_' || ch == '!' || ch == '*'))){
						alert("아이디는 영어소문자와 영어대문자, " + 
							"숫자, 기호문자(#,_,!,*)만 사용할 수 있습니다.");
						$("#user_id").select();
						return false;
					}
				}
				
				$.ajax({
					url: "idCheck.do",
					type: "post",
					data: {id: $("#user_id").val()},
					success: function(data){
						console.log("success : " + data);
						
						if(data == "ok"){
							alert("사용 가능한 아이디입니다.");
							$("#user_name").focus();
						}else{
							alert("이미 존재하는 아이디입니다.\n"
								+ "다시 입력하십시요.");
							$("#user_id").select();
						}
					},
					error: function(jqXHR, textstatus, errorthrown){
						console.log("error : " + jqXHR + ", " + textstatus
								+ ", " + errorthrown);
					}
				});
						
				return false;  
			}
		</script>
		
		<div id="member-info">
			<div class="prodLitArea myInfoArea">
	            <form name="User" id="User" method="post" enctype="utf-8" action="userInsert.do">
				<div class="myInfoWrap">
					<div class="myInfoTitBox">
						<strong>회원가입</strong>
					</div>
					
					<div class="myContent">
						<h2 class="myInfoTit"><span>회원가입</span></h2>
	
						<div class="myInfoTop">
							<span>개인 회원가입</span>
							<div class="clr"></div>
						</div>
	
						<div class="myInfoCon">
							<table>
								<tr>
									<th>아이디</th>
									<td>
										<input type="text" name="user_id" id="user_id" style="width:285px;" required /> 
										<span>&nbsp;&nbsp;<button onclick="return checkId();">아이디 확인</button></span>
									</td>
								</tr>
								<tr>
									<th>비밀번호 입력</th>
									<td class="user_pwd">
										<p><input type="password" name="user_pwd" id="user_pwd" placeholder="비밀번호를 입력하세요" class="pwCh1" style="width:285px;" required /></p>
									</td>
								</tr>
								<tr>
									<th>비밀번호 확인</th>
									<td class="user_pwd">
										<p><input type="password" name="user_pwd_check" id="user_pwd_check" placeholder="비밀번호를 한번 더 입력하세요" class="pwCh1" style="width:285px;" required /></p>
									</td>
								</tr>
								<tr>
									<th>이름</th>
									<td>
										<input type="text" name="user_name" id="user_name" style="width:285px;" required />
									</td>
								</tr>
								<tr>
									<th>휴대폰 번호</th>
									<td>
										<input type="text" name="user_phone" id="user_phone" style="width:285px;" required />
									</td>
								</tr>
								<tr>
									<th>이메일 주소</th>
									<td>
										<input type="email" name="user_email" id="user_email" value="123@gmail.com" style="width:285px;" required />
									</td>
								</tr>
							</table>
						</div>
					</div>
	
					<div class="btnCtrl">
						<button onclick="return userJoinCheck();" type="submit" class="btnSave" style="vertical-align: top;">가입하기</button>
						<a href="main.do" class="btnCancel" style="vertical-align: top;" ><span>취소</span></a>
					</div>
				</div>
			    </form>
			</div>
		</div>
</body>
</html>