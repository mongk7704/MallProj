<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.proj.mall.Dto.Item" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/login.css" type="text/css" media="screen">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js" type="text/javascript"></script>
    
    
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
        .contents{
        margin-top:400px;}
        img{
        max-width:100%;}
        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
        padding:20px;}
    </style>
</head>
<body>
<%
Item item=(Item)request.getAttribute("item");
System.out.println(item.getId());
String path="image/detail/"+item.getType()+"/"+item.getId()+".jpg";
String purchase="purchase?type="+item.getType()+"&id="+item.getId()+"&method=normal";
String cart="cart?type="+item.getType()+"&id="+item.getId();
Object s=session.getAttribute("login");
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
    <div class="contents">
    	<div class="container">
    	<div class="row">
    	<div class="col-md-8">
    	<img alt="item" src="<%=path %>">
    	</div>
    	<div class="col-md-4">
    	<div class="info-top">
    	<h2>롱 울 코트</h2>
    	<h4>M / L</h4>
    	</div>
    	<table class="table ">
    	
    	<tr>
    	<th style="width:30%;text-align:left" >판매가</td>
    	<td>${item.price}</td>
    	</tr>
    	<tr>
    	<th style="width:30%;text-align:left">적립금</td>
    	<td>120원</td>
    	</tr>
    	
    	</table>
    	<table class="table ">
    	
    	<tr>
    	<th style="width:30%;text-align:left" >색상</td>
    	<td>${item.itemColor}</td>
    	</tr>
    	<tr>
    	<th style="width:30%;text-align:left">사이즈</td>
    	<td>${item.itemSize }</td>
    	</tr>
    	
    	</table>
    	<div >
    	
    	<a href="<%=purchase %>" id="purchase_btn" class="btn btn-success" style="width:100%" >구매하기</a>
    	<script type="text/javascript">
    		$('#purchase_btn').on('click',function (event){
    			var login=<%=s %>;
    			if (login==null)
    				{
    				console.log("login 필요");
    				alert("login이 필요합니다");
    				return false;}
    	
    			else{
    				
    				return true;
    				
    			}
    				
    			})
			
		</script>
    	<a href="<%=cart %>" class="btn btn-info" style="width:100%;margin-top:10px;">장바구니</a>
    	
    	</div>
    	
    	
    	
    	</div>
    	</div>
    	</div>
    </div>
</body>
</html>