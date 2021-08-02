<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
    <title>Hoon 포트폴리오</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="/resources/base/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/base/assets/css/templatemo.css">
    <link rel="stylesheet" href="/resources/base/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/resources/base/assets/css/fontawesome.min.css">
<style>

	#wrap{
     text-align: center;
     position: relative;
	}

	#joinForm{
	 	width: 100%;
     	height: 100%;
     	text-align: center;
	}

	#space{
		text-align : center;
		width : 10%;
		heigh : 10%;
	}
</style>

<script>

// 이메일을 입력하지 않거나 형식이 잘못된 경우 false를 리턴한다
function emailCheck() {
	var email = $("#email").val();
	var pattern =  /^[A-Za-z][A-Za-z0-9]+@[A-Za-z\.]+$/;
	if(email==="") {
		$("#email_msg").text("필수입력입니다").attr("class", "fail");
		return false;
	} 
	if(pattern.test(email)==false) { 
		$("#email_msg").text("잘못된 이메일형식입니다").attr("class", "fail");
		return false;
	}
	return true;	
}

function passwordCheck() {
	$("#password_msg").text("");
	var password = $("#password").val();
	// 영숫자, 특수문자 !, @, 8~10자
	var pattern = /^[A-Za-z0-9!@#$%^&*()_+]{8,10}$/;
	if(password==="") {
		$("#password_msg").text("필수입력입니다").attr("class", "fail");
		return false;
	}
	if(pattern.test(password)===false) {
		$("#password_msg").text("8~10자 영문 대 소문자, 숫자, 특수문자를 사용하세요").attr("class", "fail");
		return false;
	}
	return true;
}

//비밀번호 확인을 입력하지 않았거나 비밀번호가 일치하지 않으면 false를 리턴하는 함수
function password2Check() {
	$("#password2_msg").text("");
	var password = $("#password").val();
	var password2 = $("#password2").val();
	if(password2==="") {
		$("#password2_msg").text("필수 입력입니다").attr("class", "fail");
		return false;
	}
	if(password!==password2) {
		$("#password2_msg").text("비밀번호가 일치하지 않습니다").attr("class", "fail");
		return false;
	}
	return true;
}

</script>

</head>
<body id="wrap">
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
			<a href="/"><img src="/resources/base/assets/HoonsLogo.png" width="175" height="60"></a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop">의류</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">악세서리</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact">Contact</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="login">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
    
	<div>
		<form id="joinForm" action="/user/join" method="post" enctype="multipart/form-data">
			<div>
				<div class="form-group"  style = "margin-top: 15%;">
					<label for="email" id="space">아이디</label>
					<span id="email_msg"></span>
					<input type="text" id="email" name="email"value='메일형식입니다'  onfocus="this.value='';this.style.color='black';">
				</div>
			</div>
			<div>
				<div class="form-group" style = "margin-top: 1%;">
					<label for="password" id="space">비밀번호</label>
					<span id="password_msg"></span>
					<input id="password" type="password" name="password">
				</div>
			</div>
			<div>
				<div class="form-group" style = "margin-top: 1%;">
					<label for="password2" id="space">비밀번호 확인</label>
					<span id="password2_msg"></span>
					<input id="password2" type="password">
				</div>	
			</div>
			<div>
				<div class="form-group" style = "margin-top: 1%;">
					<label for="irum" id="space">이름</label>
					<span id="irum_msg"></span>
					<input type="text" id="irum" name="irum" onfocus="this.value='';this.style.color='black';">
				</div>
			</div>

			<div>
				<div class="form-group" style = "margin-top: 1%;">
					<label for="phone" id="space">젼화번호</label>
					<span id="phone_msg"></span>
					<input type="text" id="phone" name="phone"value='- 빼고 입력해 주세요'  onfocus="this.value='';this.style.color='black';">
				</div>
			</div>

			<div class="form-group" style="text-align: center;">
				<button type="button" id="join" class="btn btn-info" style="margin-top: 5%;">가입</button>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</form>
	</div>


	<div class="w-100 bg-black py-3" style = "margin-top: 20%;">
    	<div class="container">
  	      <div class="row pt-2">
             <div class="col-12">
      	       <p class="text-left text-light">
       	 	      2021 유영훈 포트폴리오
                  | Designed by <a rel="sponsored" href="https://nice130.github.io/" target="_blank">Hoon</a>
               </p>
             </div>
          </div>
        </div>
	</div>	

    <!-- Start Script -->
    <script src="/resources/base/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/resources/base/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/resources/base/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/base/assets/js/templatemo.js"></script>
    <script src="/resources/base/assets/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>