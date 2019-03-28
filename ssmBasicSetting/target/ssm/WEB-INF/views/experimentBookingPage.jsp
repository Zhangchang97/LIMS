<%--
  Created by IntelliJ IDEA.
  User: 10641
  Date: 2019/3/26
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>河海大学材料实验室预约管理系统</title>
</head>
<link type="text/css" href="asserts/css/graduationpProject.css" rel="stylesheet">
<body class="bookingpage">
    <header class="bookingpageheader">
        <img id="schoolbadge" src="asserts/images/graduationProject/schoolbadge.png" alt="河海大学校徽">
    </header>

    <nav>
        <ul>
            <li class="selected">
                <a href="index.jsp" >实验课程预约</a>
            </li>
            <li>
                <a href="instrumentReservationPage.jsp">实验仪器预约</a>
            </li>
        </ul>
    </nav>

    <div class="tableContainerBox">
        <table class="tableContainer">
            <tr>
                <th id="courseName">课程名称</th>
                <th id="experimentName">实验名称</th>
                <th id="instruments">仪器</th>
                <th id="quantityOfFacility">设备数量</th>
                <th id="duration">时长</th>
                <th id="classroom">可使用教室</th>
                <th id="capacity">可容纳学生人数</th>
            </tr>
            <tr>
                <td>工程材料A</td>
                <td>非平衡组织观察分析</td>
                <td>金相显微镜4*1</td>
                <td>27</td>
                <td>60分钟</td>
                <td>B405</td>
                <td>35</td>
            </tr>
            <tr>
                <td>热处理及硬度</td>
                <td>电阻炉，预磨机，硬度计</td>
                <td>3,2,2</td>
                <td>60分钟</td>
                <td>B407,B409</td>
                <td>20</td>
            </tr>
            <tr>
                <td>工程材料B</td>
                <td>铁碳平衡组织分析</td>
                <td>金相显微镜4*1</td>
                <td>27</td>
                <td>60分钟</td>
                <td>B405</td>
                <td>35</td>
            </tr>
            <tr>
                <td>热处理及硬度</td>
                <td>电阻炉，预磨机，硬度计</td>
                <td>3,2,2</td>
                <td>60分钟</td>
                <td>B407,B409</td>
                <td>20</td>
            </tr>
            <tr>
                <td>材料科学基础</td>
                <td>平衡组织观察分析</td>
                <td>金相显微镜4*1</td>
                <td>27</td>
                <td>60分钟</td>
                <td>B405</td>
                <td>35</td>
            </tr>
            <tr>
                <td>金相试样设备+</td>
                <td>预磨机，抛光机，显微镜</td>
                <td></td>
                <td>60分钟</td>
                <td>B405,B407</td>
                <td>25</td>
            </tr>
            <tr>
                <td>二元合金相图</td>
                <td>可控温升炉</td>
                <td>12</td>
                <td>45分钟</td>
                <td>B411</td>
                <td>30</td>
            </tr>
            <tr>
                <td>材料热力学与物理化学</td>
                <td>原电池电动势</td>
                <td>原电池电动势测定装置</td>
                <td>12</td>
                <td>45分钟</td>
                <td>B411</td>
                <td>25</td>
            </tr>
            <tr>
                <td>燃烧热测定</td>
                <td>燃烧热测定装置</td>
                <td>12</td>
                <td>60分钟</td>
                <td>B411</td>
                <td>25</td>
            </tr>
            <tr>
                <td>乙酸乙酯的皂化</td>
                <td>水浴箱，电导率仪</td>
                <td>12</td>
                <td>60分钟</td>
                <td>B411</td>
                <td>25</td>
            </tr>
        </table>
        <form>
            <button>预约</button>
        </form>
    </div>

    <footer class="footer">
        <p>Copyright © 2013 河海大学常州校区教务处版权所有</p>
        <p>地址：江苏常州晋陵北路200号<br/>电话：（0519）85191819<br/>河海大学常州校区新教学楼1楼</p>
    </footer>
</body>
</html>
