<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<p><a href="pwsend"><img src="img/아이유.jpeg"	width="200px" height="300px"/></a></p>
	
	<!-- a 태그에서 href에 #을 사용하면 페이지 이동이 아니고 클릭 이벤트를 사 -->
	<p><a href="#" id="proxylink">proxy 요청</a></p>
	
	<!-- 외부 스크립트를 사용하기 위한 설정 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<!-- 내부 스크립트 -->
	<script>
		document.getElementById("proxylink").addEventListener('click',function(e){
			console.log('클릭')
			//ajax 요청 - jquery 이용 
			$.ajax({
				url:'proxy',
				data:{'addr': 'http://www.kma.go.kr/weather/forecast/mid-term-xml.jsp?stnId=109'},
				dataType:'xml',
				success:function(data){
					//파싱된 결과가 data 에 저장
					alert(data)
				}
				
			})
		})
	
	</script>
	
</body>
</html>