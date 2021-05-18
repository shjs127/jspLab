<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | ì¡°ì ë·ì»´</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="../../bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					조선 닷컴 <small>it all starts here</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Examples</a></li>
					<li class="active">조선 닷컴</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Title</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse" data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove" data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
					
					<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		//변수 g에 크로스 도메인의 데이터를 가져올 수 있도록 구글 주소를 저장하였습니다.
		//var g="https://ajax.googleapis.com/ajax/services/feed/load?v=2.0&num=10&callback=?&q=";
		var g = "https://api.rss2json.com/v1/api.json?rss_url=";

		$("#news_wrap h2 a").on(
				"click",
				function(e) {
					e.preventDefault(); //<a> 태그에 링크를 차단하였습니다.
					$("#news_wrap h2 a").removeClass("on"); //<a>에 "on" class를 삭제합니다.
					$(this).addClass("on"); //클릭한 <a>에 class="on"을 생성합니다.
					$.ajax({
						url : g + $(this).attr("href"), //요청할 데이터 경로.
						dataType : "json", //요청할 데이터에 타입.
						success : function(data) { //성공적으로 요청했왔을 때...
							//obj = JSONtoString(data);
							var obj = JSON.stringify(data);
							alert(obj);

							$("#news_list").empty(); //<ul>에 하위 요소를 모두 제거합니다.
							//console.log(data.responseData.feed.entries);

							//$.each(data.responseData.feed.entries,function(i, d){
							$.each(data.items, function(i, d) {
								if (i == 5)
									return false;
								var title = d["title"]; //title 키의 값을 가져옵니다.
								//var date=new Date(d["publishedDate"]); //뉴스 작성 날짜 객체 생성
								var date = new Date(d["pubDate"]); //뉴스 작성 날짜 객체 생성
								//작성한 년-월-일 형식으로 변수 m에 저장합니다.
								var m = date.getFullYear() + "-"
										+ (date.getMonth() + 1) + "-"
										+ date.getDate();
								var lk = d["link"];
								//앞서 구해온 데이터를 이용해 정보 목록 태그를 생성합니다.
								$("#news_list").append(
										'<li><a href="'+lk+'" target="_blank">'
												+ title + '</a> <span>' + m
												+ '</span></li>');
							}); // “$.each” 메서드에 종료
						} // “success: function”에 종료
					}); // $.ajax() 메서드에 종료
				}); // 이벤트 on 메서드에 종료

		$("#news_wrap h2 a").eq(0).click(); //최초 첫 번째 탭 버튼을 강제로 클릭시킵니다.
	});
</script>
<style type="text/css">
/*기본 세팅*/
* {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
}

body {
	font: 12px Margun Gothic, "맑은고딕", gulim, "굴림", sans-serif;
	color: #333;
	padding-top: 20px;
}

h1, h2, h3, h4, h5, h6 {
	font-size: 100%;
	font-weight: normal;
}

a {
	color: #333;
	text-decoration: none;
	outline: none;
}

h1 {
	font-size: 2em;
	text-align: center;
	margin-bottom: 10px;
	color: #c00;
}

/*탭 메뉴 디자인*/
#news_wrap {
	width: 380px;
	margin: 0 auto;
	background: #FFF url("images/rss_bg.gif") 0 0 repeat-x;
}

#news_wrap li {
	height: 25px;
	line-height: 25px;
	position: relative;
}

#news_wrap span {
	position: absolute;
	top: 0;
	right: 3px;
}

#news_wrap li a {
	display: block;
	width: 210px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	padding-left: 15px;
	background: url("images/bullet.gif") 5px 10px no-repeat;
}

#news_wrap h2 {
	float: left;
	padding-right: 3px;
	margin-bottom: 10px;
}

#news_list {
	clear: both;
}

/*비활성화 탭 버튼 모양*/
#news_wrap h2 a {
	display: inline-block;
	padding: 8px 10px;
	border: 1px solid #aaa;
	border-bottom: none;
	border-radius: 5px 5px 0 0;
	background: #ccc;
}
/*비활성화 탭 버튼 모양*/
#news_wrap h2 a.on {
	background-color: #fff;
	font-weight: bold;
}
</style>
</head>
<body>
	<h1>조선닷컴</h1>
	<div id="news_wrap">
		<h2>
			<!-- 초기에 첫 번째 버튼에만 class="on"이 포함되어 있습니다. -->
			<a href="http://myhome.chosun.com/rss/www_section_rss.xml" class="on">
				오늘의 주요뉴스</a>
		</h2>
		<h2>
			<a href="http://www.chosun.com/site/data/rss/ent.xml">엔터테이먼트</a>
		</h2>
		<h2>
			<a href="http://newsplus.chosun.com/hitdata/xml/se/sports/index.xml">스포츠</a>
		</h2>
		<h2>
			<a href="https://rss.donga.com/total.xml">동아일보</a>
		</h2>
		<ul id="news_list">
		</ul>
	</div>
</body>
					</div>
					<!-- /.box-body -->
					<div class="box-footer">Footer</div>
					<!-- /.box-footer-->
				</div>
				<!-- /.box -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		
	<!-- jQuery 3 -->
	<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>
	<script>
		$(document).ready(function() {
			$('.sidebar-menu').tree()
		})
	</script>
</body>
</html>
<%@ include file="../include/footer.jspf" %>