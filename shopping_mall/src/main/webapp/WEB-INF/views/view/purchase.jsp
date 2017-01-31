<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.proj.mall.Dto.Item" %>
    <%@page import="com.proj.mall.command.Cart" %>
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
        div{display:block;}
        
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
            margin:10px auto;
        }
        .contents{
        margin-top:20px;}
        .ordertitle{
        height:38px;
        margin:0;
        padding:0 0 0 9px;
        text-align:center;
        border: 1px solid #d7d5d5;
        background-color:#f6f6f6;
        }
        .ordertitle h3{
     
        }
        .ordertitle h3{
        line-height: 38px;
        font-size: 12px;
        margin:0;
        font-weight: bold;}
        .boardlist #boardtable td{
        vertical-align: middle;
        }
        .boardlist td{
        text-align: center;
        
        }
        .boardlist .thumb{
        width:120px;
        
        padding:8px 0 5px;
        }
        .boardlist td img{
        width:100px;
        height:auto;}
        .boardlist .detail{
        width:auto;}
        .boardlist .price{
        width:100px;}
        .boardlist .amount{
        width:100px;
        }
        .boardlist .transfer{
        width:100px;
        }
        .boardlist .totalfee{
        width:100px;}
        th{
        background-color: #fbfafa;
        width:200px;
        text-align: center;
        }
        textarea{
        width:750px;height:45px;border:1px solid #d5d5d5;padding:5px 6px}
        .container .radioInput{
        margin-right:5px;
        display: inline;}
        #type2{
        display:none;
        height:140px;
        
        padding:0 0 0 9px;
        text-align:center;
        border: 1px solid #d7d5d5;
        background-color:#f6f6f6;}
        
    </style>
</head>
<body>
<%
Item item=(Item)request.getAttribute("item");
String path=null,purchase=null;
int totalMoney;
Cart items=(Cart)session.getAttribute("cart");
if(item!=null){
 path="image/detail/"+item.getType()+"/"+item.getId()+".jpg";
purchase="purchase?type="+item.getType()+"&id="+item.getId();
 }
%>
<div>
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
    </div>
<div class="titlename">
<h3 style="text-align: center">주문서 작성</h3>
</div>
<form name="myform" action="purchase_confirm" method="post" onsubmit="return final_check()">
<div class="contents">
	<div class="container">
		<div class="orderlist">
		<div class="ordertitle">
			<h3 >주문내역</h3>
		</div>
		
		<div class="boardlist">
			<table class="table table-striped table-bordered" id="boardtable">
				<tr>
				<td>선택</td><td>이미지</td><td>상품정보</td><td>판매가</td><td>수량</td><td>배송비</td><td>합계</td></tr>
				<c:if test="${param.method eq 'normal'}" >
				<tr>
				<td class="choose"><input type="checkbox" name="cartCk" value="${status.index}"></td>				
				<td class="thumb"><img alt="item" src="<%=path %>"></td>
				<td class="detail"><strong>${item.itemName }</strong><br> <div style="margin:9px 0 0">SIZE  ${item.itemSize }</div></td>
				<td class="price"><strong>${item.price}원</strong></td>
				<td class="amount"><strong>1</strong></td>
				<td class="transfer"><strong>2500원</strong></td>
				<td class="totalfee"><strong>${item.price+2500}원</strong></td>
				</tr>
				</c:if>
				<c:if test="${param.method eq 'cart'}" >
				<c:forEach var="item2" varStatus="status" items="${sessionScope.cart.itemlist }">
				<tr>
				<td class="choose"><input type="checkbox" name="cartCk" value="${status.index}" checked="checked"></td>
				<td class="thumb"><img alt="item" src="${item2.path}"></td>
				<td class="detail"><strong>${item2.itemName }</strong><br> <div style="margin:9px 0 0">SIZE  ${item.itemSize }</div></td>
				<td class="price"><strong>${item2.price}원</strong></td>
				<td class="amount"><strong>1</strong></td>
				<td class="transfer"><strong>2500원</strong></td>
				<td class="totalfee"><strong>${item2.price+2500}원</strong></td>
				</tr>
				</c:forEach>
				</c:if>
			</table>
		</div>
		</div>
	</div>
	<hr style="width:1200px;">
	<div class="container">
		<div class="orderdetail">
			<div class="titlename">
				<h3 >주문자 정보</h3>
			</div>
			<table class="table table-bordered">
				<tr>
				<th>주문자 이름</th><td class="name"><input style="width:200px;"  type="text" name="purchaserName" value="${ sessionScope.login.name}"></td>
				</tr>
				<tr>
				<th>주소</th><td class="address" ><input style="width:500px;"type="text"  name="purchaserAddress" value="${ sessionScope.login.address}"></td>
				</tr>
				<tr>
				<th>전화</th><td class="phone" ><input style="width:300px;"type="text"  name="purchaserPhone" value="${ sessionScope.login.phone}"></td>
				</tr>
				<tr>
				<th>이메일</th><td class="email" ><input style="width:400px;"type="text" name="purchaserEmail"  value="${ sessionScope.login.email}"></td>
				</tr>
				<tr>
				<th>쇼핑몰 이용약관</th><td class="rule" ><div>
				<span style="margin-right: 35px;"><label >쇼핑몰 이용에대하여 동의합니다</label></span>
				<input id="radioCheck1" type="radio" name="info_radio" value="ck1">
				<label>동의함</label>
				<input class="radioCheck" type="radio" name="info_radio" checked="checked">
				<label>동의안함</label>
				<textarea name="transfer_message">이용약관이용약관이용약관</textarea></div></td>
				</tr>
				
			</table>
		</div>
		<div class="transferdetail">
			<div class="titlename">
				<h3 >배송지 정보</h3>
			</div>
			<table class="table table-bordered">
				<tr>
				<th>받으시는 분</th><td class="transfer_name"><input style="width:200px;" class="inputCheck" type="text" name="recieverName" ></td>
				</tr>
				<tr>
				<th>배송 주소</th><td class="transfer_address" ><input style="width:500px;"type="text" class="inputCheck" name="recieverAddress" ></td>
				</tr>
				<tr>
				<th>전화</th><td class="transfer_phone" ><input style="width:300px;"type="text" class="inputCheck" name="recieverPhone"></td>
				</tr>
				<tr>
				<th>배송 메시지</th><td class="transfer_message" ><textarea name="recieverMessage"></textarea></td>
				</tr>
			</table>
		</div>
		<div class="priceinfo">
		<div>
		<h3>결제수단</h3>
		<input class="radioInput" type="radio" name="purchase_radio" value="n" checked="checked"><label style="margin-right: 30px;">무통장입금</label>
		<input class="radioInput" type="radio" name="purchase_radio" value="m" ><label>카드결제</label>
		</div>
		<div class="purchase_contents" style="padding:0 252px 0 0; overflow:hidden; margin-top:20px;">
			<div class="info_table" style="width:100%;float:left; ">
				<table class="table " id="type1" >
				<tr>
				<th>입금자 명</th><td><input type="text" name="btName"></td>
				</tr>
				<tr><th>입금은행</th><td><input type="text" name="btBank"></td></tr>
				<tr><th>계좌번호</th><td><input type="text" name="btAccountNum"></td></tr>
				</table>
				<div id="type2" >
				<h3 >카드결제</h3>
				</div>
				<div>
				<c:if test="${param.method eq 'cart'}" >
				<input type="hidden" name="method" value="cart">
				</c:if>
				<input type="hidden" name="itemId" value="${item.id}">
				<input type="hidden" name="itemType" value="${item.type}">
				<input type="hidden" name="totalMoney" value="${item.price+2500}">
				</div>
			</div>
			<div class="total" style="width:250px;float:right; margin:0 -251px 0 0;text-align:right; background:#fbfafa">
			<h3 style="margin-right:10px;">최종 결제 금액</h3>
			<c:if test="${param.method eq 'normal'}" ><h2 style="margin-right:10px">${item.price+2500}원</h2></c:if>
			<c:if test="${param.method eq 'cart'}" ><h2 style="margin-right:10px"><%=items.totalFee() +2500%>원</h2>
			<script type="text/javascript">
			var frm=document.myform;
			frm.action="purchase_cart";
			</script>
			</c:if>
			<label>결제내역을 확인하였습니다.</label><input id="radioCheck2" type="checkbox" name="purchase_check" value="ck2" >
			<button class="btn btn-info" style="width:100%" >결제하기</button>
			</div>
		</div>
		</div>
	
	</div>
	
</div>
</form>
<div class="footer" style="height:50px;">
</div>
<script type="text/javascript">

function final_check()
{
	console.log('test');
	var ck1=document.getElementById('radioCheck1');
	var ck2=document.getElementById('radioCheck2');
	var ck3=document.getElementsByClassName('inputCheck');
	if(ck1.checked==false){
		alert('약관에 동의하세요');
		return false;
	}
	else if(ck2.checked==false){
		alert('결제 내역을 확인하세요.');
		return false;
	}
	else if(!(ck3[0].value.length&&ck3[1].value.length&&ck3[2].value.length)){
		alert('배송지 정보를 확인하세요.');
		return false;
	}
	else
		return true;
	}


$('.radioInput').change(function(){
	var item=$(this).val();
	
	if(item=="n"){
		$('#type1').show();
		$('#type2').hide();
	}
	else if(item=="m"){
		$('#type2').show();
		$('#type1').hide();
	}
})
</script>
</body>

</html>