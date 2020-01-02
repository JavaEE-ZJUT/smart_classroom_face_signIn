<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/11/25
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>签到系统教师端</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body class="layui-layout-body">

<div class="layui-layout layui-layout-admin">
    <!-- 头部区域 -->
    <div class="layui-header">
        <div class="layui-logo">签到系统教师端</div>
        <ul class="layui-nav layui-layout-left"></ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img" alt="头像">
                    <s:property value="#session.teacher.name"/>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="login.jsp">退出</a></li>
        </ul>
    </div>

    <!-- 左侧导航区域 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="test">

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">首页</a>
                    <dl class="layui-nav-child">
                        <dd><a href="welcome.jsp" id="teaFeedBack">欢迎</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">签到管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="inToPlatformAction.action" id="planManage">签到计划</a></dd>
                        <dd><a href="templateUI.jsp" id="createTemplate">签到创建</a></dd>
                        <dd><a href="templistUI.jsp" id="templateManage">签到模板</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">签到查询</a>
                    <dl class="layui-nav-child">
                        <dd><a href="lookAllSign.action" id="querySign">签到查询</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
