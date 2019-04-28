<%--
  Created by IntelliJ IDEA.
  User: 10641
  Date: 2019/3/29
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
            <%--<li><a href="asserts/filemanager.html" class="gallery">File Manager</a></li>--%>
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
                    <%--<li><a href="asserts/gallery.html">Gallery</a></li>--%>
                    <%--<li><a href="asserts/invoice.html">Invoice</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
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

                <form class="stdform" action="" method="post">

                    <div class="ins">
                        <div class="left">
                            <p>
                                <label>超声波清洗仪</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>天平</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>吹风机</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>水浴箱</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>箱式电阻炉</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>抛光机</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>预磨机</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>砂轮</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>燃烧热实验装置</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>可控温电炉</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>显微维式硬度计</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>显微镜（带成像系统）</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="left">
                            <p>
                                <label>光学显微镜</label>
                                <span class="field">
                            <select name="select" class="uniformselect">
                            	 <option value="">预约</option>
                                <option value="" selected="selected">不预约</option>
                            </select>
                                </span>
                            </p>
                        </div>
                        <div class="right">
                            <p>
                                <label>预约数量</label>
                                <span class="field"><input value="0" type="text" name="input1" class="smallinput" /></span>
                            </p>
                        </div>
                    </div>

                    <p>
                        <label>教室选择</label>
                        <span class="field">
                            <select name="select" class="uniformselect">
                            	<option value="">B405</option>
                                <option value="">B407</option>
                                <option value="">B409</option>
                                <option value="">B411</option>
                            </select>
                        </span>
                    </p>

                    <p>
                        <label>时间选择</label>
                        <span class="field">
                            <select name="select" class="uniformselect">
                            	<option value="">9：00-10:00</option>
                                <option value="">10:00-11:00</option>
                                <option value="">15:00-16:00</option>
                                <option value="">16:00-17:00</option>
                                <option value="">18:00-19:00</option>
                                <option value="">19:00-20:00</option>
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
