<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String nick = (String)session.getAttribute("nick"); %>
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
    <title>회원 정보 변경 페이지</title>
    
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
    <link href="assets/css/마이페이지(메인).css" rel="stylesheet"/>
    <style>
      /*헤더*/
     
    header {
      text-align: center;
      margin-top: 285px;
    }
    a {
      color: black;
    }
    header .thumb {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      margin-bottom: 20px;
    }
    header .thumb-wrapper {
      position: relative;
      display: inline-block;
      margin-bottom: 36px;
    }

    header .badge {
      width: 28px;
      height: 28px;
      font-size: 12px;
      position: absolute;
      background-color: red;
      border-radius: 50%;
      top: 0;
      right: 0;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    header .greeting {
      margin-bottom: 40px;
      margin-left:30px;
    }
    header .mail {
      padding: 8px 22px 10px 22px;
      background-color: rgba(0, 0, 0, 0.05);
      display: inline-block;
      border-radius: 20px;
      border: 1px solid rgba(0, 0, 0, 0.08);

      box-sizing: border-box;
      margin-top: 18px;
    }
    img {
      width: 100px;
      height: 100px;
    }
    .name {
      text-align: center;
    }
      /* menubar css*/
      .sub_content.sub_contents_left_type{
        width: 1200px;
    }
    .sub_content{
       padding: 0px 0 0 0;
    }
    .main_goods_cont, .sub_content, .content_info, .foot_list ul, .foot_cont, .foot_certify{
        position: relative;
        width: 1200px;
        margin: 0 auto;
    }
    .sub_content .side_cont{
        float: left;
        width: 200px;
    }
    .mt60{
        margin-top: 60px !important;
    }
    .side_cont .sub_menu_box{
        min-height: 250px;
        padding: 0 0 50px 0;
        float: left;
    }
    .side_cont .sub_menu_box h2{
        padding: 0 0 14px 10px;
        border-bottom: 1px solid #333
    }
    .side_cont .sub_menu_box .sub_menu_mypage{
        margin: 7px 0 0 0;
    }
    dl, ul, ol, li{
        list-style: none;
    }
    .side_cont .sub_menu_box .sub_menu_mypage > li:first-child{
        margin: 30px 0 0 0;
    }
    .side_cont .sub_menu_box .sub_menu_mypage > li{
        padding: 8px 0 15px 0;
        font-size: 14px;
        font-weight: bold;
        font-size:x-large;
    }
    .side_cont .sub_menu_box .sub_menu_mypage .sub_depth1{
        margin:  5px 0 25px 0;
    }
    ul ul{
        list-style-type: circle;
        margin-block-start: 0px;
        margin-block-end: 0px;
    }
    .side_cont .sub_menu_box .sub_menu_mypage .sub_depth1 li{
        padding:  1px 0 0 0;
        font-weight: normal;
    }
    .sub_menu_box .sub_depth1 li{
        position: relative;
    }
    li {
        display: list-item;
        text-align: -webkit-match-parent;
    }
    .side_cont .sub_menu_box .sub_menu_mypage .sub_depth1 a{
        font-size: 12px;
        text-indent: 10px;
    }
    .side_cont .sub_menu_box .sub_menu_mypage a:hover, .side_cont .sub_menu_box .sub_menu_mypage .active{
        font-weight: bold;
        background: #f8f8f8;
        color: #189fdb;
    }
    .sub_menu_box .sub_depth1 li a.active{
        background: #189fdb;
    }
    .sub_menu_box .sub_depth1 > li > a.active{
        background: #189fdb;
    }
    table {
        display: table;
      }
      .mypage_table_type {
        text-align: center;
      }
      .py-5{

        position: absolute !important;
        bottom: 0px !important;
        width: 100%;
      }
      .sub_content{

display: inline-block !important;
width: 240px !important;
margin-right: 1500px;

}
header{
display: inline-block !important;
width: 1600px !important;
margin-top: 100px;

}
.thumb_wrapper{
display: inline-block !important;
width: 1600px !important;
margin-left: 260px;
}
.hack_out{
  display: inline-block !important;
width: 1600px !important;
margin-left: 165px;
}
.mypage_table_type{
display: inline-block !important;
width: 1600px !important;
margin-left: 250px;
}
.bt_wrap{
display: inline-block !important;
width: 1600px !important;
margin-left: 270px;
margin-bottom: 50px;
}
form{
  
}



    </style>
  </head>
  <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container px-5">
        <a class="navbar-brand" href="main2.jsp" style="font-size: 50px; margin-right: 80px;">A'DIC</a>
        <a class="navbar-brand" href="Search.jsp"style="font-size: 20px; margin-right: 20px;"> 주류 검색 </a>
        <a class="navbar-brand" href="drinkInfo.jsp"style="font-size: 20px; margin-right: 20px;"> 주류 정보 </a>
        <a class="navbar-brand" href="Board.jsp"style="font-size: 20px;"> 커뮤니티 </a>

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
            <li class="nav-item"><a class="nav-link" href = "Logout.jsp" id = "logout" onclick = "deleteJjim(event)">Logout</a></li>
            <li class="nav-item"><a class="nav-link" href="mypage_main.jsp">Mypage</a></li>
          </ul>
          <!-- Search -->
  
        </div>
      </div>
    </nav>
     <!-- Header-->
     <header>
      <div class="thumb_wrapper">
        <img class="thumb" src="images/user (1).png" />
        <div class="badge"></div>
      </div>

      <div class="hack_out">
        <h2 class="greeting">회원정보 변경</h2>
      </div>
    <!--menu bar-->
    <div class= "sub_content sub_contents_left_type clearfix">
      <div class="side_cont mt60">
          <div class="sub_menu_box">
              <h2>마이페이지</h2>
              <ul class="sub_menu_mypage">
                  <li>상품정보
                      <ul class="sub_depth1">
                          <li>
                              <a href="mypage_jjim.jsp">
                                  찜 목록
                              </a>
                          </li>
                      </ul>
                  </li>
                  <li>회원정보 
                      <ul class="sub_depth1">
                      <li>
                        <a href="#">
                          회원정보 변경
                          </a>
                      </li>
                      <li>
                          <a href="mypage_unregister.jsp">
                          회원탈퇴
                          </a>
                      </li>
                  </ul>
              </ul>
          </div>
      </div>
  </div>
    <!-- Content section 1-->
    <section>
        <div id="con">
        <div id="login">
        <div id="login_form"><!--로그인 폼-->
        <form action = "UpdateCon.do" method = "post" style="margin-top:50px;">
            <!-- <p>
                <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
            </p> 구글로 로그인-->
             <!-- <span>ID</span>  -->
            <label>
            <!-- <span>PW</span> -->
            <br>
            <p style="text-align: left; font-size:12px; color:#666">*비밀번호 </p>
            <input type="password" placeholder="비밀번호" class="size" name = "pw">
            </label><!--비밀번호-->
            <br>
            <!-- <label>
                <span>PW</span>
                <br>
                <p style="text-align: left; font-size:12px; color:#666">*비밀번호 확인 </p>
                <input type="password" placeholder="비밀번호 확인" class="sizse">
            </label>비밀번호 확인
             <br> -->
             <label>
                    <!-- <span>PW</span> -->
                    <br>
                <p style="text-align: left; font-size:12px; color:#666">*Mobile Phone</p>
                    <input  placeholder="-빼고 숫자만 입력" class="size" name = "phone">
            </label> <!--전화번호--> 
            <br>
            <br>
            <br>
            <p>
              <input type="submit" value="취소하기" class="btn" style="background-color: rgb(255, 133, 154);">
              <input type="submit" value="적용하기" class="btn" style="background-color: rgb(142, 201, 224);">
          </p>
        </form>
        </div>
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
  	<script src="jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	let nick = "<%=nick%>";
	console.log(nick)
	
	function deleteJjim(event){
		if(event.target.click){
			$.ajax({
				url : "JjimDeleteCon.do",
				data : {"nick" : nick},
				dataType : "json",
				success : function(result){
					alert("로그아웃")
				}
			});
		}
	}
	</script>
  </body>
</html>
