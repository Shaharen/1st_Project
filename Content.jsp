<%@page import="com.smhrd.model.A_ReplyDTO"%>
<%@page import="com.smhrd.model.A_ReplyDAO"%>
<%@page import="com.smhrd.model.A_BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.A_BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//게시글을 꺼내오기 위한 번호(쿼리스트링으로 받기)
int num = Integer.parseInt(request.getParameter("bo_num"));
//댓글을 달기위해 기준이 되는 게시글 번호를 세션에 저장하기
HttpSession bo_num = request.getSession();
bo_num.setAttribute("bo_num", num);

//게시글에 글 출력을 위한 객체 생성
A_BoardDAO dao = new A_BoardDAO();
ArrayList<A_BoardDTO> view = dao.content(num);

//게시판에 댓글을 출력하기 위한 객체 생성
A_ReplyDAO r_dao = new A_ReplyDAO();
ArrayList<A_ReplyDTO> reply = r_dao.Output(num);

//본인 확인용 
String nick = (String)session.getAttribute("nick");
%>
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
    <title>ADIC 게시판</title>
    
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
      .py-5{
        position: relative !important;
        bottom: 0px !important;
        width: 100%;
      }
      .bt_wrap{
        margin-bottom: 100px;
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
                <div class="bt_wrap">
                  <a href="Board.jsp" class="on" style="float: right; margin-top: 70px;">목록</a>
                 
              </div>
                <p>게시판을 통하여 사용자와 자유로운 소통을 하는공간입니다.</p>
            </div>
            <div class="board_view_wrap">
                <div class="board_view">
                    <div class="title">
                        <%=view.get(0).getBo_title()%>
                    </div>
                    <div class="info">
                        <dl>
                            <dt>글쓴이</dt>
                            <dd><%=view.get(0).getNick()%></dd>
                        </dl>
                        <dl>
                            <dt>작성시간</dt>
                            <dd><%= view.get(0).getBo_date() %></dd>
                        </dl>
                       
                    </div>
                    <div class="cont">
                        <%=view.get(0).getBo_content() %>
                    </div>
                </div>
                <div class="bt_wrap">
                    <%if(view.get(0).getNick().equals(nick)){%>
						<a href = "WriterUpdate.jsp?bo_num=<%=view.get(0).getBo_num()%>">수정</a>
						<a onclick = "return confirm('정말로 삭제하시겠습니까?')" href = "WriterDeleteCon.do?bo_num=<%=view.get(0).getBo_num()%>">삭제</a>
					<%}; %>
                </div>
            </div>
        </div>
		<!--디스코스 이용한 댓글 기능-->
		<div>
        <p>
          <div id="disqus_thread"></div>
          <script>
              /**
              *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
              *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
              /*
              var disqus_config = function () {
              this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
              this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
              };
              */
              (function() { // DON'T EDIT BELOW THIS LINE
              var d = document, s = d.createElement('script');
              s.src = 'https://web1-qw0nt3uqsu.disqus.com/embed.js';
              s.setAttribute('data-timestamp', +new Date());
              (d.head || d.body).appendChild(s);
              })();
          </script>
          <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        </p>
        </div>
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