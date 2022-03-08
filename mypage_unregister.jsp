<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>회원 탈퇴 페이지</title>

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
  </head>
  <style>
    /* 헤더 */
    header {
      text-align: center;
      margin-top: 40px;
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
      font-size: 2rem;
      margin-bottom: 40px;
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
    

    .list .item {
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 1px solid rgba(0, 0, 0, 0.08);
    }
    .list .item .left {
      display: flex;
      align-items: center;
    }
    .list .item .left .name {
      margin-left: 50px;
    }
    .list .item .right {
      display: flex;
      align-items: center;
    }
    .list .item .right img {
      padding-right: 20px;
    }
    .list .item img {
      padding: 20px 20px;
    }
    .desc {
      margin-bottom: 30px;
    }
    .hack_out {
      margin: 0 0 50px 0;
    }
    div {
      display: block;
    }
    .hack_out .mypage_zone_tit {
      margin: 0 0 50px 0;
      padding: 0 0 5px 0;
      font-size: 20px;
      border-bottom: 1px solid #999999;
    }
    .mypage_zone_tit {
      margin: 0 0 0 0;
      padding: 0 0 10px 0;
      font-size: 16px;
      text-align: center;
    }
    h2 {
      display: block;
      font-size: 1.5em;
      margin-block-start: 0.83em;
      margin-block-end: 0.83em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      font-weight: bold;
    }
    .hack_out .mypage_unregister .mypage_zone_tit {
      margin: 0;
      padding: 0 0 10px 0;
      font-size: 14px;
      border-bottom: none 0;
    }
    h6 {
      display: block;
      font-size: 1.17em;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      font-weight: bold;
    }
    .mypage_zone_tit h6 {
      display: inline-block;
      font-size: 16px;
    }
    .hack_out .mypage_unregister .unregister_info {
      margin: 1 120px 40px 200px;
      padding: 15px 15px 15px 15px;
      color: #717171;
      border: 1px solid #dadada;
    }
    .mypage_zone_tit h6 {
      display: inline-block;
      font-size: 16px;
    }
    .mypage_table_type .table_left {
      border-top: 1px solid #999999;
    }
    .mypage_table_type table {
      margin: 0 120px 40px 200px;
      width: 80%;
      border: 0;
      border-spacing: 0;
      border-collapse: collapse;
      text-align: center;
    }
    table {
      display: table;
      border-collapse: separate;
      box-sizing: border-box;
      text-indent: initial;
      border-spacing: 2px;
      border-color: grey;
    }
    ul {
      list-style: none;
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      padding-inline-start: 40px;
    }
    li {
      display: list-item;
    }
    .hack_out .mypage_unregister .hack_out_list li {
      float: left;
      width: 35%;
      padding: 0 0 7px 0;
    }
    .form_element label {
      position: relative;
      top: 0;
      left: 0;
      display: inline-block;
      min-width: 20px;
      min-height: 20px;
      padding: 0 0 0 27px;
    }
    colgroup {
      display: table-column-group;
    }
    col {
      display: table-column;
    }
    tbody {
      display: table-row-group;
      vertical-align: middle;
      border-color: inherit;
    }
    tr {
      display: table-row;
      vertical-align: inherit;
      border-color: inherit;
    }
    .mypage_table_type .table_left th {
      padding: 15px 10px 014px 20px;
      border-top: none 0;
      background: #f7f7f7;
      text-align: left;
    }
    .mypage_table_type th {
      padding: 9px 10px 10px 10px;
      border-top: 1px solid #999999;
      border-bottom: 1px solid #dbdbdb;
      background: #f7f7f7;
    }
    .hack_out .mypage_unregister textarea {
      width: 98px;
      height: 100px;
    }
    .mypage_table_type .table_left textarea {
      width: 95%;
    }
    th {
      display: table-cell;
      vertical-align: inherit;
      font-weight: bold;
      text-align: inherit center;
    }
    .mypage_table_type .table_left td {
      height: 31px;
      padding: 12px 10px 11px 15px;
      text-align: left;
    }
    .mypage_table_type td {
      height: 31px;
      padding: 15px 10px 14px 10px;
      color: #777777;
      border-bottom: 1px solid #dbdbdb;
      border-left: 1px dotted #ededed;
    }
    td {
      display: table-cell;
      vertical-align: inherit;
    }
    input[type="text"],
    input[type="password"] {
      padding: 0 10px;
      outline: none;
      font-size: 12px;
    }
    input[type="text"],
    input[type="password"] {
      height: 31px;
      padding: 0 5px;
      color: #333333;
      border: 1px solid #d6d6d6;
      line-height: 31px;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
    }
    .form_element {
      display: inline-block;
      overflow: hidden;
      position: relative;
    }
    .btn_center_box{
        text-align: center;
    }
    .btn_claim_cancel{
        display: inline-block;
        min-width: 80px;
        height: 42px;
        padding: 0 10px 0 10px;
        line-height: 40px;
        color: #3e3d3c;
        font-size: 14px;
        border: 1px solid #cccccc;
        background: #ffffff;
        text-align: center; 
    }
    a{
        color: #333;
        text-decoration: none;
    }
    em {
        font-style: italic;
    }
    .btn_claim_cancel em{
        font-weight: bold;
    }
    .btn_center_box button{
        margin: 0 2px 0 3px;
    }
    .btn_claim_ok{
        min-width: 100px;
        height: 44px;
        padding: 0 10px 0 10px;
        color: #ffffff;
        font-size: 14px;
        font-weight: bold;
        border: 1px solid #189fdb;
        background: #189fdb;
        text-align: center;
        vertical-align: top;
    }
    button{
        border: 0 none;
        background-color: transparent;
        cursor: pointer;
    }
    .btn_claim_ok em{
        font-weight: bold;
    }
    /* menubar css*/
    .sub_content.sub_contents_left_type{
        width: 1600px;
        margin-left: 10px;
        font-size:x-large;
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
      .sub_content{
        position:  relative!important;
        left: 0px !important;
        display: inline-block !important;
        width: 700px;
      }

      .sub_content{

        display: inline-block !important;
        width: 240px !important;
        
       
      }
      header{
        display: inline-block !important;
        width: 1400px !important;
       
      }
      .mypage_zone_tit{
        display: inline-block !important;
        width: 1400px !important;
        margin-left: 250px;
      }
      .mypage_table_type{
        display: inline-block !important;
        width: 1400px !important;
        margin-left: 250px;
      }
      .bt_wrap{
        display: inline-block !important;
        width: 1400px !important;
        margin-left: 250px;
        margin-bottom: 50px;
      }

      .sub_content{
        position:  absolute!important;
        left: 10px !important;
        top: 300px;
        width: 700px;
      }
      .thumb_wrapper{
        margin-left: 510px;
      }
      .greeting{
        margin-left: 510px;
      }
      .greeting1{
        margin-left: 510px;
      }
     .unregister_info{
      margin-left: 450px;
      width: 1100px;
     }
     input[type=button], input[type=submit], input[type=reset] {
  background-color: white;
  border: 1px solid #333;
  color: black;
  padding: 16px 32px;
  text-decoration: none;
  
  margin: 4px 2px;
  cursor: pointer;
}
.cl{
  background: white;
  color: #000;
}
sub{
  background: black;
  color: white;
}


  </style>
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
            <li class="nav-item">
              <a class="nav-link" href = "Logout.jsp" id = "logout" onclick = "deleteJjim(event)">Logout</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="mypage_main.jsp">Mypage</a>
            </li>
          </ul>
          <!-- Search -->
        
        </div>
      </div>
    </nav>
    <!--sub_menu_box-->
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
                        <a href="mypage_update.jsp">
                          회원정보 변경
                          </a>
                      </li>
                      <li>
                          <a href="#">
                          회원탈퇴
                          </a>
                      </li>
                  </ul>
              </ul>
              
          </div>
      </div>
  </div>
    <!-- Header-->
    <header>
      <div class="thumb_wrapper">
        <img class="thumb" src="images/access.png" />
        <div class="badge"></div>
      </div>
      <div class="hack_out">
        <h2 class="greeting">회원탈퇴</h2>

        <div class="mypage_unregister">
          <div class="mypage_zone_tit">
            <h6 class="greeting1">01. 회원탈퇴 안내</h6>
          </div>
          <div class="unregister_info">
            "A'DIC &nbsp; 탈퇴안내"
            <br />
            <br />
            <%=nick %>님께서 회원 탈퇴를 원하신다니 저희 웹사이트의 서비스가 많이
            부족하고 미흡했나 봅니다.
            <br />
            불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의
            불편함을 해결해 드리도록 노력하겠습니다.
            <br />
            <br />
            We will come back with better service.
          </div>
        </div>
      </div>
    </header>

    <!-- Content section 1-->
    <section>
      <div class="mypage_zone_tit">
        <h6 class="greeting2">02. 회원탈퇴 하기</h6>
      </div>
      <div class="mypage_table_type">
      <form action = "UnregisterCon.do" method = "post">
        <table class="table_left">
          <colgroup>
            <col style="width: 15%" />
            <col style="width: 85%" />
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">아이디</th>
              <td>
                <input type="text" name="id" />
              </td>
            </tr>
            <tr>
              <th scope="row">비밀번호</th>
              <td>
                <input type="password" name="pw" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
   <div class="bt_wrap">
      
      <input type="submit" value="취소하기" class="cl" onclick = "main2.jsp">
      <input type="submit" value="탈퇴하기" class="sub" style="background: black; color: white;">
     
    </div>
  	</form>
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
