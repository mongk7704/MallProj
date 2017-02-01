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
        margin-top:70px;}
        img{
        margin-left:150px;
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

<%@ include file="fix_top.jsp"%>
<input type="hidden" value="${sessionScope.login}" id="log" >
    <div class="contents">
    	<div class="container">
    	<div class="row">
    	<div class="col-md-8">
    	<img alt="item" src="<%=item.getPath() %>">
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
    	
    	<a href="<%=cart %>" id="cart_btn" class="btn btn-info" style="width:100%;margin-top:10px;">장바구니</a>
    	
    	</div>
    	
    	
    	
    	</div>
    	</div>
    	</div>
    </div>
    <script type="text/javascript">
    		$('#purchase_btn').on('click',function (event){
    			var login=$('#log').val();
    			if (login=="")
    				{
    				console.log("login 필요");
    				alert("login이 필요합니다");
    				return false;}
    	
    			else{
    				
    				return true;
    				
    			}
    				
    			});
    			$('#cart_btn').on('click',function(event){
    				console.log("장바구니");
    				alert("해당 상품을 장바구니에 담았습니다.");
    				return true;
    				
    			});
			
		</script>
</body>
</html>