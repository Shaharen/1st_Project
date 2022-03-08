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
    <title>술 정보 페이지</title>
   
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
    <link href="assets/css/검색페이지.css" rel="stylesheet" />
    <link href="assets/css/styles.css" rel="stylesheet"/>
    <style>
      .tg  {border-collapse:collapse;border-spacing:0;}
    .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
      overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
      font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
    .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
       .tc{
     display: inline-block !important;
     width: 300px;
     margin-top: 30px;
     margin-bottom: 30px;
     margin-right: 70px;
   }
   .board_page{
      margin-bottom: 30px;
      margin-top: 0px;
   }
   /*찜 버튼*/
   .myButton {
	box-shadow: 1px 2px 0px -1px #8a2a21;
	background:linear-gradient(to bottom, #c62d1f 5%, #f24437 100%);
	background-color:#c62d1f;
	border-radius:42px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:13px;
	padding:2px 8px;
	text-decoration:none;
	text-shadow:0px 0px 0px #810e05;
}
.myButton:hover {
	background:linear-gradient(to bottom, #f24437 5%, #c62d1f 100%);
	background-color:#f24437;
}
.myButton:active {
	position:relative;
	top:1px;
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
      <div class="goods_list_item container">
        <div class="goods_list_item_tit">
          <h2 class="text-center fs30 fw500 mb20">주류 정보</h2>
        </div>
        <div class="list_item_category mb60">
          <ul>
            <li class="on">
              <button class="myButton2" value = "1">소주</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "2">맥주</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "3">데킬라</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "4">럼</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "5">브랜디</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "6">위스키</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "7">진</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "8">리큐르</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "9">보드카</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" value = "10">와인</button><!--대분류 버튼-->
            </li>
          </ul>
        </div>
        <div align = "center">
              <!--테이블 추가 부분-->
      		<!-- 술에대한 설명과 이미지를 담기 위한 표  -->
			<table border="1" id="des">
				
			</table>
		</div>
			<br>
        
              <fieldset id="frmSearchDetail">
                <legend style="border: 1px solid #000" id = "infoAll">
                  
                    
                    
                                 <!-- 페이징-->
                 </section>
                     
                      </div>
                    </div>
                    </section>
                </legend>
              </fieldest>
           
    </section>
  
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
	$("button").click( function(){
		var sort = event.target.value;
			$.ajax({
				url : "drinkInfo",
				type : "post",
				async : true,
				data : { "sort" : sort },
				dataType : "json",
				success : function(msg) {
					alert("통신완료");
					console.log(msg);
					console.log("첫" ,msg[1]);
					console.log(typeof(msg));
					console.log(JSON.parse(msg[2]));
					console.log("그림" ,msg[2]);
					var img = JSON.parse(msg[2]);
					$("#desc").remove();
					$("#des").append("<tr id = 'desc'>"
							+"<td>"+msg[1]+"</td>"
							+"<td><img src="+msg[2]+" style = 'width:100px; height:100px'></td>"
							+"</tr>");
				},
				error : function() {
					alert("에러");
				}
			})
			$.ajax({
				url : "drinkInfoAll",
				type : "post",
				async : true,
				data : {"sort" : sort},
				dataType : "json",
				success : function(result){
					alert("통신양호");
					$("div").remove(".tc");
					//$("#inform").remove();
					for (let i = 0 ; i < result.length; i ++) {
						// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
						console.log("for문 안")
						console.log(sort)
						let list = JSON.parse(result[i]);
						$("#infoAll").append("<div class='tc'>"
							    +"<table class='tg'><thead><tr>"
							    +"<td class='tg-c3ow' colspan='5' rowspan='6'><img src="+list.dr_img+" style = 'width:100px; height:200px;'></td>"
							    +"<td class='tg-0pky' colspan='3'>"+list.dr_id+"</td>"
							    +"</tr><tr>"
							    +"<td class='tg-0pky' colspan='3'>"+list.dr_abv+"</td>"
							    +"</tr><tr>"
							    +"<td class='tg-0pky' colspan='3'>"+list.dr_taste+"</td>"
							    +"</tr><tr>"
							    +"<td class='tg-0pky' colspan='3'>"+list.dr_flavor+"</td>"
							    +"</tr><tr>"
							    +"<td class='tg-0pky' colspan='3'>"+list.dr_des+"</td>"
							    +"</tr>"
							    +"</thead></table></div>"
							    );
					}
				},
				error : function() {
					alert("에러2");
				}
			})
		});
	
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
