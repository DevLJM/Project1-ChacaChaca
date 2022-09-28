<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>

<body>

<div id="map" style="width:800px;height:700px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dfca5b3863564f021175c274a0079e2a"></script>

<!-- /////result///// -->
<p id="result"></p>
<!-- /////result///// -->

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
    center: new kakao.maps.LatLng(35.169167, 129.103621), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨
};

var imageSrc = '../images/carMarker.jpg', // 마커이미지의 주소입니다    
imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
imageOption = {offset: new kakao.maps.Point(30, 55)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)



// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
var positions = [
    {
        content: '<div>기장군 지점<p>주소: 부산 기장<br>동부산</p></div>', 
        latlng: new kakao.maps.LatLng(35.187822158212, 129.21033701708)
    },
    {
    	content: '<div>중구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.107549481086, 129.03812574584)
    },
    {
    	content: '<div>서구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.084444,129.021392)
    },
    {
       content: '<div>동구 지점</div>',
       latlng: new kakao.maps.LatLng(35.13589444, 129.059175)
    },
    {
    	content: '<div>영도구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.08811667, 129.0701861)
    },
    {
    	content: '<div>부산진구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.15995278,129.0553194)
    },
    {
    	content: '<div>동래구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.20187222, 129.0858556)
    },
    {
    	content: '<div>남구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.13340833, 129.0865)
    },
    {
    	content: '<div>북구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.19418056, 128.992475)
    },
    {
    	content: '<div>해운대구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.16001944, 129.1658083)
    },
    {
    	content: '<div>사하구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.10142778, 128.9770417)
    },
    {
    	content: '<div>금정구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.24007778, 129.0943194)
    },
    {
    	content: '<div>강서구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.20916389, 128.9829083)
    },
    {
    	content: '<div>연제구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.17318611, 129.082075)
    },
    {
    	content: '<div>수영구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.144511, 129.113294)
    },
    {
    	content: '<div>사상구 지점</div>', 
        latlng: new kakao.maps.LatLng(35.14946667, 128.9933333)
    }
];


for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
        image: markerImage
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}


// ///테스트/////

// kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
//     // 클릭한 위도, 경도 정보를 가져옵니다 
//     var latlng = mouseEvent.latLng;
    
//     var message = '선택한 지점은 ' + latlng.getLat() + ' 이고, ';
//     message += '경도는 ' + latlng.getLng() + ' 입니다';
    
//     var resultDiv = document.getElementById('result'); 
//     resultDiv.innerHTML = message;
    
// });

var site = new kakao.maps.LatLng(35.187822158212, 129.21033701708);

// var sw = new kakao.maps.LatLng(36, 127),
// ne = new kakao.maps.LatLng(37, 128),
// lb = new kakao.maps.LatLngBounds(sw, ne),
// l1 = new kakao.maps.LatLng(36.5, 127.5),
// l2 = new kakao.maps.LatLng(37, 128);

// var items = {
// 	    'id1': {marker: marker, data: /*….*/}, 
// 	    'id2': {marker: marker, data: /*….*/}, 
// 	    /* … */
// 	}

// 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
kakao.maps.event.addListener(marker, 'click', function() {
	
	var items = {
			'id1' : {marker:marker, data:"사상점"}
	}
	
    alert('대여 지점을 선택하였습니다.'+items.toString());
	console.log(items);
	
 var resultDiv = document.getElementById('result').innerText; 
 resultDiv.innerHTML = message;
 
 $('#result').html(message);


});

// kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
//     var latlng = mouseEvent.latLng;
//     alert('click! ' + latlng.toString());
    
//     marker.setTitle('타이틀');
//     var marker = new kakao.maps.Marker({
//         title: "마커 타이틀을 획득하셨습니다."
//     });
//     marker.getTitle();
    
   
// });




/////테스트/////


</script>

<p id="result"> 지점 선택</p>





</body>
</html>