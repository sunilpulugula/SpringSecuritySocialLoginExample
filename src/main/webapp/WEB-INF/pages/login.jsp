<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>${title}</title>
	<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css'>
	<style>

 /* normalize */
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0;padding:0;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
.underline{	padding-bottom:5px;	border-bottom: 1px solid #eee; margin:0 0 20px 0;}/* Add 5px bottom padding and a underline */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end normalize*/
body{
	font-family: 'Rokkitt', serif;
	font-size:100%;		
	background-color: rgb(13, 151, 214);
	background: url(images/linear_bg_2.png);
	background-repeat: repeat-x;
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(13, 151, 214)), to(#2F2727));
	background: -webkit-linear-gradient(top, #2F2727, rgb(13, 151, 214));
	background: -moz-linear-gradient(top, #2F2727, rgb(13, 151, 214));
	background: -ms-linear-gradient(top, #2F2727, rgb(13, 151, 214));
	background: -o-linear-gradient(top, #2F2727, rgb(13, 151, 214));
}
.wrap{
	width: 50%;
	margin: 0 auto;
}
/*start-login-form*/
.login_form {
	width: 55%;
	//background: url("../images/border.png") no-repeat 331px 77px;
	float: left;
	position: relative;
}
.login-form{
	background:#fff;
	padding: 7%;
	margin-top: 15%;
	position: relative;
	border-radius: 12px;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	-o-border-radius: 12px;
}
.login-form h1{
	font-size: 1.7em;
	color:#474646;
}
.login_form ul {
    list-style-type:none;
	list-style-position:outside;
	margin:0px;
	padding:0px;
}
.login_form li{
	position:relative;
} 
	/* form element visual styles */
	.login_form li{ 
		float: left;
		outline: none;
		border: 1px solid #DDDDDD;
		font-size: 1.2em;
		color: #B6B6B6;
		width: 78.5%;
		font-weight: 600;
		margin-top: 8%;
		position: relative;
		height: 42px;
		border-radius: 2px;
		-webkit-border-radius: 2px;
		-moz-border-radius: 2px;
		-o-border-radius: 2px;
		transition: all 0.5s ease-out;
		-webkit-transition: all 0.5s ease-out;
		-moz-transition: all 0.5s ease-out;
		-ms-transition: all 0.5s ease-out;
		-o-transition: all 0.5s ease-out;
	}
	.login_form li:hover{ 
		border: 1px solid #79B42B;
		color:#79B42B;
	}
	.login_form input {
		float: left;
		font-size: 1.1em;
		font-family: 'Rokkitt', serif;
		padding: 7px 14px;
		width: 75%;
		border: none;
		outline: none;
		color:#B6B6B6;
	}
	.login_form p {
		float: right;
		padding: 8px 7px;
		width: 9.3%;
		cursor: pointer;
	}
	.login_form input[type="submit"] {
		border: none;
		outline: none;
		cursor: pointer;
		color: #fff;
		background: #79B42B;
		width: 79%;
		padding: 12px;
		font-size: 1.3em;
		letter-spacing:1px;
		margin: 28px 0 30px;
		transition: all 0.5s ease-out;
		-webkit-transition: all 0.5s ease-out;
		-moz-transition: all 0.5s ease-out;
		-ms-transition: all 0.5s ease-out;
		-o-transition: all 0.5s ease-out;
		border-radius: 2px;
		-webkit-border-radius: 2px;
		-moz-border-radius: 2px;
		-o-border-radius: 2px;
	}	
.login_form input[type="submit"]:hover {
	background:#88C470;
}	
.login_form input[type="checkbox"] {
	width: 21px;
	vertical-align: middle;
	padding: 5px;
	float:left;
}
.login_form i{
	font-size: 1.2em;
	color:#B6B6B6;
	width: 40%;
	float: left;
}
.forgot{
	float: right;
	margin-right: 77px;
	width: 35%;
}
.forgot a{
	color:#B6B6B6;
	font-size: 1.1em;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}
.forgot a:hover{
	color:#79B42B;
}
/* === Form hints === */
.form_hint {
	color: #fff;
	text-align: center;
	background:#79B42B;
	border-radius: 3px 3px 3px 3px;
	font-size:1.2em;
	margin-left: 8px;
	padding: 6px 23px;
	z-index: 999;
	position: absolute;
	right:-224px;
	bottom: 3px;
	font-weight:100;
	display: none;
}
.form_hint::before {
	content: '';
	position: absolute;
	bottom: 9px;
	left: -9px;
	width: 0;
	height: 0;
	border-bottom: 10px solid transparent;
	border-right: 10px solid #79B42B;
	border-top: 10px solid transparent;
}
.login_form input:focus + .form_hint {display: inline;}
.login_form input:required:valid + .form_hint {color: #000;
	background: #79B42B;}
.login_form input:required:valid + .form_hint::before {color:#28921f;}
/*end-login-form*/
/*start-account*/
.account{
	float:right;
	width: 45%;
}
.account h2 a{
	color:#71B8E4;
	display: block;
	font-size: 1.3em;
	font-weight: 400;
	text-align:right;
	margin-top: 3px;
	transition: all 0.5s ease-out;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}
.account h2 a:hover{
	color:#79B42B;
}

.account button{
	background: transparent;
    border: 0;
    padding: 3px 6px;
    font-family: inherit;
    font-size: inherit;
	cursor: pointer;
}
.span {
	margin-top: 10.4%;
	display: block;
	width: 100%;
	cursor: pointer;
	background: #3B5998;
	transition: all 0.5s ease-out;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}
.span img {
	background:#354F88;
	padding: 7px;
	float: left;
}
.span i {
	color: #fff;
	padding: 9px 14px;
	float: left;
	font-size: 1.6em;
	font-weight: 400;
}
.span:hover {
	background:#354F88;
}
.span1 {
	margin-top: 9%;
	width: 100%;
	background: #45B0E3;
	transition: all 0.5s ease-out;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}
.span1 img {
	background: #40A2D1;
	padding: 7px;
	float: left;
}
.span1 i {
	color: #fff;
	padding: 9px 20px;
	float: left;
	font-size: 1.6em;
	font-weight: 400;
}
.span1:hover {
	background:#40A2D1;
}
.span2 {
	margin-top: 9%;
	width: 100%;
	background: #2F93C3;
	transition: all 0.5s ease-out;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}
.span2 img {
	background: #1077A9;
	padding: 7px;
	float: left;
}
.span2 i {
	color: #fff;
	padding: 9px 17px;
	float: left;
	font-size: 1.6em;
	font-weight: 400;
}
.span2:hover {
	background: #1077A9;
}

.span3 {
	margin-top: 9%;
	width: 100%;
	background: #2F93C3;
	transition: all 0.5s ease-out;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}
.span3 img {
	background: #1077A9;
	padding: 7px;
	float: left;
}
.span3 i {
	color: #fff;
	padding: 9px 17px;
	float: left;
	font-size: 1.6em;
	font-weight: 400;
}
.span3:hover {
	background: #1077A9;
}


/*end-checkbox*/
/*-----start-responsive-design------*/
@media only screen and (max-width: 1440px){
	.wrap{
		width:56%;
	}
	.span i {
		font-size: 1.4em;
	}
	.span1 i {
		font-size: 1.4em;
	}
	.span2 i {
		font-size: 1.4em;
	}
	.span3 i {
    		font-size: 1.4em;
    	}
	.login_form p {
		padding: 8px 7px;
	}
}
@media only screen and (max-width: 1366px){
	.wrap{
		width:59%;
	}
	.span i {
		font-size: 1.4em;
	}
	.span1 i {
		font-size: 1.4em;
	}
	.span2 i {
		font-size: 1.4em;
	}
	.span3 i {
    		font-size: 1.4em;
    	}
	.login_form p {
		padding: 8px 3px;
	}
}
@media only screen and (max-width: 1280px){
	.wrap{
		width:63%;
	}
	.span i {
		font-size: 1.3em;
	}
	.span1 i {
		font-size: 1.3em;
	}
	.span2 i {
		font-size: 1.3em;
	}.span3 i {
     		font-size: 1.3em;
    }
}
@media only screen and (max-width: 1024px){
	.wrap{
		width:79%;
	}
	.login_form input {
		width: 77%;
	}
	.span i {
		font-size: 1.2em;
		padding: 13px 14px;
	}
	.span1 i {
		font-size: 1.2em;
		padding: 13px 14px;
	}
	.span2 i {
		font-size: 1.2em;
		padding: 13px 14px;
	}
	.span3 i {
    		font-size: 1.2em;
    		padding: 13px 14px;
    	}
	.checkbox {
		margin-right: 0px;
	}
}
@media only screen and (max-width: 800px){
	.wrap{
		width:95%;
	}
	.span i {
		padding: 14px 12px;
		font-size: 1.2em;
	}
	.span1 i {
		font-size: 1.2em;
		padding: 13px 20px;
	}
	.span2 i {
		font-size: 1.2em;
		padding: 13px 20px;
	}
	.span3 i {
    		font-size: 1.2em;
    		padding: 13px 20px;
    	}
	.login_form {
		//background: url("../images/border.png") no-repeat 313px 77px;
	}
	.forgot {
		margin-right: 65px;
		width: 38%;
	}
	.checkbox {
		margin-right: 0px;
	}
}
@media only screen and (max-width: 640px){
	.wrap{
		width:95%;
	}
	.login-form h1 {
		font-size: 1.3em;
	}
	.login_form li {
		height: 37px;
		margin-top: 7.3%;
	}
	.login_form input {
		font-size: 1em;
		padding: 5px 14px;
	}
	.login_form input[type="submit"] {
		font-size: 1.2em;
		padding: 10px;
		margin: 22px 0 30px;
	}
	
	.forgot a {
		font-size: 1em;
	}
	.span i {
		padding: 11px 6px;
		font-size: 1em;
	}
	.span img {
		padding: 2px;
	}
	.span1 img {
		padding: 2px;
	}
	.span1 i {
		padding: 11px 6px;
		font-size: 1em;
	}
	.span2 img {
		padding: 2px;
	}
	.span2 i {
		padding: 11px 6px;
		font-size: 1em;
	}
	.span3 img {
    		padding: 2px;
    	}
    .span3 i {
    		padding: 11px 6px;
    		font-size: 1em;
    }
	.login_form {
		//background: url("../images/border.png") no-repeat 247px 41px;
	}
	.forgot {
		margin-right: 27px;
		width: 39%;
		margin-top: 6px;
	}
	.account h2 a {
		font-size: 0.9em;
	}
	.checkbox i {
		bottom: 10px;
	}

}
@media only screen and (max-width: 480px){
	.wrap{
		width:56%;
	}
	.login_form {
		width: 100%;
		background:none;
	}
	.login_form li {
		width: 99.5%;
	}
	.login_form input[type="submit"] {
		width: 100%;
		margin: 22px 0 13px;
	}
	.forgot {
		width: 82%;
		margin-top: 7px;
		margin-right: 41px;
	}
	.account {
		width: 100%;
	}
	.account h2 a {
		text-align: left;
		margin-top: 15px;
	}
	.span {
		margin-top: 3.4%;
	}
	.form_hint {
		font-size: 0.8em;
		padding: 6px 5px;
		right: -128px;
		bottom: 6px;
	}
	.form_hint::before {
		bottom: 5px;
	}
	.checkbox i {
		bottom: 34px;
	}
	.footer p {
		font-size: 1.1em;
	}
}
@media only screen and (max-width: 320px){
	.wrap{
		width:85%;
	}
	.login_form {
		width: 100%;
		background:none;
	}
	.login_form li {
		width: 99.5%;
	}
	.login_form input[type="submit"] {
		width: 100%;
		margin: 22px 0 13px;
	}
	.forgot {
		width: 82%;
		margin-top: 7px;
		margin-right: 41px;
	}
	.account {
		width: 100%;
	}
	.account h2 a {
		text-align: left;
		margin-top: 15px;
	}
	.span {
		margin-top: 3.4%;
	}
	.form_hint {
		font-size: 0.8em;
		padding: 6px 5px;
		right: -128px;
		bottom: 6px;
	}
	.form_hint::before {
		bottom: 5px;
	}
	.checkbox i {
		bottom: 34px;
	}
	.footer p {
		font-size: 1em;
	}
}
	
	</style>	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
</head>
<body>			
		<div class="wrap">

			<div class="login-form">
		
				<form class="login_form" name='loginForm' action="<c:url value='../j_spring_security_check' />" method='POST'>
					<h1>Login Into Your Account</h1>
					<ul>
						<li>
							<input type="text" class="textbox1" id="username" name="j_username" placeholder="Username" required="">
							<p><img src="../images/contact.png" alt=""></p>
						</li>
						<li>
							<input type="password" id="password" name="j_password" class="textbox2" placeholder="Password">
							<p><img src="../images/lock.png" alt=""></p>
						</li>
					</ul>
					<input type="submit" name="Sign In" value="Sign In">
					<div class="clear"></div>	
					<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Remember me</label>
					<div class="forgot">
						<a href="#">forgot password?</a>
					</div>	
					<div class="clear"></div>	
				</form>
				<c:url value="../services/signup" var="signupurl" />`
			<div class="account">
				<h2><a href="${signupurl}">Don't have an account? Sign Up!</a></h2>
				<div class="span">
					<form name='facebookSocialloginForm'
            		  action="<c:url value='../auth/facebook?scope=email,user_about_me,user_birthday' />" method='POST'>
							<img src="../images/facebook.png" alt="">
							<button type="submit">
								<i>Sign In with Facebook</i>
							</button>	
							<div class="clear"></div>
					</form>		
				</div>	
				<div class="span1">
					<form name='TwitterSocialloginForm'
            		  action="<c:url value='../auth/twitter?scope=email,user_about_me,user_birthday' />" method='POST'>
						<img src="../images/twitter.png" alt="">
						<button type="submit">
							<i>Sign In with Twitter</i>
						</button>			
						<div class="clear"></div>
					</form>
				</div>
				<div class="span2">
					<form name='LinkedInSocialloginForm'
            		  action="<c:url value='../auth/linkedin' />" method='POST'>
						<img src="../images/linkedin.png" alt="">
						<button type="submit">
							<i>Sign In with Linkedin</i>
						</button>	
						<div class="clear"></div>
					</form>
				</div>
				<div class="span3">
                	<form name='GoogleSocialloginForm'
                      action="<c:url value='../auth/google' />" method='POST'>
                		<img src="../images/gmail2.png" alt="">
                		<button type="submit">
                			<i>Sign In with Google</i>
                		</button>
                		<input type="hidden" name="scope" value="https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo#email https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/tasks https://www-opensocial.googleusercontent.com/api/people https://www.googleapis.com/auth/plus.login" />
                		<div class="clear"></div>
                	</form>
                				</div>
			</div>	
			<div class="clear"></div>	
		</div>

	</div>


</body>
</html>
