<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>


<!-- a태그로 데이터값 가져오기 입니다 -->
<%    
    request.setCharacterEncoding("UTF-8");
    String x = request.getParameter("x");
    String y = request.getParameter("y");
%>

<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	0f4205413e8f4e071ae06aa634538074"></script>
<script>
var xx = <%= x %> //위도
var yy = <%= y %> //경도
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(xx, yy), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(xx, yy); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

</script>

</body>
</html>

<%@ include file="../include/footer.jsp" %>
