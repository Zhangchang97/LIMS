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
            <li><a href="#formsub" class="editor">预约</a>
                <span class="arrow"></span>
                <ul id="formsub">
                    <li class="current"><a href="experimentpage">实验课程预约</a></li>
                    <li><a href="instrumentpage">实验仪器预约</a></li>
                </ul>
            </li>
            <li class="current"><a href="recordpage" class="elements">记录</a></li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->

    <div class="centercontent">

        <div class="pageheader">
            <h1 class="pagetitle">记录表格</h1>

            <ul class="hornav">
                <li class="current"><a href="#reservationrecord">预约记录</a></li>
                <li class=""><a href="#instrumentrecord">仪器设备使用记录</a></li>
                <li class=""><a href="#consumablesrecord">耗材信用记录</a></li>
            </ul>
        </div><!--pageheader-->

        <div id="contentwrapper" class="contentwrapper">

            <div id="reservationrecord" class="subcontent">

                <div class="contenttitle2">
                    <h3>预约记录表</h3>
                </div><!--contenttitle-->

                <table cellpadding="0" cellspacing="0" border="0" class="stdtable">

                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                    </colgroup>

                    <thead>
                    <tr>
                        <th class="head0">预约课程名称</th>
                        <th class="head1">预约实验名称</th>
                        <th class="head0">预约班级/预约人</th>
                        <th class="head1">预约人数</th>
                        <th class="head0">预约时间</th>
                        <th class="head1">预约地点</th>
                    </tr>
                    </thead>

                    <tfoot>
                    <tr>
                        <th class="head0">预约课程名称</th>
                        <th class="head1">预约实验名称</th>
                        <th class="head0">预约班级/预约人</th>
                        <th class="head1">预约人数</th>
                        <th class="head0">预约时间</th>
                        <th class="head1">预约地点</th>
                    </tr>
                    </tfoot>

                    <tbody>
                    <c:forEach var="er" items="${experimentrecord}" varStatus="Status">
                        <tr>
                            <td name="coursename">${er.coursename}</td>
                            <td name="experimentname">${er.experimentname}</td>
                            <td name="bookingman">${er.bookingman}</td>
                            <td name="bookingnumber">${er.bookingnumber}</td>
                            <td name="time">${er.time}</td>
                            <td name="classroom">${er.classroom}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div><!--subcontent-->

            <div id="instrumentrecord" class="subcontent">

                <div class="contenttitle2">
                    <h3>仪器设备使用记录表</h3>
                </div><!--contenttitle-->

                <table cellpadding="0" cellspacing="0" border="0" class="stdtable">

                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                    </colgroup>

                    <thead>
                    <tr>
                        <th class="head0">设备名称</th>
                        <th class="head1">预约人姓名</th>
                        <th class="head0">预约数量</th>
                        <th class="head0">预约时间</th>
                    </tr>
                    </thead>

                    <tfoot>
                    <tr>
                        <th class="head0">设备名称</th>
                        <th class="head1">预约人姓名</th>
                        <th class="head0">预约数量</th>
                        <th class="head0">预约时间</th>
                    </tr>
                    </tfoot>

                    <tbody>
                    <c:forEach var="fr" items="${facilityrecord}" varStatus="Status">
                    <tr>
                        <td name="name">${fr.name}</td>
                        <td name="bookingman">${fr.bookingman}</td>
                        <td name="bookingnumber">${fr.bookingnumber}</td>
                        <td name="time">${fr.time}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div><!--subcontent-->

            <div id="consumablesrecord" class="subcontent">

                <div class="contenttitle2">
                    <h3>耗材信用记录表</h3>
                </div><!--contenttitle-->

                <table cellpadding="0" cellspacing="0" border="0" class="stdtable">

                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                    </colgroup>

                    <thead>
                    <tr>
                        <th class="head0">XXXXX</th>
                        <th class="head1">XXX</th>
                        <th class="head0">XXX</th>
                        <th class="head0">XXXX</th>
                    </tr>
                    </thead>

                    <tfoot>
                    <tr>
                        <th class="head0">XXXXX</th>
                        <th class="head1">XXX</th>
                        <th class="head0">XXX</th>
                        <th class="head0">XXXX</th>
                    </tr>
                    </tfoot>

                    <tbody>
                    <tr>
                        <td>热处理及硬度（工程材料A）</td>
                        <td>张三</td>
                        <td>9：00-10:00</td>
                        <td class="center">B405</td>
                    </tr>

                    <tr>
                        <td>原电池电动势</td>
                        <td>张三</td>
                        <td>14：00-15:00</td>
                        <td class="center">B407</td>
                    </tr>
                    </tbody>
                </table>

            </div><!--subcontent-->

        </div><!--contentwrapper-->

    </div><!-- centercontent -->


</div><!--bodywrapper-->

</body>
</html>
