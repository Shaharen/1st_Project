<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
//세션에서 가져온 닉네임
//일단 임의로 지정함
String nick = (String)session.getAttribute("nick");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 찜페이지 기능  -->
		<table border = "1" id = "print">
			<tr>
				<td>술이름</td>
				<td>향</td>
				<td>맛</td>
				<td>도수</td>
				<td>이미지</td>
			</tr>
		</table>
		
		<script src="jquery-3.6.0.min.js"></script>
		<script type="text/javascript">
		
		let nick = "<%=nick%>";
		
		/*ajax 수정  */
		      $.ajax({
		         url : "JjimprintCon.do",
		         data : {"nick" : nick},
		         dataType : "json",
		         success : function(result){
		            console.log(result.length)
		            if(result.length == 0){
		               $("#print").append(
		                        "<tr><td colspan = '5'>찜하신 목록이 없습니다</td></tr>"      
		               
		               );
		            }
		            
		            for (let i = 0; i < result.length; i++){
		               let data = JSON.parse(result[i]);
		               $("#print").append(
		                        "<tr><td>" + data.dr_id + "</td>"
		                        +"<td>" + data.dr_flavor + "</td>"
		                        +"<td>" + data.dr_taste + "</td>"
		                        +"<td>" + data.dr_abv + "</td>"
		                        +"<td><img src =" + data.dr_img + "></td>"
		                        +"<td><button id ='"+data.dr_num+"' onclick = 'JjimlistDelete(event)'>삭제</button></td></tr>"
		               );
		            }
		         }
		      })
		      //찜목록리스트에서 삭제
		      function JjimlistDelete(event){
		         if(event.target.click){
		            let Jjimlistdelete = event.target.id;
		            console.log(Jjimlistdelete)
		            $.ajax({
		               url : "JjimlistDeleteCon.do",
		               data : {"dr_num" : Jjimlistdelete, "nick" : nick},
		               complete : function(){
		                  alert("삭제완료")
		                     $("#print").empty();
		                     $.ajax({
		                           url : "JjimprintCon.do",
		                           data : {"nick" : nick},
		                           dataType : "json",
		                           success : function(result){
		                              if(result.length == 0){
		                                 $("#print").append(
		                                          "<tr><td colspan = '5'>찜하신 목록이 없습니다</td></tr>"      
		                                 
		                                 );
		                              }
		                              
		                              for (let i = 0; i < result.length; i++){
		                                 let data = JSON.parse(result[i]);
		                                 $("#print").append(
		                                          "<tr><td>" + data.dr_id + "</td>"
		                                          +"<td>" + data.dr_flavor + "</td>"
		                                          +"<td>" + data.dr_taste + "</td>"
		                                          +"<td>" + data.dr_abv + "</td>"
		                                          +"<td><img src =" + data.dr_img + "></td>"
		                                          +"<td><button id ='"+data.dr_num+"' onclick = 'JjimlistDelete(event)'>삭제</button></td></tr>"
		               );
		            }
		         }
		      })
		                  
		                  
		               }
		               
		               
		               
		            })
		         }
		      }
		      
		</script>
		
		
		
</body>
</html>