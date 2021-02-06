<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
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
.big_banner_wrap {
    overflow: hidden;
    position: relative;
    height: 400px;
    margin-bottom: 31px;
}
.big_banner_wrap .bx-wrapper {
    position: relative;
    width: 980px;
    height: 400px;
    margin: 0 auto;
}
.bx_viewport{    
    width: 100%;
    overflow: hidden;
    position: relative;
    height: 400px;
}
.bxslider{
	width: auto;
    position: relative;
}
.bxslider>li{
	float: none;
    list-style: none;
    position: absolute;
    width: 980px;
    z-index: 50;
    display: block;
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
.gift_recommend_wrap {
    padding: 76px 0 98px;
    font-family: 'CJONLYONENEW';
    text-align: center;
    background-color: #f3ebea;
}
.category_wrap.fixed_top + div {
    padding-top: 60px;
}
.gift_recommend_title {
    display: block;
    width: 980px;
    margin: 0 auto;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 18px;
    color: #000;
}
.gift_recommend_title span {
    display: block;
    margin-top: 5px;
    font-weight: 700;
    font-size: 36px;
}
.gift_recommend_subtitle {
    display: block;
    width: 980px;
    margin: 13px auto 0;
    font-weight: 400;
    font-size: 19px;
    line-height: 27px;
    color: #646464;
}
.gift_recommend_wrap .gift_recommend_list_wrap {
    width: 913px;
    margin: 24px auto 0;
    padding: 0 14px 0 53px;
}
.gift_recommend_wrap .gift_recommend_list_wrap .bx-viewport {
    height: 438px !important;
}
.gift_recommend_wrap .gift_recommend_list_wrap .bxslider li {
    height: 438px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_gift_recommend_list_default.png) left top scroll no-repeat;
}
.gift_recommend_box {
    position: relative;
    left: 7px;
    top: 8px;
    width: 250px;
}
.gift_recommend_box .btn_gift_recommend {
    display: block;
    position: relative;
    height: 388px;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_img_wrap {
    display: block;
    overflow: hidden;
    position: relative;
    width: 100%;
    z-index: 1;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_img_wrap img {
    position: relative;
    width: 100%;
    z-index: 1;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_text_wrap {
    display: block;
    position: absolute;
    bottom: 0;
    width: 100%;
    height: 102px;
    padding: 18px 19px;
    font-family: 'CJONLYONENEW';
    text-aligN: left;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_text_wrap .gift_recommend_text_title {
    display: block;
    padding-right: 38px;
    font-weight: 500;
    font-size: 16px;
    color: #000;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_text_wrap .gift_recommend_text_name {
    display: block;
    margin-top: 4px;
    padding-right: 38px;
    font-weight: 400;
    font-size: 16px;
    color: #6a6f77;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_text_wrap .gift_recommend_sale_price_wrap {
    display: block;
    overflow: hidden;
    position: absolute;
    bottom: 16px;
    padding-right: 38px;
    letter-spacing: -0.25px;
    line-height: 18px;
}
.gift_recommend_box .btn_gift_recommend .gift_recommend_text_wrap .gift_recommend_sale_price_wrap .store_deatail_source_price {
    float: left;
    padding-right: 8px;
    font-weight: 400;
    font-size: 18px;
    color: #000;
}
.gift_recommend_wrap .gift_recommend_list_wrap .bxslider li.state_giftcard .btn_gift_recommend_gift {
    left: 70px;
}
.gift_recommend_wrap .gift_recommend_list_wrap .bxslider li.state_giftcard .btn_gift_recommend_buy {
    left: 130px;
}
.gift_recommend_box .btn_gift_recommend ~ a {
    position: absolute;
    font-size: 0;
    /* line-height: 0 /*display:none*/;
}
.gift_recommend_wrap .bx-wrapper .bx-controls .bx-controls-direction {
    position: relative;
    bottom: 240px;
    width: 100%;
    font-size: 0;
}
.gift_recommend_wrap .bx-wrapper .bx-controls .bx-controls-direction .bx-prev {
    position: absolute;
    left: -55px;
    width: 18px;
    height: 30px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_arrowBtn1.png) left top scroll no-repeat;
}
.gift_recommend_wrap .bx-wrapper .bx-controls .bx-controls-direction .bx-next {
    position: absolute;
    right: -16px;
    width: 18px;
    height: 30px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_arrowBtn1.png) left top scroll no-repeat;
    transform: rotate(180deg);
}
.bx-pager{
    display: none;
}
.bx-wrapper{
	-webkit-box-shadow: 0 0 0;
    box-shadow: 0 0 0; 
    border: 0;
    background: #f3ebea;
}
.category_product_wrap {
    width: 980px;
    margin: 0 auto;
    padding: 90px 0;
}
.category_product_list {
    overflow: hidden;
}
.category_product_list > li:nth-child(odd){
	padding-left: 30px;
}
.category_product_list > li:first-child {
    width: 100%;
    margin-top: 0;
    padding: 0;
}
.category_product_list > li {
    float: left;
    width: 50%;
    margin-top: 70px;
    box-sizing: border-box;
}
.category_product_list > li:first-child .category_product_title {
    margin-bottom: 30px;
    font-family: 'CJONLYONENEW';
}
.category_product_list > li .category_product_title .btn_category_product {
    display: block;
    position: absolute;
    right: 0;
    top: 4px;
    width: 23px;
    height: 23px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_moreBtn.png) left top scroll no-repeat;
}
.category_product_inner_list {
    overflow: hidden;
}
.category_product_list > li:first-child .category_product_inner_list li:first-child {
    margin-left: 0;
}
.category_product_list > li:first-child .category_product_inner_list li {
    width: 220px;
    margin-left: 33px;
    margin-top: 0;
}
.category_product_inner_list li:first-child {
    margin-top: 0;
}
.category_product_inner_list li {
    float: left;
    position: relative;
    width: 100%;
    margin-top: 10px;
}
.category_product_inner_list li .btn_category_product {
    display: block;
    overflow: hidden;
    position: relative;
}
.category_product_list > li:first-child .category_product_inner_list li .btn_category_product {
    padding-bottom: 20px;
}
.category_product_inner_list li .btn_category_product .best_product_img_wrap {
    display: block;
    float: left;
    overflow: hidden;
    position: relative;
    width: 160px;
    z-index: 1;
}
.category_product_list > li:first-child .category_product_inner_list li .btn_category_product .best_product_img_wrap {
    width: 100%;
    float: none;
}
.category_product_inner_list li .btn_category_product .best_product_img_wrap img {
    position: relative;
    width: 100%;
    z-index: 1;
}
.category_product_list > li:first-child .category_product_inner_list li .btn_category_product .best_product_text_wrap {
    position: static;
    width: 100%;
    height: auto;
    padding-left: 0;
    transform: none;
}
.best_product_text_wrap {
    position: absolute;
    top: 50%;
    width: 280px;
    padding-left: 20px;
    font-family: 'CJONLYONENEW';
    transform: translate(0, -50%);
    opacity: 1;
}
.active{
	opacity: .3;
}
.best_product_text_title {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: #000;
}
.category_product_inner_list li .btn_category_product .best_product_text_wrap .best_product_text_name {
    display: block;
    margin-top: 5px;
    font-weight: 400;
    font-size: 16px;
    color: #6a6f77;
}
.category_product_inner_list li .btn_category_product .best_product_text_wrap .best_product_sale_price_wrap {
    display: block;
    margin-top: 20px;
    font-size: 0;
    letter-spacing: -0.25px;
    text-align: left;
}
.category_product_inner_list li .btn_category_product .best_product_text_wrap .best_product_sale_price_wrap .store_deatail_source_price {
    display: inline-block;
    padding: 0 4px;
    font-weight: 400;
    font-size: 18px;
    color: #000;
}
.category_product_inner_list li .btn_category_product .best_product_text_wrap .best_product_sale_price_wrap .store_deatail_source_price:after {
    content: '원';
}
/* .category_product_inner_list li .btn_category_product ~ a {
    position: absolute;
    font-size: 0;
    line-height: 0;
    /* display: none; */
} */
.category_product_list > li:nth-child(even) {
    padding-right: 30px;
    clear: both;
}
.category_product_list > li .category_product_title {
    display: block;
    position: relative;
    width: 100%;
    margin-bottom: 20px;
    padding-bottom: 10px;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 28px;
    color: #000;
    line-height: 1em;
    border-bottom: 1px solid #999;
}
.category_product_inner_list li.active .btn_category_product .best_product_text_wrap:before {
    content: '';
    display: block;
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: #fff;
    opacity: .85;
    z-index: 1;
}
/* .category_product_inner_list li.active .btn_category_product ~ a{
	display: block;
	position: absolute;
	top: 55px;
	width: 50px;
	height: 50px;
	font-size: 0;
} */
.info_use_wrap {
    overflow: hidden;
    width: 980px;
    margin: 0 auto;
    font-family: 'CJONLYONENEW';
    border-top: 1px solid #b2b2b2;
    border-bottom: 1px solid #b2b2b2;
}
.btn_info_use {
    float: left;
    display: block;
    width: 534px;
    padding: 25px 0 23px 43px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/bg_info_banner_icon.png) 376px 33px scroll no-repeat;
}
.btn_info_use_title {
    display: block;
    margin-top: 17px;
    font-weight: 500;
    font-size: 20px;
    color: #000;
    letter-spacing: -0.5px;
}
.btn_info_use_title:after {
    content: '';
    display: inline-block;
    position: relative;
    top: 2px;
    left: 7px;
    width: 12px;
    height: 17px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/bg_info_use_arrow.png) left top scroll no-repeat;
}
.btn_info_use_subtitle {
    display: block;
    margin-top: 12px;
    margin-bottom: 11px;
    font-weight: 400;
    font-size: 15px;
    color: #6a6f77;
    line-height: 18px;
}
.info_use {
    float: left;
    width: 352px;
    height: 100px;
    margin: 25px 0 23px;
    padding-left: 50px;
    border-left: 1px solid #b2b2b2;
}
.info_use strong {
    display: block;
    margin-top: 2px;
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 18px;
    letter-spacing: 0.5px;
    color: #000;
}
.info_use span {
    display: block;
    margin-top: 4px;
    font-weight: 400;
    font-size: 16px;
    color: #6a6f77;
}
.info_use .info_use_telnum {
    margin-top: 9px;
    font-weight: 400;
    font-size: 27px;
    color: #444;
}
.info_use .info_use_telnum:before {
    content: '';
    float: left;
    width: 36px;
    height: 25px;
    margin-top: 3px;
    margin-right: 5px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/bg_info_banner_call_icon.png) left top scroll no-repeat;
}
.com_list_box{
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0px;
	background-color: black;
	/* border: 1px solid red; */
	opacity: 0;
	z-index: 2;
	overflow: hidden;
	transition:opacity 0.5s;
}
.circle_btn, .circle_btn_other {
    display: none;
    border-radius: 30px;
    position: absolute;
    width: 50px;
    height: 50px;
    background: #8C8C8C;
    opacity: .5;
    z-index: 1;
}
.circle_btn:hover, .circle_btn_other:hover {
    background: black;
}
.btn_gift_recommend ~ a span {
    position: absolute;
    font-size: 17px;
    font-weight: bold;
    width: 100%;
    height: auto;
    top: 50%;
    left: 0;
    margin-top: -20px;
    text-align: center;
    color: #fff;
}
.circle_btn ~ a span, .circle_btn_other ~ a span{
    position: absolute;
    font-size: 17px;
    font-weight: bold;
    width: 100%;
    height: auto;
    top: 50%;
    left: 0;
    margin-top: -20px;
    text-align: center;
    color: #fff;
}
.btn_category_recommand_gift {
    left: 70px;
}
.btn_category_recommand_buy {
    left: 130px;
}
.btn_gift_recommend ~ a {
    top: 110px;
}
.btn_category_norecommand_cart{
	left: 25px;
}
.btn_category_norecommand_gift{
	left: 85px;
}
.btn_category_norecommand_buy{
	left: 145px;
}
.circle_btn{
	top: 85px;
}
.btn_category_card_gift{
	left: 245px;
}
.btn_category_card_buy{
	left: 305px;
}
.circle_btn_other{
	top: 55px;
}
.btn_category_product_cart{
	left: 215px;
}
.btn_category_product_gift{
	left: 275px;
}
.btn_category_product_buy{
	left: 335px;
}
</style>
<script>
$(document).ready(function(){
	$('.bxslider').bxSlider({
        minSlides: 3,
        maxSlides: 3,
        moveSlides: 1,
        slideWidth: 303,
        slideMargin: 2	
    });
	$('.bxslider_banner').bxSlider({
		minSlides: 1,
		maxSlides: 1
	});
});
</script>
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
	
	$(".recommend_ul").find("li").mouseover(function(){
		$(this).find(".com_list_box").css("opacity", ".3");
		$(this).find(".circle_btn").css("display","block");
	});
	
	$(".recommend_ul").find("li").on("mouseover",function(){
		var idx = $(this).index();
		$(".recommend_ul").children().eq(idx).mouseleave(function(){
			$(this).find(".com_list_box").css("opacity", "0");
			$(this).find(".circle_btn").css("display","none");
		});
	});

	$(".btn_category_product").hover(function(){
		$(this).children().eq(1).addClass("active");
	}, function(){
		$(this).children().eq(1).removeClass("active");
	});
	
	$(".category_product_inner_list").find("li").mouseover(function(){
		$(this).find(".com_list_box").css("opacity", ".3");
		$(this).find(".circle_btn, .circle_btn_other").css("display","block");
	});
	
	$(".category_product_inner_list").find("li").on("mouseover",function(){
		var idx = $(this).index();
		/* console.log(idx); */
		$(".category_product_inner_list").children().eq(idx).mouseleave(function(){
			$(this).find(".com_list_box").css("opacity", "0");
			$(this).find(".circle_btn, .circle_btn_other").css("display","none");
		});
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
					<ul >
						<li>
							<a href="https://www.cgv.co.kr/">
								<img src="https://img.cgv.co.kr/R2014/images/common/btn/btn_home.png" alt="" />
							</a>
						</li>
						<li>
							<a href="cgv_event_main.do">이벤트&컬쳐</a>
						</li>
						<li>
							<a href="dgv_giftshop_main.do">기프트샵</a>
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
			<div class="big_banner_wrap">
 				<ul class="bxslider_banner" style="width: auto; position: relative;">
 					<li style="float: none; list-style: none; position: absolute; width: 980px; z-index: 50; display: block;"><img src="http://img.cgv.co.kr/GiftStore/Display/PC/15468087168510.jpg" alt="기프트샵"></li>
				</ul>
			</div>
			<div class="category_wrap">
	 			<div class="category_contents_wrap">
	     			<ul class="category_content" >
	         			<li class="giftstore_logo" style="display: none;"><a href="/culture-event/popcorn-store/default.aspx"></a></li>
						<li id="cm2" name="categorymenu" class=""><a href="cgv_giftshop_01.do">영화관람권</a></li>
						<li id="cm3" name="categorymenu" class=""><a href="cgv_giftshop_02.do">기프트카드</a></li>
						<li id="cm4" name="categorymenu" class=""><a href="cgv_giftshop_03.do">콤보</a></li>
						<li id="cm5" name="categorymenu" class=""><a href="cgv_giftshop_04.do">팝콘</a></li>
						<li id="cm6" name="categorymenu" class=""><a href="cgv_giftshop_05.do">음료</a></li>
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
			<div class="gift_recommend_wrap">
    			<strong class="gift_recommend_title">CGV SPECIAL<span>선물추천</span></strong>
    			<p class="gift_recommend_subtitle">CGV만의 특별한 사랑을 선물해 보세요.</p>
    			<div class="gift_recommend_list_wrap">
					<ul class="bxslider recommend_ul" style="width: 715%; position: relative; transition-duration: 0s; z-index: 8; ">
						<c:forEach var="giftcard" items="${giftcard }">
							<li class="state_giftcard bx-clone" style="float: left; list-style: none; position: relative; width: 303px; margin-right: 2px;">
								<div class="gift_recommend_box" tabindex="-1">
									<a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100235" class="btn_gift_recommend" tabindex="-1">
										<span class="gift_recommend_img_wrap" tabindex="-1">
											<span class="com_list_box"></span>
											<img src="../${giftcard.gift_image }" alt="${giftcard.gift_name }" tabindex="-1">
										</span> 
										<span class="gift_recommend_text_wrap" tabindex="-1"> <span class="gift_recommend_text_title" tabindex="-1">${giftcard.gift_name }</span> 
											<span class="gift_recommend_text_name" tabindex="-1"></span> 
											<span class="gift_recommend_sale_price_wrap" tabindex="-1"> 
												<span class="store_deatail_source_price nowon" tabindex="-1">${giftcard.gift_content }</span>
											</span>
										</span>
									</a>
									<a href="#" class="btn_category_recommand_gift circle_btn"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_recommand_gift circle_btn"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_recommand_buy circle_btn"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_recommand_buy circle_btn"><span>구매<br>하기</span></a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><!-- gift_recommend_list_wrap -->
			</div><!-- gift_recommend_wrap -->
			<div class="category_product_wrap">
				<ul class="category_product_list">
					<li><strong class="category_product_title">영화관람권<a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=2" class="btn_category_product">더보기</a></strong>
						<ul class="category_product_inner_list">
							<c:forEach var = "ticket" items="${ticket}" end="3">
								<li class=" ">
									<a href="cgv_giftshop_detail.do?giftcode=${ticket.gift_code }" class="btn_category_product">
										<span class="best_product_img_wrap">
											<span class="com_list_box"></span>
											<img src="../${ticket.gift_image }" alt="${ticket.gift_name }">
										</span> 
										<span class="best_product_text_wrap"> 
											<span class="best_product_text_title">${ticket.gift_name }</span> 
											<span class="best_product_text_name">${ticket.gift_content }</span> 
											<span class="best_product_sale_price_wrap"> 
												<span class="store_deatail_source_price">${ticket.gift_payment }</span>
											</span>
										</span>
									</a> 
									<a href="cgv_giftshop_cart.do?giftcode=${ticket.gift_code}" class="btn_category_norecommand_cart circle_btn"><span>장바<br>구니</span></a> 
									<a href="cgv_giftshop_cart.do?giftcode=${ticket.gift_code}" class="btn_category_norecommand_cart circle_btn"><span>장바<br>구니</span></a> 
									<a href="#" class="btn_category_norecommand_gift circle_btn"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_norecommand_gift circle_btn"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_norecommand_buy circle_btn"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_norecommand_buy circle_btn"><span>구매<br>하기</span></a>
								</li><!-- 영화관람권 알맹이 -->
							</c:forEach>
						</ul>
					</li><!-- 영화 관람권 -->
					<li><strong class="category_product_title">기프트카드<a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3" class="btn_category_product">더보기</a></strong>
						<ul class="category_product_inner_list">
							<c:forEach var="giftcard" items="${giftcard }" end="3">
								<li class="state_giftcard">
									<a href="cgv_giftshop_detail.do?giftcode=${giftcard.gift_code }" class="btn_category_product">
										<span class="best_product_img_wrap"><img src="../${giftcard.gift_image }" alt="${giftcard.gift_name }"></span> 
										<span class="best_product_text_wrap"> 
											<span class="best_product_text_title">${giftcard.gift_name }</span> 
											<span class="best_product_text_name"></span> 
											<span class="best_product_sale_price_wrap"> 
												<span class="store_deatail_source_price nowon">${giftcard.gift_content }</span>
											</span>
										</span>
									</a> 
									<a href="#" class="btn_category_card_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_card_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_card_buy circle_btn_other"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_card_buy circle_btn_other"><span>구매<br>하기</span></a>
								</li><!-- 기프트카드 알맹이 -->
							</c:forEach>
						</ul>
					</li><!-- 기프트카드 -->
					<li><strong class="category_product_title">콤보<a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=4" class="btn_category_product">더보기</a></strong>
						<ul class="category_product_inner_list">
							<c:forEach var = "combo" items="${combo}" end="2">
								<li class=" ">
									<a href="cgv_giftshop_detail.do?giftcode=${combo.gift_code }" class="btn_category_product">
										<span class="best_product_img_wrap"><img src="../${combo.gift_image }" alt="${combo.gift_name }"></span> 
										<span class="best_product_text_wrap"> 
											<span class="best_product_text_title">${combo.gift_name }</span> 
											<span class="best_product_text_name">${combo.gift_content }</span> 
											<span class="best_product_sale_price_wrap"> 
												<span class="store_deatail_source_price">${combo.gift_payment }</span>
											</span>
										</span>
									</a> 
									<a href="cgv_giftshop_cart.do?giftcode=${combo.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="cgv_giftshop_cart.do?giftcode=${combo.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
								</li><!-- 콤보리스트 -->
							</c:forEach>
						</ul>
					</li><!-- 콤보 -->
					<li><strong class="category_product_title">팝콘<a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=5" class="btn_category_product">더보기</a></strong>
						<ul class="category_product_inner_list">
							<c:forEach var="popcorn" items="${popcorn }" end="2">
								<li class=" ">
									<a href="cgv_giftshop_detail.do?giftcode=${popcorn.gift_code }" class="btn_category_product">
										<span class="best_product_img_wrap"><img src="../${popcorn.gift_image }" alt="${popcorn.gift_name }"></span> 
										<span class="best_product_text_wrap"> 
											<span class="best_product_text_title">${popcorn.gift_name }</span> 
											<span class="best_product_text_name">${popcorn.gift_content }</span> 
											<span class="best_product_sale_price_wrap"> 
												<span class="store_deatail_source_price">${popcorn.gift_content }</span>
											</span>
										</span>
									</a> 
									<a href="cgv_giftshop_cart.do?giftcode=${popcorn.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="cgv_giftshop_cart.do?giftcode=${popcorn.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
								</li><!-- 팝콘 알맹이 -->
							</c:forEach>
						</ul>
					</li><!-- 팝콘 -->
					<li><strong class="category_product_title">음료<a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=6" class="btn_category_product">더보기</a></strong>
						<ul class="category_product_inner_list">
							<c:forEach var="drink" items="${drink }" end="1">
								<li class=" ">
									<a href="cgv_giftshop_detail.do?giftcode=${drink.gift_code }" class="btn_category_product">
										<span class="best_product_img_wrap"><img src="../${drink.gift_image }" alt="${drink.gift_name }"></span> 
										<span class="best_product_text_wrap"> 
											<span class="best_product_text_title">${drink.gift_name }</span> 
											<span class="best_product_text_name">${drink.gift_content }</span> 
											<span class="best_product_sale_price_wrap"> 
												<span class="store_deatail_source_price">${drink.gift_payment }</span>
											</span>
										</span>
									</a> 
									<a href="cgv_giftshop_cart.do?giftcode=${drink.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="cgv_giftshop_cart.do?giftcode=${drink.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
								</li><!-- 음료 알맹이 -->
							</c:forEach>
						</ul>
					</li><!-- 음료 -->
					<li><strong class="category_product_title">스낵<a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=5" class="btn_category_product">더보기</a></strong>
						<ul class="category_product_inner_list">
							<c:forEach var="snack" items="${snack }" end="0">
								<li class=" ">
									<a href="cgv_giftshop_detail.do?giftcode=${snack.gift_code }" class="btn_category_product">
										<span class="best_product_img_wrap"><img src="../${snack.gift_image }" alt="${snack.gift_name }"></span> 
										<span class="best_product_text_wrap"> 
											<span class="best_product_text_title">${snack.gift_name }</span> 
											<span class="best_product_text_name">${snack.gift_content }</span> 
											<span class="best_product_sale_price_wrap"> 
												<span class="store_deatail_source_price">${snack.gift_payment }</span>
											</span>
										</span>
									</a> 
									<a href="cgv_giftshop_cart.do?giftcode=${snack.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="cgv_giftshop_cart.do?giftcode=${snack.gift_code}" class="btn_category_product_cart circle_btn_other"><span>장바<br>구니</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_gift circle_btn_other"><span>선물<br>하기</span></a> 
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
									<a href="#" class="btn_category_product_buy circle_btn_other"><span>구매<br>하기</span></a>
								</li><!-- 스낵 알맹이 -->
							</c:forEach>
						</ul>
					</li>
				</ul><!-- category_product_list -->
			</div><!-- category_product_wrap -->
			<div class="info_use_wrap">
	        	<a href="/culture-event/popcorn-store/store-guide.aspx" class="btn_info_use">
					<span class="btn_info_use_title">CGV 기프트샵 이용안내</span>
				    <span class="btn_info_use_subtitle">새롭게 리뉴얼한 CGV 기프트샵와 함께<br>CGV에서 또 다른 즐거움을 누려보세요.</span>
	        	</a>
	        	<div class="info_use">
			        <strong>CGV 고객센터</strong>
			        <span class="info_use_telnum">1544-1122</span>
			        <span>상담가능 시간 : 월~금 09:00~18:00</span>
			        <span>*이 외 시간은 자동 응답 안내 가능</span>
	        	</div>
        	</div><!-- 하단 안내사항 -->
		</div><!-- content -->
	</div><!-- container -->	
	<jsp:include page="/WEB-INF/views/cgv/layout/foot.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/cgv/layout/asideBanner.jsp"></jsp:include>
</div>

</body>
</html>