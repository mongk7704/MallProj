<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        html{
            width: 100%;
            height: 100%;
        }
        body > div.fix_top{
            position: fixed;
            top: 0;
            width: 100%;
            height: 250px;
            z-index: 105;
        }
        
        .jumbotron{
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .navbar {
            font-size: 20px;
        }
        
        .navbar {
            background-color: white;
            border-color: white;
        }
        
        .jumbotron {
            background-color: white;
        }
        
        .navbar .navbar-brand {
            color: black;
        }
        
        .navbar .navbar-nav>li>a {
            color: black;
        }
        
        .container {
            width: 1200px;
            margin:0 auto;
        }
        .contents img{
        width:300px;
        height:300.4px;
        }
        .row{
        margin-bottom:100px;
        }
    </style>
</head>
<body>
<%String s= request.getParameter("type"); 
String path="image/"+s+"/"	;

%>
	<div class="fix_top" >
        <div class="jumbotron" style="margin-bottom:0; background-color:white;">
            <div class="container text-center">
                <h1><a href="main" style="color:black">XXX</a></h1>
                <p>Mission, Vission & Values</p>
            </div>
        </div>
        <nav class="navbar navbar" style="margin-bottom:0;">
            <div class="container-fluid">
                <div class="nav-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" href="main.html">XXX</a> </div>
                <div id="myNavbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Best</a></li>
                        <li><a href="#">New</a></li>
                        <li><a href="list?type=outer">Outer</a></li>
                        <li><a href="list?type=inner">Top</a></li>
                        <li><a href="list?type=pants">Pants</a></li>
                    </ul>
                    <c:if test="${sessionScope.login==null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="cartlist"><span><img src="image/icons/cart-icon.png"></span>Cart</a></li>
                        <li><a href="resistration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
					</c:if>
					<c:if test="${sessionScope.login!=null}">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="cartlist"><span><img src="image/icons/cart-icon.png"></span>Cart</a></li>
                        <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                    </c:if>
                </div>
            </div>
        </nav>
    </div>
	<div class="contents" style="width:1200px; margin:300px auto 0; z-index:99;">
		<div class="container-fluid text-center">
			<div class="row">
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=1" %>">
				<img src="<%=path+"1.jpg" %>"  alt="item1" width="100%"><p>item1</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=2" %>">
				<img src="<%=path+"2.jpg" %>"  alt="item1" width="100%"><p>item2</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=3" %>">
				<img src="<%=path+"3.jpg" %>"  alt="item1" width="100%"><p>item3</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=4" %>">
				<img src="<%=path+"4.jpg" %>"  alt="item1" width="100%"><p>item4</p> </a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=5" %>">
				<img src="<%=path+"5.jpg" %>"  alt="item1" width="100%"><p>item5</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=6" %>">
				<img src="<%=path+"6.jpg" %>"  alt="item1" width="100%"><p>item6</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=7" %>">
				<img src="<%=path+"7.jpg" %>"  alt="item1" width="100%"><p>item7</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=8" %>">
				<img src="<%=path+"8.jpg" %>"  alt="item1" width="100%"><p>item8</p> </a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=9" %>">
				<img src="<%=path+"9.jpg" %>"  alt="item1" width="100%"><p>item9</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=10" %>">
				<img src="<%=path+"10.jpg" %>"  alt="item1" width="100%"><p>item10</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=11" %>">
				<img src="<%=path+"11.jpg" %>"  alt="item1" width="100%"><p>item11</p> </a>
				</div>
				<div class="col-md-3">
				<a href="<%="details?type="+s+"&id=12" %>">
				<img src="<%=path+"12.jpg" %>"  alt="item1" width="100%"><p>item12</p> </a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>