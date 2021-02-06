<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
<style>

.content{
	position: relative;
    width: 980px;
    margin: 0 auto;
    clear: both;
    margin-bottom: 50px;
}
.event_title{
	position: relative;
	height: 51px;
    margin-top: 30px;
    border-bottom: 3px solid #241d1e;
}
.event_title>h3{
	display: inline-block;
    position: relative;
    height: inherit;
    margin: 0;
    background-image: none;
    color: #222;
    font-weight: 500;
    font-size: 36px;
    text-align: left;
    vertical-align: middle;
}
.eventnav_box{
	position: relative;
    height: 50px;
    border-bottom: 1px solid #ccc;
}
.eventnav_bar>li{
	display: inline-block;
    margin: 0 67px 0 0;
    line-height: 50px;
    font-size: 0;
}
.eventnav_bar>li>a.on{
	color: #e71a0f;
    font-weight: 600;
}
.eventnav_bar>li>a{
	font-size: 16px;
    font-weight: 500;
    line-height: 50px;
}
.redbutton{
	position: absolute;
    top: 11px;
    right: 0;
}
.round{
	line-height: 23px;
    font-weight: 500;
    font-size: 12px;
    text-align: center;
    vertical-align: middle;
    display: inline-block;
    position: relative;
    border-radius: 4px;
}
.round.red:last-child{
	margin-left: 3px;
}
.round.red{
	border: 2px solid #e71a0f;
    color: #e71a0f;
    padding: 0 5px 0;
}
.round.red.on{
	border: 2px solid #e71a0f;
    background-color: #e71a0f;
    color: #ffffff;
}
.event_emptybar{
	margin: 15px 0 0 0;
}
.ad_content{
	margin-top: 25px;
}
.ad_content:after{
	content:" ";
    clear: both;
    display: block;
}
.content_table{
	position: relative;
    width: 800px;
    float: left;
}
.content_table:first-child{
	float: left;
}
.content_clear{
	clear: both;
}
.content_clear:after{
	content:" ";
    clear: both;
    display: block;
}
.cf:before, .cf:after{
	content:" ";
	display: table;
}
.cf:after{
	clear: both;
}
.cf>li{
	width: 251px;
    height: 272px;
    border: 1px solid #dddfe2;
    margin: 0 13px 13px 0;
    float: left;
    background: #fff;
}
.cf>li>a{
	display: block;
    width: 100%;
    height: 100%;
}
.evt_title{
	width: 256px;
    height: 170px;
}
.evt_title>img{
	width: 251px;
    height: 170px;
}
.txt1{
	padding: 18px 11px 0 11px;
    height: 38px;
    vertical-align: top;
    font-size: 16px;
    text-decoration: none;
    color: #000;
    display: -webkit-box;
    overflow: hidden;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    white-space: normal;
    letter-spacing: -1px;
}
.txt2{
	color: #6a6f77;
    font-size: 13px;
    padding: 17px 11px 0 11px;
    letter-spacing: -0.5px;
}
.showmore{
	width: 100%;
    text-align: center;
    background: #f1f0e6;
    height: 50px;
    margin: 36px 0 0 0;
}
.showmore>strong {
	font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
    font-weight: 500;
}
.ad_aside{
	float: right;
}
.aside_box{
	padding-top: 0;
}
.aside_0, .aside_1{
	margin-bottom: 10px;
}
.popup_ad{
	content: " ";
	clear: both;
	display: block;
}
.foot{
	position: relative;
	padding: 0 0 147px;
	width: 100%;
	height: auto;
	margin: 0 auto;
}
.special_list{
	clear: both;
	overflow: hidden;
    width: 100%;
    border-top: 1px solid #949494;
    border-bottom: 1px solid #949494;
}
.special_list>ul{
	width: 980px;
    margin: 0 auto;
}
.special_list>ul>li{
	display: inline-block;
	float: left;
	margin-left: 22px;
	padding: 10px 0;
}
.special_list>ul>li:first-child {
	margin-left: 0px;
}
.special_list>ul>li>a{
	overflow: hidden;
	display: block;
    background-image: url(https://img.cgv.co.kr/R2014/images/sprite/common_sprite_area_v4_2016.png);
    background-repeat: no-repeat;
    text-indent: 100%;
    white-space: nowrap;
	height: 44px;
}
.special_list>ul>li>a.dx{
	width: 49px;
    background-position: 0 -768px;
}
.special_list>ul>li>a.imax{
	width: 59px;
    background-position: -74px -768px;
}
.special_list>ul>li>a.screen{
	width: 88px;
    background-position: -159px -768px;
}
.special_list>ul>li>a.sphere{
	width: 76px;
    background-position: -273px -768px;
}
.special_list>ul>li>a.tempur{
	width: 55px;
    background-position: -480px -768px;
}
.special_list>ul>li>a.gold{
	width: 84px;
    background-position: -567px -768px;
}
.special_list>ul>li>a.cine{
	width: 89px;
    background-position: -679px -768px;
}
.special_list>ul>li>a.privatecine{
	width: 86px;
    background-position: 0 -826px;
}
.special_list>ul>li>a.cinekids{
	width: 70px;
    background-position: -113px -826px;
}
.special_list>ul>li>a.cineforet{
	width: 120px;
    background-position: -207px -826px;
}	
.coinfo{
	clear: both;
	padding-top: 28px;
	position: relative;
    width: 980px;
    margin: 0 auto;
}
.cjlogo{
	overflow: hidden;
	display: block;
    background-image: url(https://img.cgv.co.kr/R2014/images/sprite/common_sprite_area_v4_2016.png);
    background-repeat: no-repeat;
    text-indent: 100%;
    white-space: nowrap;
    position: absolute;
    top: 65px;
    left: 0;
    width: 90px;
    height: 43px;
    background-position: -145px -319px;
}
.policy{
	width: auto;
    letter-spacing: 0px;
    margin: 0 -12px;
}
.policy>ul:after, .policy>ul:before{
	content: " ";
	clear: both;
	display: block;
}
.policy>ul>li{
	display: inline-block;
    float: left;
    background: url(https://img.cgv.co.kr/R2014/images/common/bg/bg_li_vline2.gif) no-repeat 0 1px;
}
.policy>ul>li:first-child {
	background-image: none;
}
.policy>ul>li>a{
	display: block;
	padding: 0 9px;
    font-weight: 500;
    font-size: 13px;
    color: #444444;
    text-decoration: none;
    vertical-align: middle;
    letter-spacing: -1px;
}
.policy>ul>li>a.important{
	color: #e7612e;
}
.sns{
	position: absolute;
    display: inline-block;
    right: 182px;
    top: 63px;
}
.sns>a{
	float: left;
    width: 34px;
    height: 34px;
    margin-left: 2px;
    overflow: hidden;
    display: block;
    background-image: url(https://img.cgv.co.kr/R2014/images/sprite/common_sprite_area_v4_2016.png);
    background-repeat: no-repeat;
    text-indent: 100%;
    white-space: nowrap;
}
.sns>a:first-child {
	margin-left: 0;
}
.sns>a.sns_facebook{
	background-position: -509px -429px;
}
.sns>a.sns_twitter{
	background-position: -551px -429px;
}
.sns>a.sns_insta{
	background-position: -593px -429px
}
.address{
	padding: 20px 0 0 108px;
    font-size: 12px;
    color: #555555;
}

.address>address{
	display: block;
	font-style: normal;
    height: 12px;
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
.address>p{
	margin-top: 4px;
}
span{
	font-size: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
	word-break: break-all;
}
.address>p.vl>span{
	display: inline-block;
    padding-left: 5px;
    margin-left: 5px;
    height: 12px;
    border-left: 1px solid #c0c0c0;
}
.address>p.vl:before, .address>p.vl:after{
	content: " ";
	clear: both;
	display: block;
}
.address>p.vl>span:first-child {
	padding-left: 0;
    margin-left: 0;
    border-left: 0;
}
.address>p.vl>.btn_gofamily{
	margin-left: 2px;
    vertical-align: 2px;
}
.address>p.vl>.copyright{
	position: absolute;
    right: 0;
    bottom: 0;
    font-family: Helvetica, verdana, sans-serif;
    font-size: 11px;
}
.coinfo>.familysite{
	bottom: 22px;
    right: 0;
}
.hidden{
	font: 0/0 a;
    height: 0;
    overflow: hidden;
    position: absolute;
    visibility: hidden;
    width: 0;
}
select{
	line-height: 27px;
    height: 29px;
    padding: 3px 5px;
    border: 1px solid #b4b3aa;
}
.coinfo>.familysite>select{
	width: 140px;
    background: transparent;
    border: 1px solid #999;
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
.familysite button[type='button']{
	width: 29px;
    height: 29px;
    background-color: #666;
    color: #fdfcf0;
    font-family: verdana, sans-serif;
    font-size: 10px;
    font-weight: bold;
    text-align: center;
}
</style>

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
			<div class="event_title">
				<h3>EVENT</h3>
			</div>
			<div class="eventnav_box">
				<ul class="eventnav_bar">
					<li>
						<a href="http://www.cgv.co.kr/culture-event/event/defaultNew.aspx?mCode=001" title="" class="on">SPECIAL</a>
					</li>
					<li>
						<a href="http://www.cgv.co.kr/culture-event/event/defaultNew.aspx?mCode=004">영화/예매</a>
					</li>
					<li>
						<a href="cgv.co.kr/culture-event/event/defaultNew.aspx?mCode=008">멤버쉽/CLUB</a>
					</li>
					<li>
						<a href="http://www.cgv.co.kr/culture-event/event/defaultNew.aspx?mCode=005">CGV 극장별</a>
					</li>
					<li>
						<a href="http://www.cgv.co.kr/culture-event/event/defaultNew.aspx?mCode=006">제휴/할인</a>
					</li>
				</ul><!-- eventnav_bar -->
				<div class="redbutton">
					<a href="http://www.cgv.co.kr/user/mycgv/event/result_list.aspx" class="round red on">
						당첨자 발표
					</a>
					<a href="http://www.cgv.co.kr/culture-event/event/end-list.aspx" class="round red on">
						종료된 이벤트
					</a>
				</div>
			</div><!-- eventnav_box -->
			<div class="event_emptybar"></div>
			<div class="ad_content">
				<div class="content_table">
					<div class="content_clear">
						<ul class="cf">
							<c:forEach var="n" items="${list }">
								<li>
									<a class="title_0" href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31435&menu=001">
										<div class="evt_title">
											<img src="../${n.event_sni }" alt="" />
										</div>
										<div class="evt_desc">
											<p class="txt1">${n.event_name }</p>
											<p class="txt2">${n.event_state }</p>
										</div>
									</a>
								</li>
							</c:forEach>
						</ul>
					</div><!-- content_clear -->
					<button type="button" class="showmore">
						<strong>더보기</strong>
					</button>
				</div><!-- content_table -->
				<div class="ad_aside">
					<div class="aside_box">
						<div class="aside_0">
							<iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle" width="160" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="M_Rectangle" id="M_Rectangle"></iframe>
						</div>
						<div class="aside_0">
							<iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@C_Rectangle" width="160" height="300" title="기업광고-CGV" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="C_Rectangle" id="C_Rectangle"></iframe>						
						</div>
						<div class="aside_1">
							<iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Image_text" width="160" height="35" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Image_text" id="Image_text"></iframe>
						</div>
					</div>
				</div>
			</div><!-- ad_content -->
		</div><!-- content -->
	</div><!-- container -->
	<jsp:include page="/WEB-INF/views/cgv/layout/foot.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/cgv/layout/asideBanner.jsp"></jsp:include>
</div>
</body>
</html>