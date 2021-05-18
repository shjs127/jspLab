<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | ê°¤ë¬ë¦¬íì´ì§</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        ê°¤ë¬ë¦¬
        <small>ì¬ê¸°ì ë¤ê°ì´ ëì</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h2 class="box-title">ì   ëª©</h2>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          <style type="text/css">
* {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #000;
}

#gallery {
	width: auto;
	margin: 30px auto;
	border: 1px solid #999;
	box-shadow: 0 5px 5px rgba(0, 0, 0, 0.3);
}

#gallery h1 {
	text-align: center;
}

#gallery img {
	border: 1px solid #666;
}

#photo {
	text-align: center;
}

#gallery ul {
	width: 800px;
	margin: 0 auto;
	overflow: hidden;
}

#photo_list ul li {
	width: 100px;
	float: left;
	text-align: center;
}

#photo_list {
	width: 300px;
	margin: 10px auto;
	/*border:1px dashed #000;*/
	overflow: hidden;
}

.btn_wrap {
	text-align: center;
}

.btn_wrap a {
	font-weight: bold;
}
</style>
<script type="text/javascript">
	//<![CDATA[
	window.onload = function() {

		var list_zone=document.getElementById("inner_list");
		var list_a=list_zone.getElementsByTagName("a");
		
		for(var i=0;i<list_a.length;i++){
			list_a[i].onclick=function(){
				var ph=document.getElementById("photo").children[0];
				ph.src=this.href;
				return false;  //<a> ë¥¼ í´ë¦­íì ë ë§í¬ë¡ ì´ëíë ê²ì ë§ëë¤.
			}
		}
		
		   var b_btn=document.getElementById("next_btn");
		   var m_num=0;
		   b_btn.onclick=function(){
		   if(m_num>=list_a.length-3) return false;
		   m_num++;
		   list_zone.style.marginLeft=-100*m_num+"px";
		  
		    return false; // <a>ë¥¼ í´ë¦­íì ë ë§í¬ê° ëì§ ìëë¡ í©ëë¤.
		  }
		  
		   /*ì´ì  ë²í¼ì í´ë¦­íì ë ë§ë¤ <ul>ì´ 100pxë§í¼
		      ì°ì¸¡ì¼ë¡ ì´ëí´ì¼ í©ëë¤.*/
		   var n_btn=document.getElementById("before_btn");
		  
		   n_btn.onclick=function(){
		   if(m_num<=0) return false;
		   m_num--;
		   list_zone.style.marginLeft=-100*m_num+"px";
		  
		    return false; // <a>ë¥¼ í´ë¦­íì ë ë§í¬ê° ëì§ ìëë¡ í©ëë¤.
		  }
	}
	//]]>
</script>
<body>
	<div id="gallery">
		<h1>갤러리</h1>
		<p id="photo">
			<img src="images/pic_1.jpg" width="320" alt="" />
		</p>
		<div id="photo_list">
			<ul id="inner_list">
				<li><a href="images/pic_1.jpg"> <img
						src="images/pic_t1.jpg" alt="ì¬ì§1" /></a></li>
				<li><a href="images/pic_2.jpg"> <img
						src="images/pic_t2.jpg" alt="ì¬ì§2" /></a></li>
				<li><a href="images/pic_3.jpg"> <img
						src="images/pic_t3.jpg" alt="ì¬ì§3" /></a></li>
				<li><a href="images/pic_4.jpg"> <img
						src="images/pic_t4.jpg" alt="ì¬ì§4" /></a></li>
				<li><a href="images/pic_5.jpg"> <img
						src="images/pic_t5.jpg" alt="ì¬ì§5" /></a></li>
				<li><a href="images/pic_6.jpg"> <img
						src="images/pic_t6.jpg" alt="ì¬ì§6" /></a></li>
				<li><a href="images/pic_7.jpg"> <img
						src="images/pic_t7.jpg" alt="ì¬ì§7" /></a></li>
				<li><a href="images/pic_8.jpg"> <img
						src="images/pic_t8.jpg" alt="ì¬ì§8" /></a></li>
			</ul>
		</div>
		<p class="btn_wrap">
			<a href="#" id="before_btn">&lt;</a> <a href="#" id="next_btn">&gt;</a>
		</p>
	</div>
</body>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
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
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
</body>
</html>
<%@ include file="../include/footer.jspf" %>