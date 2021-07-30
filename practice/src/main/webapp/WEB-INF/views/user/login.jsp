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

	.base{
	 	width: 100%;
     	height: 100%;
     	text-align: center;
	}
	
	.btn{
		border-top-left-radius: 5px; 
		border-bottom-left-radius: 5px;
		border-top-right-radius: 5px; 
		border-bottom-right-radius: 5px;
		border: 1px solid skyblue; 
		background-color: rgba(0,0,0,0); 
		color: black; 
		padding: 5px;
		width:10%;
		height:10%;
	}
	.btn:hover{
		color:white; 
		background-color: skyblue;
	}
	
	#wrap{
     text-align: center;
     position: relative;
	}
	
	#space{
		text-align : center;
		width : 5%;
		heigh : 5%;
	}
	
</style>
<script>
	$(document).ready(function(){
		$("#userbtn1").click(function(){
			var id = $("#id").val();
			var password = $("#password").val();
			if(id==""){
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return;
			}
			if(password==""){
				alert("비밀번호를 입력하세요.");
				$("#password").focus();
				return;
			}
			$("#form").submit();
		});	
	});

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
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
    
<div class="base">
	<div>
		<form  id="form" method = "post" action="loginCheck" >
			<div class="form-group" style = "margin-top: 15%;">
				<label for="id" id="space">ID &nbsp;&nbsp;&nbsp; </label>
				<input id="id" type="text" name="id">
			</div>
			<div class="form-group" style = "margin-top: 2px%;">
				<label for="password" id="space">Pass</label>
				<input id="password" type="password" name="password">
				<span class="helper-text" id="password_msg"></span>
			</div>
			<div>
				<div style="margin-top: 5px;">
					<button id="userbtn1" class="btn">로그인</button>
				</div>
			</div>
			</form>
			<div>
				<a href="join"><button id="userjoin" class="btn" style="margin-top: 2px;">회원가입</button></a> 
			</div>
			<div style="margin-top: 2px;">
				<button id="findid" type="button" class="btn" onclick="location='user/userfindid'" style="margin-top: 2px;">아이디 찾기</button>
			</div>
			<div>
				<button id="findpass" type="button" class="btn" onclick="location='user/userfindid'" style="margin-top: 2px;">비밀번호 찾기</button>
			</div>
		
	</div>
</div>

	<div class="w-100 bg-black py-3" style = "margin-top:15%;">
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