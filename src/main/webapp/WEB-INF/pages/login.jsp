<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>${title}</title>
</head>
<body>
<br/>
    <form name='loginForm'
        		  action="<c:url value='../j_spring_security_check' />" method='POST'>
        <h2>Login</h2>
        UserName <input type="text" id="username" name="j_username" placeholder="Username"  /><br/>
        Password <input type="password" id="password" name="j_password" placeholder="Password" /><br/>
        <button>Submit</button></br>
    </form>
    <br/>
    <c:url value="../services/signup" var="signupurl" />`
    <a href="${signupurl}">sign up</a>


    <br/><br/>

        <form name='facebookSocialloginForm'
            		  action="<c:url value='../auth/facebook?scope=email,user_about_me,user_birthday' />" method='POST'>
            <h2>Login with Facebook</h2>
            <button>Login with Facebook</button>

        </form>

        <br/><br/>

        <form name='TwitterSocialloginForm'
            		  action="<c:url value='../auth/twitter?scope=email,user_about_me,user_birthday' />" method='POST'>
            <h2>Login with Twitter</h2>
            <button>Login with Twitter</button>

        </form>

        <br/><br/>

        <form name='LinkedInSocialloginForm'
            		  action="<c:url value='../auth/linkedin' />" method='POST'>
            <h2>Login with Linked In</h2>
            <button>Login with Linked In</button>

        </form>


</body>
</html>