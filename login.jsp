<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>로그인 페이지</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
      crossorigin="anonymous"
    ></script>
    <!-- Google fonts-->
    <link
      href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
      rel="stylesheet"
    />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="assets/css/styles_login.css" rel="stylesheet" />
    <link href="assets/css/login.css" rel="stylesheet"/>
    <style>
    .btn{
    	background-color: rgb(255, 133, 154);
  		border: 1px solid #ffffff;
  		display: inline-block;
  		border-radius: 8px;
  		cursor: pointer;
  		color: #ffffff;
  		font-family: Arial;
		font-size: 15px;
  		padding: 8px 125px;
  		text-decoration: none;
  		text-shadow: 0px 1px 0px #b23e35;
    }
    .myButton {
    	box-shadow: inset 0px 39px 0px -24px #8EC9E0;
  		border: 1px solid #ffffff;
  		display: inline-block;
  		border-radius: 8px;
  		cursor: pointer;
  		color: #ffffff;
  		font-family: Arial;
  		font-size: 15px;
  		padding: 8px 125px;
  		text-decoration: none;
  		text-shadow: 0px 1px 0px #b23e35;
	}
    </style>
  </head>
  <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container px-5">
        <a class="navbar-brand" href="main.jsp" style="font-size: 50px; margin-right: 80px;">A'DIC</a>
        <a class="navbar-brand" href ="login.jsp" onclick = "alert('로그인 후 사용해주세요');" style="font-size: 20px; margin-right: 20px;"> 주류 검색 </a>
        <a class="navbar-brand" href ="login.jsp" onclick = "alert('로그인 후 사용해주세요');" style="font-size: 20px; margin-right: 20px;"> 주류 정보 </a>
        <a class="navbar-brand" href ="login.jsp" onclick = "alert('로그인 후 사용해주세요');" style="font-size: 20px;"> 커뮤니티 </a>

        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a class="nav-link" href="Join.jsp">Join</a></li>
            <li class="nav-item"><a class="nav-link" href="#">LogIn</a></li>
          </ul>
          <!-- Search -->
      
        </div>
      </div>
    </nav>
    <!-- Header-->
    <header class="masthead text-center text-white" id="header"></header>

    <!-- Content section 1-->
    <section>
      <div id="con">
        <div id="login">
        <div id="login_form"><!--로그인 폼-->
         
            <form action = "LoginCon.do" method = "post">
          <fieldset>
              <label></label>
            <h3 class="login" style="letter-spacing:-1px;">회원 로그인</h3>
            
           
            <label>
            <!-- <span>ID</span> -->
            <p style="text-align: left; font-size:12px; color:#666">ID</p>
            <input type="text" placeholder="아이디를 입력" class="size" name = "id">
            <!-- <input type="submit" value="확인"> -->
            <p></p>
            
            </label>
            <br>
    
            <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">Password </p>
            <input type="password" placeholder="비밀번호를 입력" class="size" name = "pw">
            <!-- <input type="submit" value="확인"> -->
            </label>
    
            <p>
                <input type="submit" value="로그인" class="btn">
                
            </p>
            <p>
              <a href="Join.jsp" class="myButton">회원가입</a>
            </p>
        </form>
        <hr>
        </div>
        <div>
        </div><!--con-->
        </fieldset>
    </section>

    <!-- Footer-->
    <footer class="py-5 bg-black">
      <div class="container px-5">
        <p class="m-0 text-center text-white small">
          Copyright &copy; ADIC 2022
        </p>
      </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
 
  </body>
</html>
