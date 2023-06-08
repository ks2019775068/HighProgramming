# 고급프로그래밍
## flutter로 포트폴리오 만들기
<div>
	<h3>💻Spec💻</h3>
	<img width="500" height="auto" alt="spec" src="https://user-images.githubusercontent.com/80227900/228855787-f7dec0d9-a0fd-47e4-a0a1-7f83bf5a37b8.png">
	<h2>페이지 구성</h2>
</div>

## main.dart
<div>
	<img width="300" alt="main" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/7abc751e-1f3d-4d53-ae96-61c14b986b4d">
	<p>Gridview를 이용해 2*3배열로 만듦</p>
	<p>클릭 시 각 페이지로 이동</p>
	<p>버튼을 슬라이드하면 화면 꺼짐</p>
</div>

## profilepage.dart
<div>
	<img width="300" alt="profile" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/dfc2ae78-5e0c-4f5c-8bf4-0177cb5c0c5f">
	<p>gif 이미지 삽입</p>
	<p>url_launcher package, unicon package 사용</p>
	<p>fluttertoast package 사용</p>
</div>

## educationpage.dart
<div>
	<img width="300" alt="edu" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/2ed9192e-e847-4741-b766-d4a336e69aec">
	<p>url_launcher package 사용, 버튼 클릭 시 경성대학교 홈페이지로 이동</p>
	<p>google map API, google_maps_flutter package 사용, 경성대의 위치가 구글지도로 보여짐</p>
</div>

## skillpage.dart
<div>
	<img width="300" alt="skill" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/527a3c2f-92ee-40c5-9d73-5db1efab7a47">
	<p>url_launcher package 사용, 버튼 클릭 시 각 웹사이트로 이동</p>
</div>

## hobbypage.dart
<div>
	<img width="300" alt="hobby" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/19c84d3a-8069-42ad-bb3e-f73847735002">
	<p>carousel_slider package 사용, 2초마다 이미지 바뀜</p>
	<p>ListView로 취미 목록 보여짐</p>
</div>

## favoritepage.dart
<div>
	<img width="300" alt="fav1" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/69ca0b7f-ba73-4270-8229-b4e46e48e21e"><img width="300" alt="fav2" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/971981a3-29be-4901-8010-a08518734391">
	<p>flutter_dialogs package 사용, 이미지 클릭 시 dialog창 나타남</p>
</div>

## otherpage.dart
<div>
	<img width="300" alt="hobby" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/b09b79cd-e6b9-438f-b9fb-20de3f9c4327">
	<p>video_player package 사용, 영상 클릭 시 재생 / 일시정지</p>
	<p>unicon package 사용, 아이콘 삽입, 버튼 클릭 시 sqflite.dart페이지로 이동</p>
	<p>assets_audio_player package 사용, 오디오 재생 / 일시정지 / 정지</p>
	<p>css_colors package 사용, 배경색 베이지로 변경</p>
</div>

### sqflite.dart, sql_helper.dart
<div>
	<img width="300" alt="hobby" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/6cef9360-64fc-4997-9209-c55c441a49d1"><img width="300" alt="hobby" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/d5f4dd23-ff0f-4739-b9f8-740ee39f71a0"><img width="300" alt="hobby" src="https://github.com/ks2019775068/HighProgramming/assets/80227900/d4e90a7e-5404-4616-96fc-f8f45452b621">
	<p>plus버튼 클릭 시 data 추가</p>
	<p>내용 입력 후 create now 버튼 클릭</p>
	<p>data가 추가된 것을 확인할 수 있음. 수정 및 삭제도 가능</p>
</div>

## 사용한 package와 API
1.   import 'package:url_launcher/url_launcher.dart';
2.   import 'package:unicons/unicons.dart';
3.   import 'package:fluttertoast/fluttertoast.dart';
4.   import 'package:google_maps_flutter/google_maps_flutter.dart';
5.   import 'package:slider_button/slider_button.dart';
6.   import 'package:flutter_dialogs/flutter_dialogs.dart';
7.   import 'package:video_player/video_player.dart';
8.   import 'package:carousel_slider/carousel_slider.dart';
9.   import 'package:css_colors/css_colors.dart';
10. import 'package:assets_audio_player/assets_audio_player.dart';
 
● Goolge Map API

## 실행영상 링크
https://youtu.be/hq5OMAnAV_U
