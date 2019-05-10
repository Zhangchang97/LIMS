<%--
  Created by IntelliJ IDEA.
  User: 10641
  Date: 2019/5/10
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>实验仪器预约</title>
    <link rel="stylesheet" href="asserts/css/style.default.css" type="text/css" />
    <script type="text/javascript" src="asserts/js/plugins/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.cookie.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.validate.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/charCount.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/ui.spinner.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="asserts/js/custom/general.js"></script>
    <script type="text/javascript" src="asserts/js/custom/forms.js"></script>

    <!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="asserts/css/style.ie9.css"/>
    <![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="asserts/css/style.ie8.css"/>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="asserts/http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>

<body class="withvernav">

<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">河海大学<span>材料实验室预约管理系统</span></h1>
            <span class="slogan">后台管理系统</span>

            <br clear="all" />

        </div><!--left-->

        <div class="right">
            <!--<div class="notification">
                <a class="count" href="notifications.html"><span>9</span></a>
            </div>
            -->
            <div class="userinfo">
                <span>当前用户：1561310234 （张畅）</span>
            </div><!--userinfo-->
        </div><!--right-->
    </div><!--topheader-->

    <div class="vernav2 iconmenu">
        <ul>
            <li><a href="index_teacher" class="tables">预约信息表</a></li>
            <li class="current"><a href="#formsub" class="editor">添加课程或仪器</a>
                <span class="arrow"></span>
                <ul id="formsub">
                    <li><a href="addexperiment">新增实验课程</a></li>
                    <li class="current"><a href="addfacility">新增实验仪器</a></li>
                </ul>
            </li>
            <li><a href="recordpage" class="elements">记录</a></li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->

    <div class="centercontent">

        <div class="pageheader">
            <h1 class="pagetitle">新增实验仪器信息表格</h1>
            <span class="pagedesc">按照提示将新增的实验课仪器的信息填入下列表格中</span>
        </div><!--pageheader-->

        <div id="contentwrapper" class="contentwrapper">

            <div id="basicform" class="subcontent">

                <div class="contenttitle2">
                    <h3>新增实验室仪器信息</h3>
                </div><!--contenttitle-->

                <form class="stdform" action="addfacility_add" method="post" accept-charset="UTF-8">
                    <p>
                        <label>仪器名称</label>
                        <span class="field">
                            <input type="text" name="name" class="smallinput" value=""/>
                        </span>
                    </p>

                    <p>
                        <label>仪器级别</label>
                        <span class="field">
                            <input type="text" name="level" class="smallinput" value=""/>
                        </span>
                    </p>

                    <p>
                        <label>总共可预约仪器数量</label>
                        <span class="field">
                            <input type="text" name="totalbooking" class="smallinput" value=""/>
                        </span>
                    </p>

                    <input type="text" name="id" value="" style="visibility: hidden"/>


                    <br clear="all" /><br />

                    <p class="stdformbutton">
                        <button class="submit radius2">提交</button>
                        <input type="reset" class="reset radius2" value="撤销" />
                    </p>

                </form>

            </div><!--subcontent-->

        </div><!--contentwrapper-->

    </div><!-- centercontent -->


</div><!--bodywrapper-->

</body>
</html>
