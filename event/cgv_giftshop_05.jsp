<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
<style>
*{
	margin: 0;
	padding: 0;
	font-size: 0;
	border: none;
}
/* html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
} */
body, button, input{
	font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 300;
}
input, select, img {
    vertical-align: middle;
}
ol,ul{
	list-style: none;
}
a {
    color: inherit;
    text-decoration: none;
}
span{
	font-size: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
	word-break: break-all;
}
select{
	line-height: 27px;
    height: 29px;
    padding: 3px 5px;
    border: 1px solid #b4b3aa;
}

option{
	font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
optgroup{
	font-weight: bolder;
    display: block;
}
#container{
	width: 100%;
	background-color: #fdfcf0;
}
#cgvpage{
	position: relative;
	width: 100%;
	min-width: 980px;
	background: #fdfcf0;
}

.content{
	position: relative;
    width: 100%;
    margin: 0 auto;
    clear: both;
    background: #fff;
    padding-bottom: 50px;
}
.longmiddle_bar{
	width: 100%;
    background-color: #f1f0e5;
    border-bottom: 1px solid #cacac0;
}
.longmiddle_nav{
	clear: both;
	position: relative;
    width: 980px;
    height: 28px;
    margin: 0 auto;
}
.nav_home{
	position: relative;
	clear: both;
}
.nav_home>ul>li:first-child {
	margin-left: 0;
    padding-left: 0;
    background: none;
}
.nav_home>ul>li:last-child{
	color: #222;
    font-size: 12px;
    text-decoration: underline;
    line-height: 28px;
    font-weight: 500;
}
.nav_home>ul>li{
	margin-left: 12px;
    padding-left: 20px;
    background: url(https://img.cgv.co.kr/R2014/images/common/ico/ico_arrow.png) no-repeat 0 50%;
    font-size: 12px;
    float: left;
}
.nav_home>ul>li>a{
	display: block;
    color: #222;
    font-size: 12px;
    line-height: 28px;
}
.nav_home>ul>li>a>img{
	margin-top: 5px;
}
.nav_special{
	clear: both;
	display: block;
	margin-bottom: 15px;
	overflow: hidden;
    position: absolute;
    top: 0;
    right: 0;
}
.nav_special>ul>li:first-child {
	border-left: 1px solid #acaca3;
}
.nav_special>ul>li{
	padding: 0 10px;
    border-right: 1px solid #acaca3;
    float: left;
}
.nav_special>ul>li>a{
	display: block;
	color: #666;
    font-weight: 500;
    font-size: 11px;
    text-align: center;
    line-height: 28px;
}
.nav_special>ul>li>a.specialclub{
	background: url(https://img.cgv.co.kr/R2014/images/common/ico/ico_club_service.png) no-repeat 100% 50%;
    padding-right: 25px;
    text-align: left;
}
.category_wrap{
	position: relative;
    margin-top: -1px;
    background-color: #fff;
    border-top: 1px solid #ccc;
    z-index: 1;
    border-bottom:1px solid #ccc;
}
.category_wrap.fixed_top {
    position: fixed;
    top: 0;
    width: 100%;
    margin-top: 0;
    background-color: #fff;
    z-index: 9;
}
.category_contents_wrap{
	overflow: hidden;
    position: relative;
    width: 980px;
    min-width: 980px;
    margin: 0 auto;
    padding: 18px 0 0;
    background-color: #fff;
}
.category_content{
	float: left;
    position: relative;
    overflow: hidden;
    max-width: 740px;
    line-height: 26px;
    padding-left: 0px;
}
.giftstore_logo{
	display: none;
    position: absolute;
    left: 0;
    padding-left: 4px;
    padding-right: 18px;
    background-color: #fff;
    z-index: 2;
}
.giftstore_logo>a{
	display: block;
    width: 76px;
    height: 22px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_store_logo.png) left top scroll no-repeat;
}
.category_content.fixed_top{
	padding-left: 110px;
    max-width: 630px;
    transition: 0.3s;
}
.category_content{
	max-width:740px;
	padding-left: 0;
}
.category_content>li{
	float: left;
    padding-left: 8px;
    padding-right: 16px;
    padding-bottom: 14px;
}
.category_content li.active a:before {
    content: '';
    position: absolute;
    left: 0;
    /* bottom: -19px; */
    top: 25px;
    width: 100%;
    height: 3px;
    background-color: #000;
    z-index: 2;
}
.category_content li.active a{
	color: #000;
}
.category_content li.giftstore_logo + li {
    padding-left: 0;
    z-index: 1;
 }
.category_content li a {
    position: relative;
    padding: 0 6px;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 16px;
    color: #6a6f77;
}
.category_content li:last-child {
    padding-right: 0;
}
.cart_content {
    position: absolute;
    right: 0;
    top: 50%;
    /* float: right; */
    overflow: hidden;
    line-height: 26px;
    margin-top: -13px;
    border-left: 1px solid #ccc;
}
.cart_content li {
    float: left;
    padding-left: 12px;
}
.cart_content li:first-child {
    padding-left: 23px;
}
.category_product_list_wrap {
    width: 980px;
    margin: 57px auto 0;
}
.category_wrap.fixed_top + div {
    padding-top: 60px;
}
.category_product_list_title {
    display: block;
    padding-bottom: 13px;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 28px;
    color: #000;
    border-bottom: 1px solid #999;
}
.category_product_list_title span {
    font-weight: 300;
    font-size: 20px;
    padding-left: 11px;
}
.com_list_style {
    overflow: hidden;
}
.category_product_list_title + .com_list_style {
    padding: 45px 40px;
}
.com_list_style li {
    float: left;
    position: relative;
}
.category_product_list_title + .com_list_style li {
    width: 270px;
    margin-left: 45px;
    margin-bottom: 50px;
}
.category_product_list_title + .com_list_style li:nth-child(3n + 1) {
    clear: both;
    margin-left: 0;
}
.com_list_style li .btn_category_product {
    display: block;
}
.com_list_style li .btn_category_product .com_list_img_wrap {
    display: block;
    position: relative;
    z-index: 1;
}
.btn_category_product > .com_list_img_wrap > .com_list_box{
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: black;
	/* border: 1px solid red; */
	opacity: 0;
	z-index: 2;
	overflow: hidden;
	transition:opacity 0.5s;
}
.com_list_style li .btn_category_product .com_list_img_wrap img {
    width: 100%;
    z-index: 1;
    
}
.com_list_style li .btn_category_product .com_list_text_wrap {
    display: block;
    padding-bottom: 20px;
    font-family: 'CJONLYONENEW';
}
.com_list_text_title {
    display: block;
    overflow: hidden;
    margin-top: 20px;
    font-weight: 500;
    font-size: 18px;
    color: #000;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.com_list_text_name {
    display: block;
    overflow: hidden;
    margin-top: 5px;
    font-weight: 400;
    font-size: 16px;
    color: #000;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.com_list_sale_price_wrap {
    display: block;
    margin-top: 15px;
    font-size: 0;
    letter-spacing: -0.25px;
    text-align: left;
}
.com_list_sale_price_wrap .store_deatail_source_price {
    display: inline-block;
    padding: 0 8px 0 0;
    font-weight: 500;
    font-size: 17px;
    color: #000;
}
.com_list_sale_price_wrap .store_deatail_source_price:after {
    content: '원';
}
.circle_btn {
    display: none;
    border-radius: 30px;
    position: absolute;
    width: 50px;
    height: 50px;
    background: #8C8C8C;
    opacity: .5;
    z-index: 1;
}
.circle_btn:hover {
    background: black;
}
.com_list_style li .btn_category_product ~ a span{
	position: absolute;
    font-size: 17px;
    font-weight: bold;
    width: 100%;
    height: auto;
    top: 50%;
    margin-top: -20px;
    text-align: center;
    color: #fff;
}
.btn_category_product_cart {
    left: 50px;
}
.btn_category_product_gift {
    left: 110px;
}
.btn_category_product_buy {
    left: 170px;
}
.btn_category_product ~ a {
    top: 110px;
}
</style>
<script>
$(document).ready(function (){
	var giftlogo = $(".category_wrap").offset();
	$(window).scroll(function(){
		if($(document).scrollTop() > giftlogo.top){
			$(".giftstore_logo").css("display","list-item");
			$(".category_wrap, .category_content").addClass("fixed_top");
		}else{
			$(".giftstore_logo").css("display","none");
			$(".category_wrap, .category_content").removeClass("fixed_top");
		}
	});//scroll
	
	$(".com_list_style").find("li").mouseover(function(){
		$(this).find(".com_list_box").css("opacity", ".3");
		$(this).find(".circle_btn").css("display","block");
	});
	
	var $list = $(".com_list_style").find("li").on("mouseover",function(){
		var idx = $(this).index();
		console.log(idx);
		$(".com_list_style").children().eq(idx).mouseleave(function(){
			$(this).find(".com_list_box").css("opacity", "0");
			$(this).find(".circle_btn").css("display","none");
		});
	});
});
</script>
<script>
 $(document).ready(function(){
      $('.bxslider').bxSlider({
          minSlides: 3,
          maxSlides: 3,
          moveSlides: 1,
          slideWidth: 303,
          slideMargin: 2,
          touchEnabled : (navigator.maxTouchPoints > 0)
      });
 });
</script>
</head>
<body>
<div id="cgvpage">
	<jsp:include page="/WEB-INF/views/cgv/layout/header2.jsp"></jsp:include>
	<div id="container">
		<div class="longmiddle_bar">
			<div class="longmiddle_nav">
				<div class="nav_home">
					<ul>
						<li>
							<a href="https://www.cgv.co.kr/">
								<img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png" alt="" />
							</a>
						</li>
						<li>
							<a href="cgv_event_main.do">이벤트&컬쳐</a>
						</li>
						<li>
							<a href="cgv_giftshop_main.do">기프트샵</a>
						</li>
						<li>
							<a href="#">음료</a>
						</li>
					</ul>
				</div><!-- nav_home -->
				<div class="nav_special">
					<ul>
						<li>
							<a href="http://www.cgv.co.kr/user/vip-lounge/">VIP LOUNGE</a>
						</li>
						<li>
							<a href="http://www.cgv.co.kr/user/memberShip/ClubService.aspx" class="specialclub">Club 서비스</a>
						</li>
					</ul>
				</div><!-- nav_special -->
			</div><!-- longmiddle_nav -->
		</div><!-- longmiddle_bar -->
		<div class="content">
			<div class="category_wrap">
	 			<div class="category_contents_wrap">
	     			<ul class="category_content" >
	         			<li class="giftstore_logo" style="display: none;"><a href="/culture-event/popcorn-store/default.aspx"></a></li>
						<li id="cm2" name="categorymenu" class=""><a href="cgv_giftshop_01.do">영화관람권</a></li>
						<li id="cm3" name="categorymenu" class=""><a href="cgv_giftshop_02.do">기프트카드</a></li>
						<li id="cm4" name="categorymenu" class=""><a href="cgv_giftshop_03.do">콤보</a></li>
						<li id="cm5" name="categorymenu" class=""><a href="cgv_giftshop_04.do">팝콘</a></li>
						<li id="cm6" name="categorymenu" class="active"><a href="cgv_giftshop_05.do">음료</a></li>
						<li id="cm7" name="categorymenu" class=""><a href="cgv_giftshop_06.do">스낵</a></li>
						<li id="cm10" name="categorymenu" class=""><a href="cgv_giftshop_07.do">플레이존</a></li>
						<li><a href="cgv_giftshop_08.do">상품권소개</a></li>   
					</ul>
	     			<ul class="cart_content">
	         			<li><a href="#" >내 기프트콘</a><span id="giftconcnt">0</span></li>   
	         		    <li><a href="#" >장바구니</a><span id="cartviewcnt">0</span></li>  
	         		</ul>
	 			</div>
			</div><!-- category_wrap -->
			<div class="category_product_list_wrap">
				<strong class="category_product_list_title">음료<span>탄산음료부터 에이드까지, 마시는 즐거움!</span></strong>
				<ul class="com_list_style">
					<c:forEach var="drink" items="${drink }">
						<li class="">
							<a href="cgv_giftshop_detail.do?giftcode=${drink.gift_code }" class="btn_category_product">
								<span class="com_list_img_wrap">
									<span class="com_list_box"></span>
									<img src="../${drink.gift_image }" alt="${drink.gift_name }">
								</span>
									<span class="com_list_text_wrap"> 
									<span class="com_list_text_title">${drink.gift_name }</span> 
									<span class="com_list_text_name">${drink.gift_detail }</span> 
									<span class="com_list_sale_price_wrap"> 
										<span class="store_deatail_source_price">${drink.gift_payment }</span>
									</span>
								</span>
							</a> 
							<a href="cgv_giftshop_cart.do?giftcode=${drink.gift_code}" class="btn_category_product_cart circle_btn"><span>장바<br>구니</span></a> 
							<a href="cgv_giftshop_cart.do?giftcode=${drink.gift_code}" class="btn_category_product_cart circle_btn"><span>장바<br>구니</span></a> 
							<a href="#" class="btn_category_product_gift circle_btn"><span>선물<br>하기</span></a> 
							<a href="#" class="btn_category_product_gift circle_btn"><span>선물<br>하기</span></a> 
							<a href="#" class="btn_category_product_buy circle_btn"><span>구매<br>하기</span></a>
							<a href="#" class="btn_category_product_buy circle_btn"><span>구매<br>하기</span></a>
						</li>
					</c:forEach>
				</ul><!-- com_list_style -->
			</div><!-- category_product_list_wrap -->
		</div><!-- content -->
	</div><!-- container -->	
	<jsp:include page="/WEB-INF/views/cgv/layout/foot.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/cgv/layout/asideBanner.jsp"></jsp:include>
</div>
</body>
</html>