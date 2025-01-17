<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${ctx }/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx }/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${ctx }/static/bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="${ctx }/static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/header.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/main2.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/manage.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/footer.css">
    <script src="${ctx }/static/js/header.js" charset="utf-8"></script>
    <script src="${ctx }/static/js/Api.js"></script>
    <script src="${ctx }/static/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${ctx }/static/layui/css/layui.css" media="all">
    <title>cinema</title>
</head>
<body>
	<div class="layui-layout layui-layout-admin" style="width:100%">
		<div class="layui-header">
		    <div class="layui-logo">Cinema ticketing system</div>
			<div class="nav">
				<ul class="layui-nav layui-layout-left">
			      <li class="layui-nav-item"><a href="${ctx }/jsp/mainPage.jsp">Home page</a></li>
			      <li class="layui-nav-item"><a href="${ctx }/jsp/movieList.jsp">Movie</a></li>
			      <li class="layui-nav-item">
			        <input type="text" placeholder="Search movies" id="searchMovie" class="layui-input" style="height: 30px;
    padding-left: 12px;
    background-color: #424652;
    background-color: rgba(255,255,255,.05);
    border: none 0;
    color: #fff;
    color: rgba(255,255,255,.5);
    font-size: 12px;"> 
			      </li>
			    </ul>
			</div>		    
		    
		    <ul class="layui-nav layui-layout-right">
		      <li class="layui-nav-item  header-li">
		        <!-- <a href="javascript:;">
		          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
		          	贤心
		        </a>
		        <dl class="layui-nav-child">
		        </dl>  -->
		      </li>
		    </ul>
	  </div>
  </div>
 	<!-- 导航栏 -->
     <%-- <div class="header navbar navbar-fixed-top">
        <div class="header-top">
            <div class="header-inner">
                <div class="nav">
                    <ul>
                        <li><a href="${ctx }/jsp/mainPage.jsp">首页</a></li>
                        <li class="active"><a href="${ctx }/jsp/movieList.jsp">电影</a></li>
                    </ul>
                </div>
                <div class="user-info">
                <div class="user-avatar J-login">
                    <ul class="layui-nav" style="background-color: #fff;">
                        <li class="layui-nav-item header-li" style="width:40px;" lay-unselect="" style="width: 40px;">
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        </div>
    </div> --%>

    <script>
        var clientHeight = document.documentElement.clientHeight;
        window.onload = function(){
            //initHeader1();
        }
        $(function(){  
        	$('#searchMovie').bind('keypress',function(event){  
  		      if(event.keyCode == "13"){
  		    	  var value=$("#searchMovie").val();
  		    		window.location.href="${ctx}/jsp/movieList.jsp?searchMovie="+value;
         		 }  
             })

        });  
    </script>
</body>
</html>