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
            <li><a href="index" class="tables">预约信息表</a></li>
            <li class="current"><a href="#formsub" class="editor">预约</a>
                <span class="arrow"></span>
                <ul id="formsub">
                    <li><a href="experimentpage">实验课程预约</a></li>
                    <li class="current"><a href="instrumentpage">实验仪器预约</a></li>
                </ul>
            </li>
            <li><a href="recordpage" class="elements">记录</a></li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->

    <div class="centercontent">

        <div class="pageheader">
            <h1 class="pagetitle">预约</h1>
            <span class="pagedesc">将预约信息填写到下列表项中</span>
        </div><!--pageheader-->

        <div id="contentwrapper" class="contentwrapper">

            <div id="basicform" class="subcontent">

                <div class="contenttitle2">
                    <h3>实验室仪器预约</h3>
                </div><!--contenttitle-->

                <form class="stdform" action="/instrumentpage_student" method="post">

                    <p>
                        <label>实验仪器</label>
                        <span class="field">
                            <select name="name" class="uniformselect">
                                <c:forEach var="f" items="${facilityinfo}" varStatus="Status">
                                    <option value="${f.name}">${f.name}</option>
                                </c:forEach>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>预约人姓名</label>
                        <span class="field"><input type="text" name="bookingman" class="smallinput" /></span>
                        <small class="desc">如：张三</small>
                    </p>
                    <p>
                        <label>预约数量</label>
                        <span class="field">
                            <input type="text" name="bookingnumber" class="smallinput"/>
                        </span>
                    </p>

                    <p>
                        <label>时间选择</label>
                        <span class="field">
                            <select name="time" class="uniformselect">
                            	<option value="8:00-9:35">8:00-9:35</option>
                                <option value="9:50-11:25">9:50-11:25</option>
                                <option value="2:00-3:35">2:00-3:35</option>
                                <option value="3:55-5:35">3:55-5:35</option>
                            </select>
                        </span>
                    </p>


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
