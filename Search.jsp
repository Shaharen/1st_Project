<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String nick = (String)session.getAttribute("nick");%>
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
    <title>술 검색 페이지</title>
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
    <link href="assets/css/검색페이지.css" rel="stylesheet" />
    <link href="assets/css/styles.css" rel="stylesheet"/>
  </head>
  <style>
    input[type=radio] {
    border: 0px;
    width: 10%;
    height: 0.8em;       
    }
    .tg  {border-collapse:collapse;border-spacing:0;}
    .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
      overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
      font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
    .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
   .t1, .t2, .t3, .t4, .t5, .t6, .t7, .t8, .t9{
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

        
    /*페이징*/
    .paging a {display:none;}
    .paging a.view {display:block;}
    .paging a.on {color:#ff0000; font-weight:bold;}
 img{
 	width:500px;
 	height:500px
}
  </style>
  <body id="page-top">

    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container px-5">
        <a class="navbar-brand" href="main2.jsp" style="font-size: 50px; margin-right: 80px;">A'DIC</a>
        <a class="navbar-brand" href="#"style="font-size: 20px; margin-right: 20px;"> 주류 검색 </a>
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
          <h2 class="text-center fs30 fw500 mb20">대분류를 선택해주세요</h2>
        </div>
        <div class="list_item_category mb60">
          <ul>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="1"
			onclick="ButtonValue(event)">소주</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="2"
			onclick="ButtonValue(event)">맥주</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="3"
			onclick="ButtonValue(event)">데킬라</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="4"
			onclick="ButtonValue(event)">럼</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="5"
			onclick="ButtonValue(event)">브랜디</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="6"
			onclick="ButtonValue(event)">위스키</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="7"
			onclick="ButtonValue(event)">진</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="8"
			onclick="ButtonValue(event)">리큐르</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="9"
			onclick="ButtonValue(event)">보드카</button><!--대분류 버튼-->
            </li>
            <li class="on">
              <button class="myButton2" type="submit" name="sort" value="10"
			onclick="ButtonValue(event)">와인</button><!--대분류 버튼-->
            </li>
          </ul>
        </div>
        
        <!-- 술에대한 설명과 이미지를 담기 위한 표  -->
		<table border="1" id="des"  style="width: 800px; text-align: center; margin-left: 250px; font-weight:bold;"></table>
	
		<br>
		<br>
        
        <div class="addition_zone">
          <div class="main">
            <div class="cate_banner_box">
            </div>
          </div>
        </div>
        <!--중분류 부분-->
        <div class="side_cont mt60">
          <div class="sub_search_box">
            <form method="post">
              <fieldset id="frmSearchDetail">
                <legend style="border: 1px solid #000">
                  <dl>
                    <dt>【맛】</dt>
                    <dd>
                      <div class="benefit_box">
                        <button type="submit"  class="snip1535" name="taste" value="a"
					onclick="TasteValue(event)">ㄱ</button>
                        <button class="snip1535" type="submit" name="taste" value="b"
					onclick="TasteValue(event)">ㄴ</button>
                        <button class="snip1535" type="submit" name="taste" value="c"
					onclick="TasteValue(event)">ㄷ</button>
                        <button class="snip1535" type="submit" name="taste" value="d"
					onclick="TasteValue(event)">ㄹ</button>
                        <button class="snip1535" type="submit" name="taste" value="e"
					onclick="TasteValue(event)">ㅁ</button>
                        <button class="snip1535" type="submit" name="taste" value="f"
					onclick="TasteValue(event)">ㅂ</button>
                        <button class="snip1535" type="submit" name="taste" value="g"
					onclick="TasteValue(event)">ㅅ</button>
                        <button class="snip1535" type="submit" name="taste" value="h"
					onclick="TasteValue(event)">ㅇ</button>
                        <button class="snip1535" type="submit" name="taste" value="i"
					onclick="TasteValue(event)">ㅈ</button>
                        <button class="snip1535" type="submit" name="taste" value="j"
					onclick="TasteValue(event)">ㅊ</button>
                        <button class="snip1535" type="submit" name="taste" value="k"
					onclick="TasteValue(event)">ㅋ</button>
                        <button class="snip1535" type="submit" name="taste" value="l"
					onclick="TasteValue(event)">ㅌ</button>
                        <button class="snip1535" type="submit" name="taste" value="m"
					onclick="TasteValue(event)">ㅍ</button>
                        <button class="snip1535" type="submit" name="taste" value="n"
					onclick="TasteValue(event)">ㅎ</button>
                      </div>
                    </dd>
	                  	<dt>
                  			<!--추가 체크박스-->
        	            	<table border ="1">
        	            		<tr id = "taste">
        	            		</tr>
            	        	</table>
    	              	</dt>
                  	</dl>
                  <dl>
                    <dt>【향】</dt>
                    <dd>
                      <div class="benefit_box">
                        <button class="snip1535" type="submit" name="flavor" value="a"
					onclick="FlavorValue(event)">ㄱ</button>
                        <button class="snip1535" type="submit" name="flavor" value="b"
					onclick="FlavorValue(event)">ㄴ</button>
                        <button class="snip1535" type="submit" name="flavor" value="c"
					onclick="FlavorValue(event)">ㄷ</button>
                        <button class="snip1535" type="submit" name="flavor" value="d"
					onclick="FlavorValue(event)">ㄹ</button>
                        <button class="snip1535" type="submit" name="flavor" value="e"
					onclick="FlavorValue(event)">ㅁ</button>
                        <button class="snip1535" type="submit" name="flavor" value="f"
					onclick="FlavorValue(event)">ㅂ</button>
                        <button class="snip1535" type="submit" name="flavor" value="g"
					onclick="FlavorValue(event)">ㅅ</button>
                        <button class="snip1535" type="submit" name="flavor" value="h"
					onclick="FlavorValue(event)">ㅇ</button>
                        <button class="snip1535" type="submit" name="flavor" value="i"
					onclick="FlavorValue(event)">ㅈ</button>
                        <button class="snip1535" type="submit" name="flavor" value="j"
					onclick="FlavorValue(event)">ㅊ</button>
                        <button class="snip1535" type="submit" name="flavor" value="k"
					onclick="FlavorValue(event)">ㅋ</button>
                        <button class="snip1535" type="submit" name="flavor" value="l"
					onclick="FlavorValue(event)">ㅌ</button>
                        <button class="snip1535" type="submit" name="flavor" value="m"
					onclick="FlavorValue(event)">ㅍ</button>
                        <button class="snip1535" type="submit" name="flavor" value="n"
					onclick="FlavorValue(event)">ㅎ</button>
                      </div>
                    </dd>
                  </dl>
                  <dl>
                    <dt><!--추가-->
                    	<table border = "1">
                    		<tr id = "flavor">
                    		</tr>
                    	</table>
                    </dt>
                  </dl>
                  <dl>
                    <dt>
                    <!-- 본인이 고른 향, 맛 출력-->
                    <!-- 	<table>
                    		<tr>
								<td>맛</td>
							</tr>
							<tr id="selectTaste">
							</tr>
							<tr>
								<td>향</td>
							</tr>
							<tr id="selectFlavor">
							</tr>
                    	</table> -->
                    </dt>
                    <dt>검색 옵션</dt>
                    <dd>
                      <div class="benefit_box">
                        <input type="radio" name="option" value="or" onclick="selectOption(event)">OR
                        <br>
                        <input type="radio" name="option" value="and" onclick="selectOption(event)">AND
                      </div>
                    </dd>
                  </dl>
                </legend>
                <div class="container">
                  <button type="submit" name="reset" value="reset"
					onclick="Reset(event)" style="width: 100px">
                    초기화
                  </button>
                  <button type="submit" name="resultSend" value="result"
					onclick="Send(event)" style="width: 100px">
                    검색하기
                  </button>
                  
                </div>
              </fieldset>
            </form>
          </div>
        </div>
        
        <!--테이블 추가 부분-->
        
        <fieldset id="frmSearchDetail">
          <legend style="border: 1px solid #000" id = "result">
                           <!-- 페이징-->
                
                    
           </section>
               
                </div>
              </div>
              </section>
          </legend>
        </fieldest>
     
       
       
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
    <script src="assets/js/검색페이지.js"></script>
    <script src="jquery-3.6.0.min.js"></script>

	<script type="text/javascript">
		//대분류
		let sort = "";
		//맛을 담을 배열
		let tasteList = [];
		//향을 담을 배열
		let flavorList = [];
		//옵션 담을 변수
		let option = "";
		//찜카운터
		let bSubmit = 1;
		//닉네임
		let nick = "<%=nick%>";
		console.log(nick) 

		//대분류 선택시 술 설명과 이미지 나오게 하기
		function ButtonValue(event) {
			
			//대분류를 눌렀을때 이미 중분류가 선택되어있는 상태일수 있으니 중분류 초기화
				$("#result").empty();
				$("#selectTaste").empty();
				$("#selectFlavor").empty();
				$("#taste").empty();
				$("#flavor").empty();
				tasteList = [];
				flavorList = [];
				option = "";
				
				
			//대분류 변수만들기
			//let sort = "";
			if (event.target.click) {
				sort = event.target.value;
				console.log(sort);
				$.ajax({
					url : "DesCon.do",
					data : {
						"num" : sort
					},
					dataType : "json",
					success : function(result) {
						alert("성공");
						/* 	console.log(result); */
						// 소분류 초기화
						$("#des").empty();
						// 넘어온 result 중에서 해당하는 값만 출력
						for (let i = 0; i < result.length; i++) {
							// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
							/* console.log("for문 안")
							console.log(sort) */
							// 해당 번호에 맞는 정보만 append
							if (sort !== null) {
								let data = JSON.parse(result[i]);
								$("#des").append(
										"<tr>" + "<td>" + data.des_des + "</td>"
												+ "<td><img src =" + data.des_img + "></td>"
												+ "</tr>");
							} else {
								console.log("실패")
							}
						}
					},
					error : function() {
						alert("실패");
					}
				});
			}
		}
		

		//초성으로 맛 선택하기
		function TasteValue(event) {
			//초성을 담을 변수
			let index = "";

			if (event.target.click) {
				index = event.target.value;
				$.ajax({
							url : "TasteCon.do",
							data : {
								"num" : sort,
								"index" : index
							},
							dataType : "json",
							success : function(result) {
								alert("성공");
								$("#taste").empty();
								for (let i = 0; i < result.length; i++) {
									// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
									console.log("for문 안")
									console.log(index)
									// 해당 번호에 맞는 정보만 append
									let data = JSON.parse(result[i]);
									if (data != null) {
										$("#taste").append("<tr>"
														+ "<td><input type ='checkbox' id = 'T_"
														+ data
														+ "' onclick = 'checkTaste(event)' value = '"
														+ data
														+ "'>"
														+ data
														+ "</td>"
														+ "</tr>");
									}
									//배열이 0이 아니라면 클릭하여 배열에 추가된 향 또는 맛이 잇으니까 다시한번 반복문을 통해 있는 요소라면 체크해준다
									if(tasteList.length != 0){
										for(let i = 0; i < tasteList.length; i++){
											if(tasteList[i] == data){
												console.log("input : checkbox[value ='" + data + "']")
												console.log("#" + data)
												$("#" + "T_" +data).prop("checked", true);
											}
										}
									}
							}
						},
						error : function() {
							alert("실패");
						}
					});
		}
	}
		//초성으로 향 선택하기
		function FlavorValue(event) {
			//초성을 담을 변수
			let index = "";

			if (event.target.click) {
				index = event.target.value;
				$.ajax({
							url : "FlavorCon.do",
							data : {
								"num" : sort,
								"index" : index
							},
							dataType : "json",
							success : function(result) {
								alert("성공");
								$("#flavor").empty();
								for (let i = 0; i < result.length; i++) {
									// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
									console.log("for문 안")
									console.log(index)
									// 해당 번호에 맞는 정보만 append
									let data = JSON.parse(result[i]);
										if (data != null) {
											$("#flavor").append("<tr>"
														+ "<td><input type ='checkbox' id = 'F_"
														+ data
														+ "' onclick = 'checkFlavor(event)' value = '"
														+ data
														+ "'>"
														+ data
														+ "</td>"
														+ "</tr>");
										}
										//배열이 0이 아니라면 클릭하여 배열에 추가된 향 또는 맛이 잇으니까 다시한번 반복문을 통해 있는 요소라면 체크해준다
										if(flavorList.length != 0){
											for(let i = 0; i < flavorList.length; i++){
												if(flavorList[i] == data){
													console.log("input : checkbox[value ='" + data + "']");
													console.log("#" + data);
													$("#" + "F_" + data).prop("checked", true);
												}
											}
										}
								}
							},
							error : function() {
								alert("실패");
							}
						});
			}
		}

		//선택한 맛 출력하기
		function checkTaste(event) {
			let tasteValue = "";

			if (event.target.checked == true) {
				tasteValue = event.target.value;
				$("#selectTaste").append(
						"<td id ="+ event.target.id + ">" + tasteValue
								+ "</td>")
				tasteList.push(tasteValue);
				console.log(tasteList);

			} else if (event.target.checked == false) {
				tasteValue = event.target.value;
				//			$("#selectTaste td").eq(1).remove();
				$("#selectTaste td#" + event.target.id).remove();
				//$("#selectTaste > td:nth-child(" +tasteValue+ ")").remove(); 
				for (let i = 0; i < tasteList.length; i++) {
					if (tasteList[i] === tasteValue) {
						tasteList.splice(i, 1);
						i--;
						console.log(tasteList);
					};
				};
			};
		};

		//선택한 향 출력하기

		function checkFlavor(event) {
			let flavorValue = "";

			if (event.target.checked == true) {
				flavorValue = event.target.value;
				$("#selectFlavor").append(
						"<td id =" + event.target.id+ ">" + flavorValue
								+ "</td")
				flavorList.push(flavorValue);
				console.log(flavorList);

			} else if (event.target.checked == false) {
				flavorValue = event.target.value;
				$("#selectFlavor td#" + event.target.id).remove();
				for (let i = 0; i < flavorList.length; i++) {
					if (flavorList[i] === flavorValue) {
						flavorList.splice(i, 1);
						i--;
						console.log(flavorList);
					};
				};
			}
		}

		//옵션 선택하기(and , or)

		function selectOption(event) {

			if (event.target.checked) {
				option = event.target.value;
				console.log(option)
			}
		}

		//결과 출력하기

		function Send(event) {

			if (event.target.click) {
				//향이나 맛을 안골랐어도 실행하기 위해 배열에 임의의 값을 넣는다
			 	if (Array.isArray(flavorList) && flavorList.length === 0) {
					flavorList.push("빈값임");
				}
				if (Array.isArray(tasteList) && tasteList.length === 0) {
					tasteList.push("빈값임");
				} 
				//한가지 중분류만 골랐을 때 자동으로 or가 들어가게 하는 조건문
				if (!option) {
					option = "or";
					console.log("선택을 안했기 때문에 지금 옵션은> " + option);
				};
				$.ajax({
							url : "ResultCon.do",
							traditional : true,
							data : {
								"num" : sort,
								"tasteList" : tasteList,
								"flavorList" : flavorList,
								"option" : option
							},
							dataType : "json",
							success : function(result) {
								console.log(tasteList);
								alert("성공");
								$("#result").empty();
								if(result.length == 0){
									$("#result").append(
											"<tr><td>검색하신 결과가 없습니다</td></tr>");
								}
								for (let i = 0; i < result.length; i++) {
									let data = JSON.parse(result[i]);
									console.log(result[i]);
									
									if (data.dr_des != null) {
										$("#result").append("<tr>" + "<td>이름</td>"
														+ "<td>"
														+ data.dr_id
														+ "</td></tr>"
														+ "<tr>"
														+ "<td>향</td>"
														+ "<td>"
														+ data.dr_flavor
														+ "</td></tr>"
														+ "<tr>"
														+ "<td>맛</td>"
														+ "<td>"
														+ data.dr_taste
														+ "</td></tr>"
														+ "<tr>"
														+ "<td>도수</td>"
														+ "<td>"
														+ data.dr_abv
														+ "</td></tr>"
														+ "<tr>"
														+ "<td>설명</td>"
														+ "<td>"
														+ data.dr_des
														+ "</td></tr>"
														+ "<tr>"
														+ "<td>이미지</td>"
														+ "<td><img src = " + data.dr_img + "></td></tr>"
														+ "<tr>"
														+ "<td><button type = 'submit' id = '"+ data.dr_num + "' value = '"+ data.dr_num +"' onclick = 'Jjim(event)'>찜하기</button></td>"
														+ "</tr>");

									} else if (data.dr_des == null) {
										//des가 비어있을때 작동
										data.dr_des = "";
										$("#result").append("<tr>" 
													+ "<td>이름</td>"
													+ "<td>"
													+ data.dr_id
													+ "</td></tr>"
													+ "<tr>"
													+ "<td>향</td>"
													+ "<td>"
													+ data.dr_flavor
													+ "</td></tr>"
													+ "<tr>"
													+ "<td>맛</td>"
													+ "<td>"
													+ data.dr_taste
													+ "</td></tr>"
													+ "<tr>"
													+ "<td>도수</td>"
													+ "<td>"
													+ data.dr_abv
													+ "</td></tr>"
													+ "<tr>"
													+ "<td>설명</td>"
													+ "<td>"
													+ data.dr_des
													+ "</td></tr>"
													+ "<tr>"
													+ "<td>이미지</td>"
													+ "<td><img src = " + data.dr_img + "></td></tr>"
													+ "<tr>"
													+ "<td><button type = 'submit' id = '"+ data.dr_num + "' value = '"+ data.dr_num +"' onclick = 'Jjim(event)'>찜하기</button></td>"
													+ "</tr>");
									}
								}
							},
							error : function() {
								alert("실패");
							}
						});
			}

			//'빈값임' 삭제
			if (flavorList[0] === "빈값임") {
				flavorList = [];
				console.log(flavorList[0]);
			}
			if (tasteList[0] === "빈값임") {
				tasteList = [];
				console.log(tasteList[0]);
			}

		}
		
		//찜기능
		function Jjim(event){
			
			//넘버링 가져오기
			if(event.target.click){
			let num = event.target.value;
			let id = event.target.id;
				
			$("#"+id).css("color","red")
			console.log("번호확인 > " + num)
			$.ajax({
				url : "JjimCon.do",
				data : {"bSubmit" : bSubmit, "num" : num, "nick" : nick},
				dataType : "json",
				success : function(result){
					alert("찜등록");
				},
				error : function(){
					alert("찜등록");
				}
			});
			
			
			/* if(bSubmit === 0){
				//0이면 1로 바꾸기
				bSubmit = 1;
				console.log("번호확인 > " + num)
				$.ajax({
					url : "JjimCon",
					data : {"bSubmit" : bSubmit, "num" : num},
					dataType : "json",
					success : function(result){
						alert("찜등록");
					},
					error : function(){
						alert("실패");
					}
				});
			}else{
				bSubmit = 0;
				console.log("번호확인 > " + num)
				$.ajax({
					url : "JjimCon",
					data : {"bSubmit" : bSubmit, "num" : num},
					dataType : "json",
					success : function(result){
						alert("찜해제");
					},
					error : function(){
						alert("실패");
					}
					
					});
			} */
			
			
			}
			
		}
		

		//초기화 기능
		function Reset(event) {
			$("#result").empty();
			$("#selectTaste").empty();
			$("#selectFlavor").empty();
			$("#taste").empty();
			$("#flavor").empty();
			tasteList = [];
			flavorList = [];
			option = "";
		}
		
		
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
