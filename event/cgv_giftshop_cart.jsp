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
dl:after, ul:after, ol:after {
    content: '';
    clear: both;
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
.cart_step_wrap {
    width: 980px;
    margin: 0 auto;
    font-family: 'CJONLYONENEW';
    text-align: center;
}
.cart_step_wrap .cart_step {
    overflow: hidden;
    margin: 54px auto 0;
    font-size: 0;
}
.cart_step_wrap .cart_step li {
    display: inline-block;
    position: relative;
    padding-left: 53px;
}
.cart_step_wrap .cart_step.step_unit4 li {
    margin-right: 34px;
    padding-right: 52px;
}
.cart_step_wrap .cart_step li:before {
    content: '';
    display: inline-block;
    position: absolute;
    left: 0;
    top: 50%;
    width: 38px;
    height: 33px;
    margin-top: -14px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_stepIcon.png) left top scroll no-repeat;
}
.cart_step_wrap .cart_step li.step0:before {
    background-position: left top;
}
.cart_step_wrap .cart_step li span {
    display: block;
    font-weight: 400;
    font-size: 13px;
    color: #8d8d8d;
    line-height: 22px;
}
.cart_step_wrap .cart_step li strong {
    display: block;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 22px;
    color: #8d8d8d;
    line-height: 22px;
}
.cart_step_wrap .cart_step li:after {
    content: '';
    float: right;
    position: absolute;
    right: 0;
    top: 50%;
    width: 18px;
    height: 30px;
    margin-top: -15px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_step_arrow.png) left top scroll no-repeat;
}
.cart_step_wrap .cart_step li.step1.active:before {
    background-position: -38px -33px;
}
.cart_step_wrap .cart_step li.active span, .cart_step_wrap .cart_step li.active strong {
    color: #f00;
}
.cart_step_wrap .cart_step li.step2:before {
    background-position: -76px top;
}
.cart_step_wrap .cart_step li:last-child {
    margin-right: 0 !important;
    padding-right: 0 !important;
}
.cart_step_wrap .cart_step li.step3:before {
    background-position: -114px top;
}
.com_cart_list_wrap {
    overflow: hidden;
    width: 980px;
    margin: 0 auto;
    padding-top: 50px;
    font-family: 'CJONLYONENEW';
}
.com_box_design_title {
    display: block;
    font-family: 'CJONLYONENEW';
    padding: 20px 0 8px;
    font-weight: 500;
    font-size: 18px;
    color: #000;
}
.com_cart_list_wrap .cart_allchecker_wrap {
    overflow: hidden;
    padding: 12px 20px 13px;
    background-color: #fafafa;
    border-top: 3px solid #000;
}
.com_cart_list_wrap1 .cart_allchecker_wrap {
    padding-left: 59px;
}
.com_cart_list_wrap .cart_allchecker_wrap strong {
    float: left;
    position: relative;
    top: 1px;
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 15px;
    color: #000;
    line-height: 24px;
    text-align: center;
}
.com_cart_list_wrap .cart_allchecker_wrap strong.com_custom_checkbox_product_name {
    width: 360px;
    text-align: left;
    text-indent: 86px;
}
.com_cart_list_wrap1 .cart_allchecker_wrap strong.com_custom_checkbox_sel_price {
    width: 210px;
    margin-left: 10px;
}
.com_cart_list_wrap1 .cart_allchecker_wrap strong.com_custom_checkbox_price {
    width: 200px;
}
.com_cart_list_wrap .com_list_style1 {
    border-bottom: 1px solid #000;
}
.com_cart_list_wrap .com_list_style1 > li {
    overflow: hidden;
    position: relative;
    padding: 20px 0 0;
    border-top: 1px solid #d6d6d6;
}
.com_cart_list_wrap1 .com_list_style1 li {
    padding-left: 59px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img {
    display: block;
    float: left;
    width: 360px;
    margin-bottom: 20px;
}
.com_cart_list_wrap1 .com_list_style1 li .product_info_img {
    width: 380px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img img {
    float: left;
    position: relative;
    left: -20px;
    width: 90px;
    margin-right: 17px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img .product_info_name {
    display: block;
    margin-top: 4px;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 16px;
    color: #000;
}
.com_cart_list_wrap1 .com_list_style1 li .product_info_img .product_info_name {
    margin-top: 20px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img .product_info_origin {
    display: block;
    margin-top: 8px;
    font-weight: 400;
    font-size: 15px;
    color: #6a6f77;
}
.com_cart_list_wrap1 .com_list_style1 li .product_info_img .product_info_origin {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap {
    float: left;
    width: 115px;
    text-align: center;
}
.com_cart_list_wrap1 .com_list_style1 li .product_info_wrap {
    width: 190px;
    margin-right: 10px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap .product_info_one_price {
    display: block;
    margin-top: 23px;
    font-weight: 500;
    font-size: 17px;
    color: #000;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap.not_sale .product_info_one_price {
    margin-top: 0;
    height: 85px;
    line-height: 85px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap .product_info_one_price:after {
    content: '원';
    font-size: 14px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_price {
    float: left;
    margin-top: 34px;
    width: 108px;
    font-weight: 500;
    font-size: 17px;
    color: #000;
    text-align: center;
}
.com_cart_list_wrap1 .com_list_style1 li .product_info_price {
    width: 200px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_price:after {
    content: '원';
    font-size: 14px;
}
.com_cart_list_wrap {
    overflow: hidden;
    width: 980px;
    margin: 0 auto;
    padding-top: 50px;
    font-family: 'CJONLYONENEW';
}
.com_message_list_wrap {
    overflow: visible;
}
.com_box_design_title {
    display: block;
    font-family: 'CJONLYONENEW';
    padding: 20px 0 8px;
    font-weight: 500;
    font-size: 18px;
    color: #000;
}
ul.com_box_design {
    padding: 29px 0 30px;
    font-family: 'CJONLYONENEW';
    border-top: 3px solid #000;
    border-bottom: 1px solid #000;
}
ul.com_box_design > li {
    padding: 0 20px;
}
.com_message_list_wrap .com_box_design li {
    float: left;
}
.com_message_list_wrap .com_box_design li:first-child {
    padding-right: 11px;
}
input[type="radio"].com_custom_radio {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    clip: rect(0,0,0,0);
    border: 0;
}
.com_message_list_wrap .com_box_design li input[type="radio"].com_custom_radio:checked + label {
    padding-right: 0;
}
ul.com_box_design.radioCheck li:first-child label {
    padding-left: 0;
}
input[type="radio"].com_custom_radio:checked + label {
    padding-right: 200px;
}
.com_message_list_wrap .com_box_design li label {
    padding-left: 0px;
}
input[type="radio"].com_custom_radio + label {
    float: left;
    overflow: hidden;
    position: relative;
    margin-right: 15px;
    font-weight: 500;
    font-size: 16px;
    color: #000;
    cursor: pointer;
}
ul.com_box_design > li label {
    height: 40px;
    margin-right: 14px;
    padding-left: 53px;
    font-weight: 500;
    font-size: 16px;
    color: #6a6f77;
    line-height: 40px;
    vertical-align: middle;
}
.pR0 {
    padding-right: 0 !important;
}
input[type="radio"].com_custom_radio:checked + label:before {
    background-position: -24px -1px;
}
input[type="radio"].com_custom_radio + label:before {
    content: '';
    float: left;
    position: relative;
    top: 9px;
    width: 22px;
    height: 22px;
    margin-right: 8px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_radio.png) -1px -1px scroll no-repeat;
}
.com_message_list_wrap .com_box_design li.com_custom_selectbox_wrap {
    height: 40px;
    margin-bottom: 17px;
}

.com_message_list_wrap .com_box_design li {
    float: left;
}
ul.com_box_design > li {
    padding: 0 20px;
}
.com_custom_selectbox_wrap {
    position: relative;
    z-index: 1;
}
.com_message_list_wrap .com_box_design li.com_custom_selectbox_wrap .com_custom_selectbox {
    left: -20px;
    width: 258px;
}

ul.com_box_design.radioCheck > li .com_custom_selectbox {
    border: 1px solid #bdc1c8;
    border-left: none;
    border-right: none;
}
.com_custom_selectbox_wrap .com_custom_selectbox {
    position: absolute;
    width: 198px;
    font-weight: 400;
    font-size: 16px;
    color: #000;
    text-align: left;
    border: 1px solid #bdc1c8;
    background-color: #fff;
}
.com_message_list_wrap .com_box_design li.com_custom_selectbox_wrap .com_custom_selectbox dt {
    line-height: 38px;
}

ul.com_box_design.radioCheck > li .com_custom_selectbox dt {
    border-left: 1px solid #bdc1c8;
    border-right: 1px solid #bdc1c8;
}
.com_custom_selectbox_wrap .com_custom_selectbox dt {
    line-height: 42px;
}
.com_message_list_wrap .com_box_design li.com_custom_selectbox_wrap .com_custom_selectbox dt a {
    color: #6a6f77;
}
.com_custom_selectbox_wrap .com_custom_selectbox dt a {
    display: block;
    padding-left: 12px;
}	
ul.com_box_design.radioCheck > li .com_custom_selectbox dt + dd {
    border-top: 1px solid #bdc1c8;
}
.com_message_list_wrap .com_box_design li.com_custom_selectbox_wrap .com_custom_selectbox dd a {
    color: #6a6f77;
    line-height: 37px;
}

ul.com_box_design.radioCheck > li .com_custom_selectbox dd a {
    line-height: 41px;
}
.com_custom_selectbox_wrap .com_custom_selectbox dd a {
    display: block;
    padding-left: 12px;
    line-height: 41px;
    background-color: #fff;
}
.com_message_list_wrap .com_box_design li.com_custom_textarea_wrap {
    clear: both;
    float: none;
    display: block;
}
textarea {
    overflow: auto;
    overflow-x: hidden;
    vertical-align: top;
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 300;
    resize: none;
    border: 1px solid #ddd;
    line-height: 1.7;
    padding: 10px;
}
.com_message_list_wrap .com_box_design li.com_custom_textarea_wrap textarea {
    overflow: hidden;
    height: 54px;
    font-family: 'CJONLYONENEW';
    width: 100%;
    font-weight: 400;
    font-size: 16px;
}
.com_box_design_wrap {
    width: 980px;
    margin: 70px auto 0;
}
.com_box_design_title {
    display: block;
    font-family: 'CJONLYONENEW';
    padding: 20px 0 8px;
    font-weight: 500;
    font-size: 18px;
    color: #000;
}
ul.com_box_design > li input[type="text"], ul.com_box_design > li input[type="tel"] {
    height: 38px;
    padding: 0 0 0 10px;
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 16px;
    color: #000;
    line-height: 38px;
    border: 1px solid #bebebe;
}

input[type='text'], input[type='password'] {
    display: inline-block;
    height: 25px;
    line-height: 22px;
    padding-left: 10px;
    border: 1px solid #b5b5b5;
}
ul.com_box_design > li .com_btn_wrap {
    float: right;
}
.com_btn_wrap {
    clear: both;
    position: relative;
    font-family: 'CJONLYONENEW';
    font-size: 0;
    text-align: center;
}
ul.com_box_design > li .com_btn_wrap a {
    width: 138px;
    height: 38px;
    margin-left: 10px;
    font-weight: 500;
    font-size: 15px;
    line-height: 38px;
}
.com_btn_wrap > *:first-child {
    margin-left: 0;
}
a.btn_style1 {
    width: 208px;
    height: 60px;
    font-weight: 500;
    font-size: 19px;
    color: #222;
    line-height: 60px;
    background-color: #fff;
    border: 1px solid #9197a3;
}
ul.com_box_design > li .com_btn_wrap a.btn_style0 {
    background-color: #4b4f56;
    border: 1px solid #4b4f56;
}
ul.com_box_design > li .com_btn_wrap a {
    width: 138px;
    height: 38px;
    margin-left: 10px;
    font-weight: 500;
    font-size: 15px;
    line-height: 38px;
}
ul.com_box_design > li.com_box_design_input_before {
    margin-top: 30px;
    border-top: 1px solid #d6d6d6;
}
ul.com_box_design > li.com_box_design_input_before span {
    display: block;
    padding: 77px 0 47px;
    font-weight: 400;
    font-size: 16px;
    color: #6a6f77;
    line-height: 1em;
    text-align: center;
}
ul.com_box_design > li.com_box_design_input_after {
    margin-top: 30px;
    padding-top: 36px;
    border-top: 1px solid #d6d6d6;
}

ul.com_box_design > li {
    padding: 0 20px;
}
.com_cart_list_wrap {
    overflow: hidden;
    width: 980px;
    margin: 0 auto;
    padding-top: 50px;
    font-family: 'CJONLYONENEW';
}
.pT0 {
    padding-top: 0 !important;
}
.com_cart_total_price_wrap {
    clear: both;
    float: left;
    margin-top: 60px;
    border-top: 1px solid #d6d6d6;
    border-bottom: 1px solid #d6d6d6;
}
table caption {
    font: 0/0 a;
    zoom: 1;
}
caption, th, td {
    font-weight: 300;
    line-height: 1.5em;
    text-align: left;
    vertical-align: middle;
}
colgroup {
    display: table-column-group;
}
col {
    display: table-column;
}
.com_cart_total_price_wrap thead th {
    height: 59px;
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 16px;
    color: #000;
    line-height: 59px;
    text-align: center;
    background-color: #f3f3f3;
}

table thead th {
    font-weight: 500;
}
.com_cart_total_price_wrap tbody td {
    text-align: center;
    height: 120px;
    line-height: 120px;
}
.com_cart_total_price_wrap tbody td strong {
    font-weight: 500;
    font-size: 26px;
    color: #000;
}
.com_cart_total_price_wrap tbody td strong:after {
    content: '원';
    font-size: 21px;
}
.com_cart_total_price_wrap tbody td.com_cart_calculator_marker {
    position: relative;
}

.com_cart_total_price_wrap tbody td {
    text-align: center;
    height: 120px;
    line-height: 120px;
}
.com_cart_total_price_wrap tbody td.com_cart_calculator_marker:before {
    content: '';
    display: block;
    position: absolute;
    left: 0;
    top: 36px;
    width: 51px;
    height: 52px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_calculator_marker.png) left top scroll no-repeat;
}
.com_cart_total_price_wrap tbody td strong {
    font-weight: 500;
    font-size: 26px;
    color: #000;
}
.com_cart_total_price_wrap tbody td strong.cart_total_price {
    color: #dc291e;
}
.pT40 {
    padding-top: 40px !important;
}

.com_btn_wrap {
    clear: both;
    position: relative;
    font-family: 'CJONLYONENEW';
    font-size: 0;
    text-align: center;
}
.com_btn_wrap > *:first-child {
    margin-left: 0;
}

a.btn_style0 {
    width: 208px;
    height: 60px;
    font-weight: 500;
    font-size: 19px;
    color: #fff;
    line-height: 60px;
    background-color: #373e46;
    border: 1px solid #373e46;
}
a.btn_prev {
    position: absolute;
    bottom: 14px;
    left: 0;
    padding-left: 40px;
    font-weight: 400;
    font-size: 18px;
    color: #222;
    line-height: 34px;
}

.com_btn_wrap span, .com_btn_wrap a {
    display: inline-block;
    font-size: 18px;
    margin-left: 14px;
}
a.btn_prev img {
    position: absolute;
    left: 0;
}

input, select, img {
    vertical-align: middle;
}
.com_box_design_wrap {
    width: 980px;
    margin: 70px auto 0;
}
.com_box_design_title {
    display: block;
    font-family: 'CJONLYONENEW';
    padding: 20px 0 8px;
    font-weight: 500;
    font-size: 18px;
    color: #000;
}
ul.com_box_design {
    padding: 29px 0 30px;
    font-family: 'CJONLYONENEW';
    border-top: 3px solid #000;
    border-bottom: 1px solid #000;
}
ul.com_box_design > li {
    padding: 0 20px;
}
ul.com_box_design > li label:first-child {
    padding-left: 0;
}

ul.com_box_design > li label {
    height: 40px;
    margin-right: 14px;
    padding-left: 53px;
    font-weight: 500;
    font-size: 16px;
    color: #6a6f77;
    line-height: 40px;
    vertical-align: middle;
}
ul.com_box_design > li input[type="text"], ul.com_box_design > li input[type="tel"] {
    height: 38px;
    padding: 0 0 0 10px;
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 16px;
    color: #000;
    line-height: 38px;
    border: 1px solid #bebebe;
}

input[type='text'], input[type='password'] {
    display: inline-block;
    height: 25px;
    line-height: 22px;
    padding-left: 10px;
    border: 1px solid #b5b5b5;
}
ul.com_box_design > li .com_btn_wrap a {
    width: 138px;
    height: 38px;
    margin-left: 10px;
    font-weight: 500;
    font-size: 15px;
    line-height: 38px;
}
ul.com_box_design > li .com_btn_wrap a.btn_style0 {
    background-color: #4b4f56;
    border: 1px solid #4b4f56;
}
ul.com_box_design > li.com_box_design_input_before {
    margin-top: 30px;
    border-top: 1px solid #d6d6d6;
}

ul.com_box_design > li {
    padding: 0 20px;
}
ul.com_box_design > li.com_box_design_input_before span {
    display: block;
    padding: 77px 0 47px;
    font-weight: 400;
    font-size: 16px;
    color: #6a6f77;
    line-height: 1em;
    text-align: center;
}
.com_cart_list_wrap {
    overflow: hidden;
    width: 980px;
    margin: 0 auto;
    padding-top: 50px;
    font-family: 'CJONLYONENEW';
}
.com_cart_list_wrap .cart_allchecker_wrap {
    overflow: hidden;
    padding: 12px 20px 13px;
    background-color: #fafafa;
    border-top: 3px solid #000;
}
input[type="checkbox"].com_custom_checkbox {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    clip: rect(0,0,0,0);
    border: 0;
}
input[type="checkbox"].com_custom_checkbox + label {
    float: left;
    position: relative;
    margin-right: 15px;
    font-size: 0;
    cursor: pointer;
}
input[type="checkbox"].com_custom_checkbox + label:before {
    content: '';
    display: inline-block;
    width: 24px;
    height: 24px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_checkbox_radio.png) -1px -1px scroll no-repeat;
}
input[type="checkbox"].com_custom_checkbox:checked + label:before {
    background-position: -26px -1px;
}
.com_cart_list_wrap .cart_allchecker_wrap strong.com_custom_checkbox_product_name {
    width: 360px;
    text-align: left;
    text-indent: 86px;
}
.com_cart_list_wrap .cart_allchecker_wrap strong {
    float: left;
    position: relative;
    top: 1px;
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 15px;
    color: #000;
    line-height: 24px;
    text-align: center;
}
.com_cart_list_wrap .cart_allchecker_wrap strong.com_custom_checkbox_sel_price {
    width: 115px;
}
.com_cart_list_wrap .cart_allchecker_wrap strong.com_custom_checkbox_cnt {
    width: 166px;
}
.com_cart_list_wrap .cart_allchecker_wrap strong.com_custom_checkbox_price {
    width: 108px;
}
.com_cart_list_wrap .cart_allchecker_wrap strong.com_custom_checkbox_product_sel {
    width: 127px;
}
.com_cart_list_wrap .com_list_style1 {
    border-bottom: 1px solid #000;
}
.com_cart_list_wrap .com_list_style1 > li {
    overflow: hidden;
    position: relative;
    padding: 20px 0 0;
    border-top: 1px solid #d6d6d6;
}
input[type="checkbox"].com_custom_checkbox {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    clip: rect(0,0,0,0);
    border: 0;
}
.com_cart_list_wrap .com_list_style1 > li input[type="checkbox"].com_custom_checkbox + label {
    margin-left: 20px;
}
input[type="checkbox"].com_custom_checkbox:checked + label:before {
    background-position: -26px -1px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img {
    display: block;
    float: left;
    width: 360px;
    margin-bottom: 20px;
}
.com_cart_list_wrap .com_list_style1 > li input[type="checkbox"].com_custom_checkbox ~ .product_info_img {
    overflow: hidden;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img img {
    float: left;
    position: relative;
    left: -20px;
    width: 90px;
    margin-right: 17px;
}
.com_cart_list_wrap .com_list_style1 > li input[type="checkbox"].com_custom_checkbox ~ .product_info_img img {
    position: static;
    left: auto;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img .product_info_name {
    display: block;
    margin-top: 4px;
    font-family: 'CJONLYONENEW';
    font-weight: 500;
    font-size: 16px;
    color: #000;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img .product_info_origin {
    display: block;
    margin-top: 8px;
    font-weight: 400;
    font-size: 15px;
    color: #6a6f77;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap {
    float: left;
    width: 115px;
    text-align: center;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap .product_info_one_price {
    display: block;
    margin-top: 23px;
    font-weight: 500;
    font-size: 17px;
    color: #000;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap.not_sale .product_info_one_price {
    margin-top: 0;
    height: 85px;
    line-height: 85px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_wrap .product_info_one_price:after {
    content: '원';
    font-size: 14px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap {
    float: left;
    position: relative;
    width: 98px;
    margin-top: 30px;
    padding: 0 34px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap .com_form_count {
    float: left;
    width: 36px;
    height: 29px;
    font-weight: 400;
    font-size: 16px;
    color: #000;
    line-height: 29px;
    text-align: center;
    border: 1px solid #bdc1c8;
    border-right: none;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap .com_btn_plus {
    position: absolute;
    left: 71px;
    width: 18px;
    height: 14px;
    font-size: 0;
    border: 1px solid #bdc1c8;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap .com_btn_plus:before {
    content: '';
    display: block;
    width: 10px;
    height: 7px;
    margin: 4px auto;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_plus_minus_arrow.png) left top scroll no-repeat;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap .com_btn_minus {
    position: absolute;
    left: 71px;
    top: 16px;
    width: 18px;
    height: 14px;
    font-size: 0;
    border: 1px solid #bdc1c8;
    border-top: none;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap .com_btn_minus:before {
    content: '';
    display: block;
    width: 10px;
    height: 7px;
    margin: 3px auto;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_plus_minus_arrow.png) -10px top scroll no-repeat;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_cnt_wrap .btn_change {
    float: right;
    width: 36px;
    height: 29px;
    font-weight: 400;
    font-size: 13px;
    text-align: center;
    color: #4b4f56;
    line-height: 29px;
    border: 1px solid #bdc1c8;
}
.com_cart_list_wrap .com_list_style1 {
    border-bottom: 1px solid #000;
}
.com_cart_list_wrap .com_list_style1 > li {
    overflow: hidden;
    position: relative;
    padding: 20px 0 0;
    border-top: 1px solid #d6d6d6;
}
input[type="checkbox"].com_custom_checkbox {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    clip: rect(0,0,0,0);
    border: 0;
}
.com_cart_list_wrap .com_list_style1 > li input[type="checkbox"].com_custom_checkbox + label {
    margin-left: 20px;
}
input[type="checkbox"].com_custom_checkbox:checked + label:before {
    background-position: -26px -1px;
}
.com_cart_list_wrap .com_list_style1 > li input[type="checkbox"].com_custom_checkbox ~ .product_info_img {
    overflow: hidden;
}

.com_cart_list_wrap .com_list_style1 > li .product_info_img {
    display: block;
    float: left;
    width: 360px;
    margin-bottom: 20px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_img .product_info_origin {
    display: block;
    margin-top: 8px;
    font-weight: 400;
    font-size: 15px;
    color: #6a6f77;
}
.com_cart_list_wrap .com_list_style1 > li .btn_addsel {
    position: absolute;
    left: 166px;
    top: 97px;
    width: 120px;
    height: 30px;
    padding: 0 7px;
    font-weight: 400;
    font-size: 13px;
    color: #4b4f56;
    line-height: 30px;
    background-color: #fff;
    border: 1px solid #bebebe;
}
.com_cart_list_wrap .com_list_style1 > li .btn_addsel:after {
    content: '';
    float: right;
    width: 10px;
    height: 6px;
    margin-top: 12px;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_add_arrow.png) -1px -1px scroll no-repeat;
}
.com_cart_list_wrap .com_list_style1 > li .btn_addsel ~ .com_custom_checkbox_wrap {
    position: absolute;
    top: 151px;
    width: 100%;
}

.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap {
    clear: both;
    display: none;
    position: relative;
    padding: 23px 0;
    background-color: #f7f7f7;
    border-top: 1px solid #d9d9d9;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_custom_checkbox_title {
    padding-top: 1px;
    padding-left: 79px;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_custom_checkbox_title strong {
    font-family: 'CJONLYONENEW';
    font-weight: 400;
    font-size: 16px;
    color: #000;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_custom_checkbox_title span {
    padding-left: 7px;
    font-weight: 400;
    font-size: 13px;
    color: #6a6f77;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list {
    overflow: hidden;
    margin-top: 7px;
    margin-bottom: 35px;
    padding-left: 43px;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li {
    float: left;
    position: relative;
    width: 290px;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li input[type="checkbox"] {
    opacity: 0;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li input[type="checkbox"].com_custom_checkbox1 + label {
    top: 32px;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li .add_product_info_img {
    float: left;
    width: 88px;
    border: 1px solid #dddfe2;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li .add_product_info_img img {
    width: 88px;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li .add_product_info_wrap {
    float: left;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li .add_product_info_wrap .add_product_title {
    margin-top: 29px;
    margin-bottom: 7px;
    padding-left: 10px;
}

.add_product_title {
    display: block;
    margin-top: 11px;
    font-family: 'CJONLYONENEW';
    font-weight: 700;
    font-size: 14px;
    color: #373e46;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li .add_product_info_wrap .add_product_price {
    padding-left: 10px;
}

.add_product_price {
    font-weight: 400;
    font-size: 14px;
    color: #000;
}
.add_product_sale_price {
    padding-left: 6px;
    font-weight: 400;
    font-size: 12px;
    color: #6a6f77;
    text-decoration: line-through;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li {
    float: left;
    position: relative;
    width: 290px;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li input[type="checkbox"] {
    opacity: 0;
}

input[type="checkbox"].com_custom_checkbox1 {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    clip: rect(0,0,0,0);
    border: 0;
}
.com_cart_list_wrap .com_list_style1 > li .com_custom_checkbox_wrap .com_checkbox_list li input[type="checkbox"].com_custom_checkbox1 + label {
    top: 32px;
}
.com_cart_list_wrap .com_list_style1 > li .btn_addsel ~ .product_info_btn_wrap {
    margin-bottom: 48px;
}

.com_cart_list_wrap .com_list_style1 > li .product_info_btn_wrap {
    float: left;
    overflow: hidden;
    width: 84px;
    margin: 8px 19px 28px 25px;
}
.com_cart_list_wrap .com_list_style1 > li .product_info_btn_wrap a:first-child {
    margin-top: 0;
}

.com_cart_list_wrap .com_list_style1 > li .product_info_btn_wrap a {
    display: block;
    float: left;
    width: 100%;
    height: 32px;
    margin-top: 10px;
    font-weight: 500;
    font-size: 13px;
    color: #fff;
    line-height: 32px;
    text-align: center;
    background-color: #4b4f56;
}
.com_cart_list_wrap .com_list_style1 > li .btn_product_delect {
    float: left;
    width: 22px;
    height: 22px;
    margin-top: 33px;
    font-size: 0;
    background: transparent url(https://img.cgv.co.kr/R2014/images/giftstore/common/bg_closedBtn.png) center center scroll no-repeat;
    border: 1px solid #bebebe;
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
	
	$(".btn_change").on('click',function(){
		var qty = $('.com_form_count').val();
		var price = $('.product_info_one_price').text();
		var total = qty * price;
		$('.product_info_price').text(total);
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
							<a href="#">영화관람권</a>
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
			<div class="cart_step_wrap">
				<ul class="cart_step step_unit4">
					<li class="step0 active"><span>STEP 01</span><strong>장바구니</strong></li>
					<li class="step1"><span>STEP 02</span><strong>선물정보 입력</strong></li>
					<li class="step2"><span>STEP 03</span><strong>결제하기</strong></li>
					<li class="step3"><span>STEP 04</span><strong>결제완료</strong></li>
				</ul>
			</div><!-- cart_step_wrap -->
			<div class="com_cart_list_wrap">
				<p class="cart_allchecker_wrap">
					<input type="checkbox" id="checkboxall" class="com_custom_all_checkbox com_custom_checkbox" checked="checked">
					<label for="checkboxall">전체선택</label> <strong class="com_custom_checkbox_product_name">상품명</strong> 
					<strong class="com_custom_checkbox_sel_price">판매금액</strong> 
					<strong class="com_custom_checkbox_cnt">수량</strong> 
					<strong class="com_custom_checkbox_price">구매금액</strong> 
					<strong class="com_custom_checkbox_product_sel">선택</strong>
				</p>


				<ul class="com_list_style1">
					<li class="" id="cart_item_idx_744927">
						<input type="checkbox" id="checkbox744927" name="checkbox" value="744927" class="com_custom_checkbox" checked="checked">
						<label for="checkbox744927"></label> 
						<a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100019" class="product_info_img">
							<img src="../${cart.gift_image }" alt="${cart.gift_name }"> 
							<strong class="product_info_name">${cart.gift_name }</strong> 
							<span class="product_info_origin" id="spanOriginName744927">${cart.gift_detail } 
								<span id="spanSubName744927">/ 추가구매 상품 없음</span>
							</span>
						</a> <a href="#none" class="btn_addsel" id="btn_addsel744927">추가 구매상품 변경</a>
						<div class="com_custom_checkbox_wrap">
							<p class="com_custom_checkbox_title">
								<strong>추가구매 상품</strong><span>복수선택 가능(최대 3개)</span>
							</p>
							<ul class="com_checkbox_list">
								<li class="" id="100016"><input type="checkbox" id="checkbox1100016" value="100016" name="744927" class="com_custom_checkbox1"> <label for="checkbox1100016"></label>
									<div class="add_product_info_img">
										<img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459090904400.jpg" alt="즉석구이오징어(몸통)">
									</div>
									<p class="add_product_info_wrap">
										<strong class="add_product_title">즉석구이오징어(몸통)</strong> <span class="add_product_price">3,500</span> <span class="add_product_sale_price">5,000</span>
									</p>
								</li>
								<li class="" id="100017">
									<input type="checkbox" id="checkbox2100017" value="100017" name="744927" class="com_custom_checkbox1"> 
									<label for="checkbox2100017"></label>
									<div class="add_product_info_img">
										<img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459092398190.jpg" alt="칠리치즈나쵸">
									</div>
									<p class="add_product_info_wrap">
										<strong class="add_product_title">칠리치즈나쵸</strong> 
										<span class="add_product_price">3,400</span> 
										<span class="add_product_sale_price">4,900</span>
									</p>
								</li>
							</ul>
							<div class="com_btn_wrap">
								<a href="#none" class="com_btn_cancel" >취소하기</a>
								<a href="#none" >변경하기</a>
							</div>
						</div>
						<div class="product_info_wrap not_sale">
							<span class="product_info_one_price" id="product_info_one_price744927">${cart.gift_payment }</span>
						</div> <input type="hidden" id="hid_PKAG_CNT" value="1"> <input type="hidden" id="hid_OrderCnt744927" class="goodscnt" value="2">
						<div class="product_info_cnt_wrap">
							<input type="text" class="com_form_count com_form_count744927" id="com_form_count744927"/>
							<a href="#none" class="btn_change">변경</a>
						</div> <span class="product_info_price" id="totalgoodsprice744927"></span>
						<div class="product_info_btn_wrap">
							<a href="#none">바로구매</a>
							<a href="#none">선물하기</a>
						</div> <a href="#" class="btn_product_delect">삭제</a></li>
				</ul>
				<a href="#none" class="btn_del_selected">
					선택상품 삭제<span id="spanSelCnt" style="display: none;">1</span>
				</a>
				<span id="notimsg">장바구니에 담긴 상품은 최대 30일까지 보관됩니다.</span>


				<table class="com_cart_total_price_wrap" summary="총 상품 금액, 할인금액을 합산한 총 결제예정 금액 표기">
					<caption>총 결제 예정금액 표</caption>
					<colgroup>
						<col style="width: 30%">
						<col style="width: 36%">
						<col style="width: 34%">
					</colgroup>
					<thead>
						<tr>
							<th>총 상품 금액</th>
							<th>할인금액</th>
							<th>총 결제 예정금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<strong><span id="sTot_Sales_Price">0</span></strong>
							</td>
							<td class="com_cart_calculator_marker">
								<strong><span id="s_Tot_Promotion">0</span></strong>
							</td>
							<td>
								<strong class="cart_total_price"><span id="sTot_Promotion_Price">0</span></strong>
							</td>
						</tr>
					</tbody>
				</table>


				<div class="com_btn_wrap pT60">
					<a href="#none" class="btn_style0 "  disabled="disabled">선물하기</a>
					<a href="#none" class="btn_style0 "  disabled="disabled">구매하기</a>
				</div>
			</div>
		</div><!-- content -->
	</div><!-- container -->	
	<jsp:include page="/WEB-INF/views/cgv/layout/foot.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/cgv/layout/asideBanner.jsp"></jsp:include>
</div>
</body>
</html>