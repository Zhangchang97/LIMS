<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>河海大学材料实验室预约管理系统登录页面</title>
    <link rel="stylesheet" href="asserts/css/style.default.css" type="text/css" />
    <script type="text/javascript" src="asserts/js/plugins/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.cookie.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="asserts/js/custom/general.js"></script>
    <script type="text/javascript" src="asserts/js/custom/index.js"></script>
    <!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="asserts/css/style.ie9.css"/>
    <![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="asserts/css/style.ie8.css"/>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="asserts/js/plugins/css3-mediaqueries.js"></script>
    <![endif]-->
</head>

<body class="loginpage">
<div class="loginbox">
    <div class="loginboxinner">

        <div class="logo">
            <h1 class="logo"><br>河海大学<br><br><span>材料实验室预约管理系统</span></h1>
            <span class="slogan">后台管理系统</span>
        </div><!--logo-->

        <br clear="all" /><br />

        <div class="nousername">
            <div class="loginmsg">密码不正确.</div>
        </div><!--nousername-->

        <div class="nopassword">
            <div class="loginmsg">密码不正确.</div>
            <div class="loginf">
                <div class="thumb"><img alt="" src="asserts/images/thumbs/avatar1.png" /></div>
                <div class="userlogged">
                    <h4></h4>
                    <a href="index.html">Not <span></span>?</a>
                </div>
            </div><!--loginf-->
        </div><!--nopassword-->

        <form id="login" action="/login" method="post">

            <div class="username">
                <div class="usernameinner">
                    <input type="text" name="username" id="username" />
                </div>
            </div>

            <div class="password">
                <div class="passwordinner">
                    <input type="password" name="password" id="password" />
                </div>
            </div>

            <button>登录</button>

            <div class="keep"><input type="checkbox" /> 记住密码</div>

        </form>

    </div><!--loginboxinner-->
</div><!--loginbox-->


</body>
</html>