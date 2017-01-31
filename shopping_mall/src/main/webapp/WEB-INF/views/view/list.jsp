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
	<%@ include file="fix_top.jsp"%>
	<div class="contents" style="width:1200px; margin:70px auto 0; z-index:99;">
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