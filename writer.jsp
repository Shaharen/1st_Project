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
    <title>게시글 작성</title>

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
    <link href="assets/css/게시판메인.css" rel="stylesheet" />
    <style>
      .py-5 {
        position: fixed !important;
        bottom: 0px !important;
        width: 100%;
      }
    </style>
  </head>
  <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container px-5">
        <a
          class="navbar-brand"
          href="main2.jsp"
          style="font-size: 50px; margin-right: 80px"
          >A'DIC</a
        >
        <a
          class="navbar-brand"
          href="Search.jsp"
          style="font-size: 20px; margin-right: 20px"
        >
          주류 검색
        </a>
        <a
          class="navbar-brand"
          href="drinkInfo.jsp"
          style="font-size: 20px; margin-right: 20px"
        >
          주류 정보
        </a>
        <a class="navbar-brand" href="Board.jsp" style="font-size: 20px">
          커뮤니티
        </a>

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
    <!-- Header-->

    <!-- Content section 1-->
    <section>
      <div class="board_wrap">
        <div class="board_title">
          <strong>커뮤니티</strong>
          <p>글 등록</p>
        </div>
        <div class="board_write_wrap">
        <form action = "WriterCon.do" method = "post" id = "frm">
          <div class="board_write">
            <div class="title">
              <dl>
                <dt>제목</dt>
                <dd><input type="text" placeholder="제목 입력" name = "title"></dd>
              </dl>
            </div>

            <div class="cont">
              <textarea placeholder="내용 입력" name = "content"></textarea>
            </div>
          </div>
          </form>
          <div class="bt_wrap">
            <a href="#" class="on" onclick = "document.getElementById('frm').submit();">등록</a>
            <a href="Board.jsp">취소</a>
          </div>
        </div>
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
