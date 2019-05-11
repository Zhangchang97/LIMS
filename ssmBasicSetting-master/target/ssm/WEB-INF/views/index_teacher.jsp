<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>数据表格页面</title>
    <link rel="stylesheet" href="asserts/css/style.default.css" type="text/css" />
    <script type="text/javascript" src="asserts/js/plugins/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.cookie.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="asserts/js/plugins/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="asserts/js/custom/general.js"></script>
    <script type="text/javascript" src="asserts/js/custom/tables.js"></script>
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
            <li class="current"><a href="index_teacher" class="tables">预约信息表</a></li>
            <li><a href="#formsub" class="editor">添加课程或仪器</a>
                <span class="arrow"></span>
                <ul id="formsub">
                    <li><a href="addexperiment">新增实验课程</a></li>
                    <li><a href="addfacility">新增实验仪器</a></li>
                </ul>
            </li>
            <li><a href="record_teacher" class="elements">记录</a></li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->

    <div class="centercontent tables">

        <div class="pageheader">
            <h1 class="pagetitle">预约信息</h1>
            <span class="pagedesc">当前可预约的实验课程信息和实验仪器信息</span>

            <ul class="hornav">
                <li class="current"><a href="#experimentform">实验课程</a></li>
                <li><a href="#facilityform">实验仪器</a></li>
            </ul>
        </div><!--pageheader-->

        <div id="contentwrapper" class="contentwrapper">

            <div id="experimentform" class="subcontent">

                <div class="contenttitle2">
                    <h3>实验课程信息表</h3>
                </div><!--contenttitle-->
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable">
                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                    </colgroup>
                    <thead>
                    <tr>
                        <th class="head0">课程名称</th>
                        <th class="head1">实验名称</th>
                        <th class="head0">使用仪器</th>
                        <th class="head1">仪器数量</th>
                        <th class="head0">时长</th>
                        <th class="head1">可用教室</th>
                        <th class="head0">可预约人数</th>
                        <th class="head1">实验总人数</th>
                        <th class="head1">操作</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th class="head0">课程名称</th>
                        <th class="head1">实验名称</th>
                        <th class="head0">使用仪器</th>
                        <th class="head1">仪器数量</th>
                        <th class="head0">时长</th>
                        <th class="head1">可用教室</th>
                        <th class="head0">可预约人数</th>
                        <th class="head1">实验总人数</th>
                        <th class="head0">操作</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach var="e"   items="${experimentinfo}"   varStatus="status">
                        <tr>
                            <td name="coursename">${e.coursename}</td>
                            <td name="experimentname">${e.experimentname}</td>
                            <td name="facility">${e.facility}</td>
                            <td class="center" name="quantityoffacility">${e.quantityoffacility}</td>
                            <td class="center" name="duration">${e.duration}</td>
                            <td name="classroom">${e.classroom}</td>
                            <td name="bookings">${e.bookings}</td>
                            <td name="totalbooking">${e.totalbooking}</td>
                            <td><a href="/updateexperiment?id=${e.id}">更新</a>  <a href="/deleteexperiment?id=${e.id}">删除</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>


            <br /><br />

            <div id="facilityform" class="subcontent">

                <div class="contenttitle2">
                    <h3>实验仪器信息表</h3>
                </div><!--contenttitle-->

                <table cellpadding="0" cellspacing="0" border="0" class="stdtable stdtablequick">
                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                    </colgroup>
                    <thead>
                    <tr>
                        <th class="head0">仪器名称</th>
                        <th class="head1">仪器级别</th>
                        <th class="head0">可预约仪器数量</th>
                        <th class="head1">总仪器数量</th>
                        <th class="head0">操作</th>
                        <th class="head1">仪器名称</th>
                        <th class="head0">仪器级别</th>
                        <th class="head1">可预约仪器数量</th>
                        <th class="head1">总仪器数量</th>
                        <th class="head0">操作</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th class="head0">仪器名称</th>
                        <th class="head1">仪器级别</th>
                        <th class="head0">可预约仪器数量</th>
                        <th class="head1">总仪器数量</th>
                        <th class="head0">操作</th>
                        <th class="head1">仪器名称</th>
                        <th class="head0">仪器级别</th>
                        <th class="head1">可预约仪器数量</th>
                        <th class="head1">总仪器数量</th>
                        <th class="head0">操作</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach var="f" items="${facilityinfo}" varStatus="Status">
                        <c:if test="${Status.index%2==1}">
                            <tr>
                            <td name="facility">${f.name}</td>
                            <td name="level">${f.level}</td>
                            <td name="booking">${f.booking}</td>
                            <td name="totalbooking">${f.totalbooking}</td>
                            <td><a href="/updatefacility?id=${f.id}">更新</a>  <a href="/deletefacility?id=${f.id}">删除</a></td>
                        </c:if>
                        <c:if test="${Status.index%2==0}">
                            <td class="center" name="facility">${f.name}</td>
                            <td class="center" name="level">${f.level}</td>
                            <td class="center" name="booking">${f.booking}</td>
                            <td class="center" name="totalbooking">${f.totalbooking}</td>
                            <td><a href="/updatefacility?id=${f.id}">更新</a>  <a href="/deletefacility?id=${f.id}">删除</a></td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <br /><br />


        </div><!--contentwrapper-->

    </div><!-- centercontent -->


</div><!--bodywrapper-->

</body>
</html>


