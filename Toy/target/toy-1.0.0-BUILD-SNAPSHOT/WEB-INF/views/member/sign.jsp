<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/WEB-INF/views/template/header.jsp" %>

<style>
	.sign-box {
		margin-top: 30px;
	}
	.sign_title {
		border-bottom: 1px solid #D8D8D8;
		margin-bottom: 10px;
	}
</style>

<div class="container">
	<div class="sign-box">
		<div class="sign_title">
			<h3 style="color: #8e8989db;">회원가입</h3>
		</div>
		<div class="sign_body">
			<div class="form-group">
				<input type="text" id="id" class="form-control" placeholder="아이디"/>
			</div>
			<div class="form-group">
				<input type="text" id="name" class="form-control" placeholder="이름"/>
			</div>
			<div class="form-group">
				<input type="text" id="nickname" class="form-control" placeholder="닉네임"/>
			</div>
			<div class="form-group">
				<input type="password" id="pwd" class="form-control" placeholder="비밀번호"/>
			</div>
			<div class="form-group">
				<input type="passwod" id="pwd2" class="form-control" placeholder="비밀번호 확인"/>
			</div> 
			<div class="form-group">
				<input type="text" id="email" class="form-control" placeholder="이메일"/>
			</div>
			<div class="form-group">
				<a href="javascript: validationCheck();" class="btn btn-primary form-control">가입하기</a>
			</div>
		</div>
	</div>
</div>

<script>
	var data;
	function validationCheck() {
		if($("#id").val() == "" ) {
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}
		if($("#nickname").val() == "") {
			alert("닉네임을 입력해주세요.");
			$("#nickname").focus();
			return false;
		}
		if($("#pwd").val() == "" chekcPwd(#("#pwd")).val()) {
			alert("비밀번호를 입력해주세요.");
			$("#pw").focus();
			return false;
		}else if($("#pwd2").val() == "") {
			alert("비밀번호가 다릅니다. 확인해주세요.");
			#("#pwd2").focus();
			return false;
		}else if($("#pwd".val()) != $("#pwd2").val() ){
			alert("비밀번호가 일치하지 않습니다.");
			$("#pwd").focus();
			return false;
		}
		if($("#email").val()=="" || checkEmail($("#email").val())) {
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return false;
		}
		
		sign();
	}
	
	function sign() {
		data = {
			ID : $("#id").val(),
			NICKANME : #("#nickname").val(),
			PWD: $("#pwd").val(),
			EMAIL : $("#email").val(),
			PHONE : $("#phone").val()
		};
		
		$.ajax({
			url : "<c:url value='/accounts/sign'/>",
			data : data,
			dataType : "json",
			success: function(response) {
				alert(response);
			}
		});
		
	}
	
	function checkEmail(email) {
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if(email.match(regExp) != null) return true;
		else return false;
	}
	
	function chekcPwd(pw) {
		var regExp = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;
		if(pw.length<6) {
		    alert("비밀번호는 영문,숫자,특수문자(!@$%^&* 만 허용)를 사용하여 6~16자까지, 영문은 대소문자를 구분합니다.");
		    return false;
		}
		if(!pw.match(regExp)) {
		  alert("비밀번호는 영문,숫자,특수문자(!@$%^&* 만 허용)를 사용하여 6~16자까지, 영문은 대소문자를 구분합니다.");
		  return false;
		}
	}
</script>



<%@ include file = "/WEB-INF/views/template/footer.jsp" %>
