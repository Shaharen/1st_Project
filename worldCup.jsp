<%@page import="com.smhrd.model.A_WorldCupDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<A_WorldCupDTO> list = (ArrayList<A_WorldCupDTO>) request.getAttribute("imgGroup");
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
    <title>이상형월드컵</title>
  
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
      margin-top: 100px;
    }
    a {
      color: black;
    }
    header .thumb {
      width: 100px;
      height: 100px;
     
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
      font-family: "YUniverse-B";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_yuniverse@1.0/YUniverse-B.woff2")
            format("woff2");
        font-weight: normal;
        font-style: normal;
        font-size: 100;
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
    img{
			width: 900px;
			height: 700px;
           
		}
  

        figcaption{
            display: inline !important;

        }
    .fc1{
        margin-right: 800px;
        
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
        </div>
      </div>
    </nav>
     <!-- Header-->
     <header>
      <div class="thumb_wrapper">
        <img class="thumb" src="images/trophy (1).png" />
        <div class="badge"></div>
      </div>

      <div class="hack_out">
        <h2 class="greeting">안주 월드컵</h2>
      </div>
 
    <!-- Content section 1-->
    <section>
        
            <h1>Select Food!</h1>
        <table border = "1" id = "result" align = "center">
			<!-- list가 없다면 검색 결과가 없습니다 -->
	<%		if (list.isEmpty()) {%>
				<tr><td colspan = '2'>현재 가져온 이미지가 없습니다.</td></tr>
			<!-- list가 있다면 검색 결과 사진 출력-->
			<!-- 0번부터 list.size()로 돌리기 -->
	<%		} else { %>
			<tr><h1 id = "vs">8강전</h1></tr>
			<!-- 사진 -->
			<tr>
				<td><img src = "<%=list.get(0).getS_img()%>" id = "leftImg" style = "width : 300px; height: 300px" border ="1"></td>
				<td><img src = "<%=list.get(1).getS_img()%>" id = "rightImg" style = "width : 300px; height: 300px" border = "1"></td>
			</tr>
			<!-- 이름 -->
			<tr>
				<td id = "leftName"><%=list.get(0).getS_id()%></td>
				<td id = "rightName"><%=list.get(1).getS_id()%></td>
			</tr>
			<%
			}
			%>
		</table>
            
            <!-- <center>
            <p id="cal"></p>
    
            <img id="image" onclick="change(0)" border="1">
            <img id="images" onclick="change(1)" border="1">
            <br>
            
            <figcaption class="fc1" style=" margin-bottom: 150px;">【음식 이름】</figcaption>
            <figcaption class="fc2" style=" margin-bottom: 150px;">【음식 이름】</figcaption>
            -->
           <br>
           <br >
           <br>
           <br >
          
            </center>
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
	var j = 0;
	var k = 0;
	var imgName = [];
	var imgLink = [];
	var imgCnt = [];
	<% for ( int i = 0 ; i < list.size(); i++ ) { %>
		imgName[<%=i%>] = "<%=list.get(i).getS_id()%>";
		imgLink[<%=i%>] = "<%=list.get(i).getS_img()%>";
		imgCnt[<%=i%>] = <%=list.get(i).getS_cnt()%>;
	<%}	%>;
	var img = { "Name" : imgName , "Link" : imgLink , "Cnt" : imgCnt};
	var group4 = {}; // 4강전
	var g4Name = [];
	var g4Link = [];
	var g4Cnt = [];
	var group2 = {}; // 결승전
	var g2Name = [];
	var g2Link = [];
	var g2Cnt = [];
	var group = {}; // 최후의 1
	var gName = [];
	var gLink = [];
	var gCnt = [];
	var maxCnt = 0;
	console.log(imgName);
	console.log(imgLink);
	console.log(imgCnt);
	console.log(img);
	
	$("#rightImg").on("click" , function() {
		if ( j < 8 ) {
			// 기존 카운터 증가
			$("#rightCnt").html(img.Cnt[j+1] += 1);
			// 오른쪽 푸쉬
			g4Name.push(img.Name[j+1]);
			g4Link.push(img.Link[j+1]);
			g4Cnt.push(img.Cnt[j+1]);
			console.log("이름",g4Name);
			console.log(g4Link);
			console.log(g4Cnt);
			group4 = {"Name" : g4Name , "Link" : g4Link , "Cnt" : g4Cnt};
			console.log("그룹4",group4);
			// 이미지 교체 0 / 1 번 -> 2 / 3번으로
			j = j + 2;
			$("#leftImg").attr("src" , img.Link[j]);
			$("#rightImg").attr("src" , img.Link[j+1]);
			$("#leftName").html(img.Name[j]);
			$("#rightName").html(img.Name[j+1]);
			console.log("j" ,j);
			console.log("그룹4", group4);
		
			if ( j == 8 ) {
				$("#leftImg").attr("src" , group4.Link[0]);
				$("#rightImg").attr("src" , group4.Link[1]);
				$("#leftName").html(group4.Name[0]);
				$("#rightName").html(group4.Name[1]);
				$("#vs").html("4강전");
			}
		} else if ( j >= 8 && k <= 5) {
			// 기존 카운터 증가
			$("#rightCnt").html(group4.Cnt[k+1] += 1);
			// 오른쪽 푸쉬
			g2Name.push(group4.Name[k+1]);
			g2Link.push(group4.Link[k+1]);
			g2Cnt.push(group4.Cnt[k+1]);
			console.log("이름",g2Name);
			console.log(g2Link);
			console.log(g2Cnt);
			group2 = {"Name" : g2Name , "Link" : g2Link , "Cnt" : g2Cnt};
			console.log("그룹2",group2);
			// 이미지 교체 0 / 1 번 -> 2 / 3번으로
			j = j + 2;
			k = k + 2;
			$("#leftImg").attr("src" , group4.Link[k]);
			$("#rightImg").attr("src" , group4.Link[k+1]);
			$("#leftName").html(group4.Name[k]);
			$("#rightName").html(group4.Name[k+1]);
			console.log("j" ,j);
			console.log("k" ,k);
			if ( k == 4 ){
				$("#leftImg").attr("src" , group2.Link[0]);
				$("#rightImg").attr("src" , group2.Link[1]);
				$("#leftName").html(group2.Name[0]);
				$("#rightName").html(group2.Name[1]);
				$("#vs").html("결승전");
				k = k + 2;
			}	
		} else if ( k == 6 ) {
			gName.push(group2.Name[1]);
			gLink.push(group2.Link[1]);
			gCnt.push(group2.Cnt[1]);
			group = {"Name" : gName , "Link" : gLink , "Cnt" : gCnt};
			console.log("그룹",group);
			$("#result").empty();
			$("#result").html("<tr>"
					+"<td><img src = "+group.Link[0]+" id = 'victory'></td>"
					+"</tr><tr>"
					+"<td>"+group.Name[0]+"</td>"
					+"</tr>"
					);
			$("#victory").css("width" , "300px");
			$("#victory").css("height" , "300px");
			$("#vs").html("우승~!");
		}
		});
	// 왼쪽 클릭 알고리즘
	$("#leftImg").on("click" , function() {
		if ( j < 8 ) {
			// 기존 카운터 증가
			$("#leftCnt").html(img.Cnt[j] += 1);
			// 왼쪽 푸쉬
			g4Name.push(img.Name[j]);
			g4Link.push(img.Link[j]);
			g4Cnt.push(img.Cnt[j]);
			group4 = {"Name" : g4Name , "Link" : g4Link , "Cnt" : g4Cnt};
			// 이미지 교체 0 / 1 번 -> 2 / 3번으로
			j = j + 2;
			$("#leftImg").attr("src" , img.Link[j]);
			$("#rightImg").attr("src" , img.Link[j+1]);
			$("#leftName").html(img.Name[j]);
			$("#rightName").html(img.Name[j+1]);
		
			if ( j == 8 ) {
				$("#leftImg").attr("src" , group4.Link[0]);
				$("#rightImg").attr("src" , group4.Link[1]);
				$("#leftName").html(group4.Name[0]);
				$("#rightName").html(group4.Name[1]);
				$("#vs").html("4강전");
				
			}
		} else if ( j >= 8 && k <= 5) {
			// 기존 카운터 증가
			$("#leftCnt").html(group4.Cnt[k] += 1);
			// 왼쪽 푸쉬
			g2Name.push(group4.Name[k]);
			g2Link.push(group4.Link[k]);
			g2Cnt.push(group4.Cnt[k]);
			group2 = {"Name" : g2Name , "Link" : g2Link , "Cnt" : g2Cnt};
			// 이미지 교체 0 / 1 번 -> 2 / 3번으로
			j = j + 2;
			k = k + 2;
			$("#leftImg").attr("src" , group4.Link[k]);
			$("#rightImg").attr("src" , group4.Link[k+1]);
			$("#leftName").html(group4.Name[k]);
			$("#rightName").html(group4.Name[k+1]);
			if ( k == 4 ){
				$("#leftImg").attr("src" , group2.Link[0]);
				$("#rightImg").attr("src" , group2.Link[1]);
				$("#leftName").html(group2.Name[0]);
				$("#rightName").html(group2.Name[1]);
				$("#vs").html("결승전");
				k = k + 2;
			}	
		} else if ( k == 6 ) {
			gName.push(group2.Name[0]);
			gLink.push(group2.Link[0]);
			gCnt.push(group2.Cnt[0]);
			group = {"Name" : gName , "Link" : gLink , "Cnt" : gCnt};
			console.log("그룹",group);
			$("#result").empty();
			$("#result").html("<tr>"
					+"<td><img src = "+group.Link[0]+" id = 'victory'></td>"
					+"</tr><tr>"
					+"<td>"+group.Name[0]+"</td>"
					+"</tr>");
			$("#victory").css("width" , "300px");
			$("#victory").css("height" , "300px");
			$("#vs").html("우승~!");
		}
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
