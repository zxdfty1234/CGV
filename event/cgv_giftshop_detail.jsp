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
dl:after, ul:after, ol:after {
    content: '';
    clear: both;
    display: block;
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
strong {
    font-weight: 500;
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
.category_product_detail_wrap {
    width: 980px;
    margin: 0 auto;
    padding-top: 63px;
}
.category_product_detail_title {
    display: block;
    padding-bottom: 8px;
    font-family: 'CJONLYONENEW';
    font-weight: 700;
    font-size: 24px;
    color: #000;
    border-bottom: 2px solid #000;
}
.category_product_detail_title span {
    font-weight: 300;
    font-size: 18px;
    padding-left: 12px;
    color: #4e88cf;
}
.category_product_detail_title span:before {
    content: '/';
    padding-right: 5px;
    color: #9197a3;
}
.category_product_detail_contents {
    padding: 36px 0;
    font-family: 'CJONLYONENEW';
    border-bottom: 2px solid #000;
}
.category_product_detail_contents .category_product_detail_contents_img_wrap {
    float: left;
    position: relative;
    width: 420px;
}
.category_product_detail_contents .category_product_detail_contents_img_wrap .bxslider {
    width: 100%;
}
.category_product_detail_contents .category_product_detail_contents_wrap {
    float: left;
    width: 500px;
    padding: 0 30px;
}
.category_product_detail_contents_wrap .category_product_detail_sale_price_wrap {
    padding: 10px 0;
    border-bottom: 1px solid #d6d6d6;
}
.category_product_detail_sale_price_wrap .store_deatail_sale_price {
    font-weight: 500;
    font-size: 22px;
    color: #000;
}
.store_deatail_sale_price:after {
    content: '원';
}
.category_product_detail_add_info {
    overflow: hidden;
    min-height: 119px;
    padding: 16px 0;
    border-bottom: 1px solid #d6d6d6;
}
.category_product_detail_add_info > dt:first-child {
    margin-top: 0;
}
.category_product_detail_add_info > dt:first-child + dd {
    margin-top: 0;
}
.category_product_detail_add_info > dt {
    clear: both;
    float: left;
    width: 82px;
    margin-top: 6px;
    font-weight: 400;
    font-size: 14px;
    color: #000;
    letter-spacing: -0.25px;
    line-height: 20px;
}
.category_product_detail_add_info > dd {
    float: right;
    width: 418px;
    margin-top: 6px;
    font-weight: 300;
    font-size: 14px;
    color: #000;
    letter-spacing: -0.25px;
    line-height: 20px;
    text-align: left;
}
.category_product_detail_add_info > dd .btn_available_viewcgv {
    color: #dc291e;
    text-decoration: underline;
}
.com_custom_checkbox_wrap {
    padding-top: 28px;
    padding-bottom: 20px;
    border-bottom: 1px solid #dad6cb;
}
.com_custom_checkbox_wrap .com_custom_checkbox_title strong {
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 16px;
    color: #000;
}
.com_custom_checkbox_wrap .com_custom_checkbox_title span {
    padding-left: 10px;
    font-weight: 400;
    font-size: 13px;
    color: #6a6f77;
}
.com_custom_checkbox_wrap .com_checkbox_list {
    overflow: hidden;
    margin-top: 10px;
}
.com_custom_checkbox_wrap .com_checkbox_list li:first-child {
    margin-left: 0;
}
.com_custom_checkbox_wrap .com_checkbox_list li {
    float: left;
    position: relative;
    width: 160px;
    margin-left: 10px;
}
.add_product_info_img {
    width: 158px;
    border: 1px solid #dddfe2;
}
.add_product_info_img img {
    width: 100%;
}
.add_product_title {
    display: block;
    margin-top: 11px;
    font-family: 'CJONLYONENEW';
    font-weight: 700;
    font-size: 14px;
    color: #373e46;
}
.add_product_subtitle {
    display: block;
    margin-top: 3px;
    margin-bottom: 10px;
    font-weight: 300;
    font-size: 13px;
    color: #5a5a5a;
}
.add_product_price {
    font-weight: 400;
    font-size: 14px;
    color: #000;
}
.add_product_sale_price:after {
    content: '원';
}
.com_custom_checkbox {
    position: absolute;
    left: 10px;
    top: 10px;
    width: 26px;
    height: 26px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_checkbox_radio.png) -51px -1px scroll no-repeat;
}
.com_form_number {
    overflow: hidden;
    padding-top: 31px;
    padding-bottom: 10px;
}
.com_custom_checkbox_wrap + .com_form_number {
    padding-top: 22px;
}
.com_form_number_title {
    display: block;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 16px;
    line-height: 22px;
    color: #000;
}
.com_form_number_subtitle {
    display: block;
    margin-bottom: 17px;
    font-size: 15px;
    line-height: 22px;
    color: #3c3c3c;
}
.com_form_number .com_btn_minus {
    float: left;
    width: 28px;
    height: 28px;
    font-size: 0;
    border: 1px solid #bdc1c8;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_minusBtn.png) center center scroll no-repeat;
}
.com_form_number .com_form_count {
    float: left;
    width: 43px;
    height: 28px;
    font-weight: 400;
    font-size: 16px;
    color: #000;
    letter-spacing: -0.25px;
    line-height: 28px;
    text-align: center;
    border-top: 1px solid #bdc1c8;
    border-bottom: 1px solid #bdc1c8;
}
.com_form_number .com_btn_plus {
    float: left;
    width: 28px;
    height: 28px;
    font-size: 0;
    border: 1px solid #bdc1c8;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_plusBtn.png) center center scroll no-repeat;
}
.com_form_number .com_total_price {
    float: right;
    font-weight: 500;
    font-size: 18px;
    color: #000;
    line-height: 30px;
}
.com_form_number .com_total_price:after {
    content: '원';
}
.category_product_detail_total_price {
    padding: 11px 0 12px;
    font-weight: 500;
    letter-spacing: -0.25px;
    text-align: right;
    border-top: 2px solid #adadad;
}
.category_product_detail_total_price .com_form_price {
    padding-top: 4px;
    font-size: 16px;
    color: #6a6f77;
}
.com_product_price {
    padding-left: 8px;
    color: #000;
}
.com_product_price:after {
    content: '원';
    font-size: 14px;
}
.com_product_add_price {
    padding-left: 8px;
    color: #000;
}
.com_product_add_price:after {
    content: '원';
    font-size: 14px;
}
.category_product_detail_total_price .com_form_total_price {
    padding: 20px 0;
    font-size: 18px;
    color: #000;
}
.com_form_total_price .com_product_total_price {
    padding-left: 18px;
    font-size: 21px;
    color: #dc291e;
}
.com_product_total_price:after {
    content: '원';
}
.category_product_detail_btn_wrap {
    overflow: hidden;
}
.category_product_detail_btn_wrap a {
    display: block;
    float: left;
    width: 245px;
    height: 60px;
    margin-left: 10px;
    font-weight: 500;
    font-size: 18px;
    color: #fff;
    line-height: 60px;
    text-align: center;
    background-color: #373e46;
}
.category_product_detail_btn_wrap a:first-child {
    margin-left: 0;
}
.category_product_detail_btn_wrap a.btn_cart {
    width: 60px;
    font-size: 0;
    background: #fb4357 url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_cartBtn.png) center center scroll no-repeat;
}
.category_product_detail_btn_wrap a.btn_cart ~ a {
    width: 210px;
}
.category_product_detail_contents:after {
    content: '';
    clear: both;
    display: block;
}
.category_product_detail_txtbox {
    margin-top: 56px;
    padding: 30px;
    font-family: 'CJONLYONENEW';
    font-size: 17px;
    color: #000;
    line-height: 24px;
    background-color: #fafafa;
    border: 1px solid #e2e2e2;
}
.category_product_detail_dlist {
    margin-top: 56px;
    padding: 32px 0;
    font-family: 'CJONLYONENEW';
    color: #000;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
.category_product_detail_dlist dt {
    margin-top: 45px;
    font-weight: 500;
    font-size: 18px;
    line-height: 26px;
    letter-spacing: 0.014em;
}
.category_product_detail_dlist dt:first-child {
    margin-top: 0;
}
.category_product_detail_dlist dd {
    margin-top: 25px;
    font-weight: 300;
    font-size: 15px;
    line-height: 22px;
    letter-spacing: 0.017em;
}
.category_product_detail_dlist dt + dd {
    margin-top: 4px;
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
							<a href="./cgv_event2.jsp">이벤트&컬쳐</a>
						</li>
						<li>
							<a href="./cgv_giftshop2.jsp">기프트샵</a>
						</li>
						<li>
							<a href="#">상품권소개</a>
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
						<li id="cm2" name="categorymenu" class=""><a href="#" >영화관람권</a></li>
						<li id="cm3" name="categorymenu" class=""><a href="#" >기프트카드</a></li>
						<li id="cm4" name="categorymenu" class=""><a href="#" >콤보</a></li>
						<li id="cm5" name="categorymenu" class=""><a href="#" >팝콘</a></li>
						<li id="cm6" name="categorymenu" class=""><a href="#" >음료</a></li>
						<li id="cm7" name="categorymenu" class=""><a href="#" >스낵</a></li>
						<li id="cm10" name="categorymenu" class=""><a href="#">플레이존</a></li>
						<li class=""><a href="#" >상품권소개</a></li>     
					</ul>
	     			<ul class="cart_content">
	         			<li><a href="#" >내 기프트콘</a><span id="giftconcnt">0</span></li>   
	         		    <li><a href="#" >장바구니</a><span id="cartviewcnt">0</span></li>  
	         		</ul>
	 			</div>
			</div><!-- category_wrap -->
			<div class="category_product_detail_wrap">
				<strong class="category_product_detail_title">${detail.gift_name }<span>${detail.gift_division }</span></strong>
				<div class="category_product_detail_contents">
					<div class="category_product_detail_contents_img_wrap">
						<ul class="bxslider">
							<li><img src="../${detail.gift_image }" alt="${detail.gift_name }"></li>
						</ul>
					</div>
					<div class="category_product_detail_contents_wrap">
						<p class="category_product_detail_sale_price_wrap">
							<span class="store_deatail_sale_price" id="spnSalePrice">${detail.gift_payment }</span>
						</p>
						<dl class="category_product_detail_add_info">
							<dt>상품구성</dt>
							<dd>${detail.gift_detail }</dd>
							<dt>유효기간</dt>
							<dd>${detail.gift_valid }</dd>
							<dt>원산지</dt>
							<dd>${detail.gift_made }</dd>
							<dt>상품교환</dt>
							<dd>
								<a href="#none" class="btn_available_viewcgv" >사용가능 CGV 보기</a>
							</dd>
						</dl>
						<div class="category_product_detail_price_wrap">
							<div class="com_custom_checkbox_wrap">
								<p class="com_custom_checkbox_title">
									<strong>추가구매 상품</strong><span>복수선택 가능(최대 3개)</span>
								</p>
								<ul class="com_checkbox_list">
									<li>
										<div class="add_product_info_img" id="GG_100016">
											<img src="http://img.cgv.co.kr/GiftStore/Product/Pc/Detail/15459090909410.jpg" alt="즉석구이오징어(몸통)">
										</div>
										<p class="add_product_info_wrap">
											<strong class="add_product_title">즉석구이오징어(몸통)</strong> <span class="add_product_subtitle">오징어: 페루산</span> <span class="add_product_price">3,500</span> <span class="add_product_sale_price">5,000</span>
										</p> <a href="#none" class="com_custom_checkbox" chkstatus="N">체크박스</a>
									</li>
									<li>
										<div class="add_product_info_img" id="GG_100017">
											<img src="http://img.cgv.co.kr/GiftStore/Product/Pc/Detail/15459092403030.jpg" alt="칠리치즈나쵸">
										</div>
										<p class="add_product_info_wrap">
											<strong class="add_product_title">칠리치즈나쵸</strong> <span class="add_product_subtitle">나쵸: 미국산</span> <span class="add_product_price">3,400</span> <span class="add_product_sale_price">4,900</span>
										</p> <a href="#none" class="com_custom_checkbox" chkstatus="N" onclick="javascript:$.fn.comFormAddPrductPrice(this, 'com_form_count', 'com_product_price', null, null, null, 'checkbox', 'com_checkbox_list', 'com_product_add_price', 'com_product_total_price', 'com_total_price'); fnAddGoodsName(this);">체크박스</a>
									</li>
								</ul>
							</div>
							<div class="com_form_number">
								<strong class="com_form_number_title">더블콤보</strong> <span class="com_form_number_subtitle"></span>
								<a href="#none" class="com_btn_minus">-</a>
								<span class="com_form_count">1</span>
								<a href="#none" class="com_btn_plus">+</a>
								<span class="com_total_price" id="spantotalprice">${detail.gift_payment }</span>
							</div>
							<div class="category_product_detail_total_price">
								<p class="com_form_price">
									결제금액<span class="com_product_price">${detail.gift_payment }</span> + 추가금액<span class="com_product_add_price">0</span>
								</p>
								<p class="com_form_total_price">
									총 구매금액<span class="com_total_price0 com_product_total_price">12,000</span>
								</p>
							</div>
						</div>
						<div class="category_product_detail_btn_wrap">
							<a href="cgv_giftshop_cart.do?giftcode=${detail.gift_code }" class="btn_cart">장바구니</a>
							<a href="#">선물하기</a>
							<a href="#" >구매하기</a>
						</div>
					</div>
				</div>
				<p class="category_product_detail_txtbox">취향별로 원하는 맛 선택하세요!</p>
				<dl class="category_product_detail_dlist">
					<dt>이용안내</dt>
					<dd>
						<strong>• 극장 사정에 따라 일부 메뉴 제공이 어려울 수 있습니다.</strong><br> • 해당 기프트콘은 오프라인 매점에서 실제 상품으로 교환할 수 있는 온라인 상품권입니다.<br> • <strong>구매 후 전송받으신 기프트콘은,</strong><br> 사용가능한 CGV의 매점에서 지정된 해당 상품으로만 교환이 가능합니다.<br> (사용가능 CGV는 '상품교환'에서 확인 가능하며, 추가 상품을 포함하여 구매 시 지점에 따라 사용이 불가 할 수 있으니 발송되는 기프트콘의 정보를 확인해주시기 바랍니다.)<br> 해당 상품 내에서 팝콘 맛 혹은 사이즈 변경 시 추가 비용 발생합니다.<br> 교환 완료한 상품의 환불 및 반품은 불가합니다.<br> • <strong>유효기간 연장을 신청하는 경우,</strong><br> 유효기간은 발급일로부터 5년 이내 횟수 제한 없이 기간 연장 가능하며, 1회 연장 시 3개월(92일) 단위로 유효기간이 연장됩니다.&nbsp;&nbsp;<br> 단, 이벤트 경품 및 프로모션 상품의 경우 유효기간 연장이 불가할 수 있습니다.<br> 유효기간 만료 이후에는 결제금액의 90% 환불이 가능합니다.&nbsp;&nbsp;<br> • 매점상품 기프트콘은 극장 매점에서 상품 교환 후 수령한 영수증으로 CJ ONE 적립이 가능합니다.<br> (모바일App,웹 &gt; MY &gt; 매점적립 or 홈페이지&gt; My CGV &gt; 매점이용 포인트 적립)<br> • 상기 이미지는 실제와 다를 수 있습니다.
					</dd>
					<dt>취소/환불</dt>
					<dd>
						• 구매자는 최초 유효기간 이내에 결제금액의 100%에 대해 결제취소/환불이 가능하며, 최초 유효기간 만료 후에는 수신자가 결제금액의 90%에 대해 환불 요청 가능합니다.<br> • 단, 이미 사용된 기프트콘에 대해서는 결제취소/환불 신청이 불가합니다.&nbsp;<br> • 결제취소/환불 방법<br> 결제취소는 모바일App,웹 &gt; MY &gt; 결제내역조회 &gt; 스토어 or 홈페이지 &gt; My CGV &gt; 스토어 &gt; 결제내역의 해당 주문 상세내역에서 가능합니다.<br> (기프트콘은 구매일로부터 60일 이내 결제취소 가능하며, 카드 결제취소 가능 기간이 경과하였을 경우, 고객센터로 연락주시면 됩니다)<br> 환불은 모바일App,웹 &gt; MY &gt; 기프트콘 or 홈페이지 &gt; My CGV &gt; 스토어 &gt; 내 기프트콘에서 환불을 원하는 기프트콘 등록 후 진행 가능하며, 비회원의 경우 고객센터로 신청 가능합니다.<br> 단 이 때, 본인 확인 및 계좌 확인 절차가 진행됩니다.<br> • 수신자는 선물받은 기프트콘의 수신거절을 요청할 수 있으며, 이 경우 구매자에게 취소 및 환불에 대한 안내가 이루어집니다.&nbsp;<br> • 결제취소 가능 기간이 경과한 후 수신자가 수신거절을 요청할 경우 구매자에게 기프트콘이 재발송됩니다.<br> • CGV고객센터 1544-1122
					</dd>
					<dt>미성년자 권리보호 안내</dt>
					<dd>미성년자인 고객께서 계약을 체결하시는 경우 법정대리인이 그 계약에 동의하지 아니하면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있습니다.</dd>
					<dt>분쟁 해결</dt>
					<dd>
						1) 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해의 보상 등에 관한 처리를 위하여<br> &nbsp;&nbsp;CGV고객센터(1544-1122)를 설치 운영하고 있습니다. <br>2) 회사는 고객센터를 통하여 이용자로부터 제출되는 불만사항 및 의견을 처리합니다. <br> &nbsp;&nbsp;다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보합니다. <br>3) 전자상거래 분쟁(청약철회등)과 관련한 이용자의 피해구제는 이용약관 및 전자상거래법 등 관련 법령에 따릅니다.
					</dd>
				</dl>
			</div>
		</div><!-- content -->
	</div><!-- container -->	
	<jsp:include page="/WEB-INF/views/cgv/layout/foot.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/cgv/layout/asideBanner.jsp"></jsp:include>
</div>
</body>
</html>