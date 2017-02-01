
<div>
    <div class="fix_top" >
        <div class="jumbotron" style="margin-bottom:0; background-color:white;">
            <div class="container text-center">
                <h1><a href="main" style="color:black">XXX</a></h1>
                <p>Mission, Vision & Values</p>
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
                        <li><a class="log" href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
					</c:if>
					<c:if test="${sessionScope.login!=null}">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="cartlist"><span><img src="image/icons/cart-icon.png"></span>Cart</a></li>
                        <li><a href="Mypage"><span class="glyphicon glyphicon-user"></span> Mypage</a></li>
                        <li><a class="log" href="logout" ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                    </c:if>
                </div>
            </div>
        </nav>
    </div>
    </div>