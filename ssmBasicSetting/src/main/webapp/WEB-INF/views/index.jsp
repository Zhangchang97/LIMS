<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 10641
  Date: 2019/3/26
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
            <li class="current"><a href="test" class="tables">预约信息表</a></li>
            <li><a href="#formsub" class="editor">预约</a>
                <span class="arrow"></span>
                <ul id="formsub">
                    <li><a href="experimentpage">实验课程预约</a></li>
                    <li><a href="instrumentpage">实验仪器预约</a></li>
                </ul>
            </li>
            <li><a href="recordpage" class="elements">记录</a></li>
            <!--<li><a href="filemanager.html" class="gallery">File Manager</a></li>-->
            <%--<li><a href="asserts/widgets.html" class="widgets">Widgets</a></li>--%>
            <%--<li><a href="asserts/calendar.html" class="calendar">Calendar</a></li>--%>
            <%--<li><a href="asserts/support.html" class="support">Customer Support</a></li>--%>
            <%--<li><a href="asserts/typography.html" class="typo">Typography</a></li>--%>
            <%--<li><a href="asserts/buttons.html" class="buttons">Buttons &amp; Icons</a></li>--%>
            <%--<li><a href="#error" class="error">Error Pages</a>--%>
                <%--<span class="arrow"></span>--%>
                <%--<ul id="error">--%>
                    <%--<li><a href="asserts/notfound.html">Page Not Found</a></li>--%>
                    <%--<li><a href="asserts/forbidden.html">Forbidden Page</a></li>--%>
                    <%--<li><a href="asserts/internal.html">Internal Server Error</a></li>--%>
                    <%--<li><a href="asserts/offline.html">Offline</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li><a href="#addons" class="addons">Addons</a>--%>
                <%--<span class="arrow"></span>--%>
                <%--<ul id="addons">--%>
                    <%--<li><a href="asserts/newsfeed.html">News Feed</a></li>--%>
                    <%--<li><a href="asserts/profile.html">Profile Page</a></li>--%>
                    <%--<li><a href="asserts/productlist.html">Product List</a></li>--%>
                    <%--<li><a href="asserts/photo.html">Photo/Video Sharing</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->

    <div class="centercontent tables">

        <div class="pageheader notab">
            <h1 class="pagetitle">预约信息</h1>
            <span class="pagedesc">当前可预约的实验课程和实验仪器信息</span>

        </div><!--pageheader-->

        <div id="contentwrapper" class="contentwrapper">



            <div class="contenttitle2">
                <h3>实验课程信息表</h3>
            </div><!--contenttitle-->
            <c:forEach var="experimentinfodto"   items="${experimentinfo}"   varStatus="status">
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable">
                    <colgroup>
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
                    </tr>
                    </tfoot>
                    <tbody>
                    <tr>
                        <td name="coursename"><a href="experimentpage">${experimentinfodto.coursename}</a></td>
                        <td name="experimentname">${experimentinfodto.experimentname}</td>
                        <td name="facility">${experimentinfodto.facility}</td>
                        <td class="center" name="quantityoffacility">${experimentinfodto.quantityoffacility}</td>
                        <td class="center" name="duration">${experimentinfodto.duration}</td>
                        <td name="classroom">${experimentinfodto.classroom}</td>
                        <td name="bookings">${experimentinfodto.numberofbooking}</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">工程材料A</a></td>
                        <td name="experimentname">热处理及硬度</td>
                        <td name="facility">电阻炉，预磨机，硬度计</td>
                        <td class="center" name="quantityoffacility">3,2,2</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B407</td>
                        <td name="bookings">20</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">工程材料A</a></td>
                        <td name="experimentname">热处理及硬度</td>
                        <td name="facility">电阻炉，预磨机，硬度计</td>
                        <td class="center" name="quantityoffacility">3,2,2</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B409</td>
                        <td name="bookings">20</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">工程材料B</a></td>
                        <td name="experimentname">铁碳平衡组织观察分析</td>
                        <td name="facility">金相显微镜 4*1</td>
                        <td class="center" name="quantityoffacility">27</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B405</td>
                        <td name="bookings">35</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">工程材料B</a></td>
                        <td name="experimentname">热处理及硬度</td>
                        <td name="facility">电阻炉，预磨机，硬度计</td>
                        <td class="center" name="quantityoffacility">3，2，2</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B407</td>
                        <td name="bookings">20</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">工程材料B</a></td>
                        <td name="experimentname">热处理及硬度</td>
                        <td name="facility">电阻炉，预磨机，硬度计</td>
                        <td class="center" name="quantityoffacility">3，2，2</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B409</td>
                        <td name="bookings">20</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料科学基础</a></td>
                        <td name="experimentname">平衡组织观察分析</td>
                        <td name="facility">金相显微镜 4*1</td>
                        <td class="center" name="quantityoffacility">27</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B405</td>
                        <td name="bookings">35</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料科学基础</a></td>
                        <td name="experimentname">金相试样制备+</td>
                        <td name="facility">预磨机，抛光机，显微镜</td>
                        <td class="center" name="quantityoffacility"></td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B405</td>
                        <td name="bookings">25</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料科学基础</a></td>
                        <td name="experimentname">金相试样制备+</td>
                        <td name="facility">预磨机，抛光机，显微镜</td>
                        <td class="center" name="quantityoffacility"></td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B407</td>
                        <td name="bookings">25</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料科学基础</a></td>
                        <td name="experimentname">二元合金相图</td>
                        <td name="facility">可控温升炉</td>
                        <td class="center" name="quantityoffacility">12</td>
                        <td class="center" name="duration">45分钟</td>
                        <td name="classroom">B411</td>
                        <td name="bookings">30</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料热力学与物理化学</a></td>
                        <td name="experimentname">原电池电动势</td>
                        <td name="facility">原电池电动势测定装置</td>
                        <td class="center" name="quantityoffacility">12</td>
                        <td class="center" name="duration">45分钟</td>
                        <td name="classroom">B411</td>
                        <td name="bookings">25</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料热力学与物理化学</a></td>
                        <td name="experimentname">燃烧热测定</td>
                        <td name="facility">燃烧热测定装置</td>
                        <td class="center" name="quantityoffacility">12</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B411</td>
                        <td name="bookings">25</td>
                    </tr>
                    <tr>
                        <td name="coursename"><a href="experimentpage">材料热力学与物理化学</a></td>
                        <td name="experimentname">乙酸乙酯的皂化</td>
                        <td name="facility">水浴箱，电导率仪</td>
                        <td class="center" name="quantityoffacility">12</td>
                        <td class="center" name="duration">60分钟</td>
                        <td name="classroom">B411</td>
                        <td name="bookings">25</td>
                    </tr>
                    </tbody>
                </table>
            </c:forEach>

            <br /><br />

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
                </colgroup>
                <thead>
                <tr>
                    <th class="head0">仪器名称</th>
                    <th class="head1">仪器级别</th>
                    <th class="head0">可预约仪器数量</th>
                    <th class="head1">仪器名称</th>
                    <th class="head0">仪器级别</th>
                    <th class="head1">可预约仪器数量</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th class="head0">仪器名称</th>
                    <th class="head1">仪器级别</th>
                    <th class="head0">仪器数量</th>
                    <th class="head1">仪器名称</th>
                    <th class="head0">仪器级别</th>
                    <th class="head1">仪器数量</th>
                </tr>
                </tfoot>
                <tbody>
                <tr>
                    <td>超声波清洗仪</td>
                    <td>一般仪器</td>
                    <td>1</td>
                    <td class="center">天平</td>
                    <td class="center">一般仪器</td>
                    <td class="center">2</td>
                </tr>
                <tr>
                    <td>吹风机</td>
                    <td>一般仪器</td>
                    <td>1</td>
                    <td class="center">水浴箱</td>
                    <td class="center">一般仪器</td>
                    <td class="center">10</td>
                </tr>
                <tr>
                    <td>箱式电阻炉</td>
                    <td>危险仪器</td>
                    <td>3</td>
                    <td class="center">抛光机</td>
                    <td class="center">危险仪器</td>
                    <td class="center">6</td>
                </tr>
                <tr>
                    <td>预磨机</td>
                    <td>危险仪器</td>
                    <td>2</td>
                    <td class="center">砂轮</td>
                    <td class="center">危险仪器</td>
                    <td class="center">1</td>
                </tr>
                <tr>
                    <td>燃烧热实验装置</td>
                    <td>危险仪器</td>
                    <td>12</td>
                    <td class="center">可控温电炉</td>
                    <td class="center">危险仪器</td>
                    <td class="center">10</td>
                </tr>
                <tr>
                    <td>显微维式硬度计</td>
                    <td>精密仪器</td>
                    <td>1</td>
                    <td class="center">显微镜（带成像系统）</td>
                    <td class="center">精密仪器</td>
                    <td class="center">1</td>
                </tr>
                <tr>
                    <td>光学显微镜</td>
                    <td>精密仪器</td>
                    <td>27</td>
                    <td class="center"></td>
                    <td class="center"></td>
                    <td class="center"></td>
                </tr>
                </tbody>
            </table>

            <br /><br />


        </div><!--contentwrapper-->

    </div><!-- centercontent -->


</div><!--bodywrapper-->

</body>
</html>


