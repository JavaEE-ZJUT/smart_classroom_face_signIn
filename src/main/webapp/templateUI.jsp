<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/11/25
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<%@ include file="Tea_UIHead.jsp" %>
<link rel="stylesheet" type="text/css" href="/cssfile/Releasetask.css"/>
<link rel="stylesheet" type="text/css" href="/cssfile/DateTimePicker.css"/>
<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/js/DateTimePicker.js"></script>
<script type="text/javascript">

    //开始倒计时
    var countdown;

    $(document).ready(function () {
        $("#dtBox").DateTimePicker();
    });


    function myFunction1() {
        var message = sessionStorage.getItem('message'), str;
        var x = document.cookie;
        if (x != null) {
            var result = x.position.split(",");
            document.getElementById("longitude").value = result[0];
            document.getElementById("latitude").value = result[1];
            document.getElementById("address").value = result[2];
            document.cookie = '';
        }
        if (message != null) {
            str = JSON.parse(message);
            var result = str.position.split(",");
            document.getElementById("longitude").value = result[0];
            document.getElementById("latitude").value = result[1];
            document.getElementById("address").value = str.address;
            // sessionStorage.clear();
        }
    }

    function myFunction() {
        var afterUrl = window.location.search.substring(1);//问号以后的字符串
        var afterEqual = afterUrl.substring(afterUrl.indexof('=') + 1);//(等号以后的字符串，及你所要的参数)
        if (afterEqual != null) {
            var result = afterEqual.position.split(",");
            document.getElementById("longitude").value = result[0];
            document.getElementById("latitude").value = result[1];
            document.getElementById("address").value = result[2];
        }
    }

    <%
        String latitude = (String)request.getParameter("latitude");
        String longitude = (String)request.getParameter("longitude");
        String address = (String)request.getParameter("address");
        if(latitude == null){
            latitude = "请打开地图";
        }
        if(longitude == null){
            longitude = "请打开地图";
        }
        if(address == null){
            address = "请打开地图";
        }
    %>
</script>
<div id="dtBox"></div>
<div class="layui-body" onload="myFunction()">
    <div class="layui-text" style="font-size: 25px; color: #393D49;width: 400px;height: 30px;padding: 35px">
        模板创建
    </div>
    <form action="templateAction.action" method="post" class="layui-form">
        <s:hidden id="phone" value="%{#session.teacher.phone}"/>
        <s:hidden name="template.teaID" value="%{#session.teacher.teaID}"/>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px ">签到起始时间</label>
            <div class="layui-input-block">
                <input type="text" name="template.startTime" data-field="time" readonly required lay-verify="required"
                       style="width: 40%" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px ">签到结束时间</label>
            <div class="layui-input-block">
                <input type="text" name="template.endTime" data-field="time" readonly required lay-verify="required"
                       style="width: 40%" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px ">签到经度</label>
            <div class="layui-input-block">
                <input type="text" name="template.longitude" id="longitude" style="width: 40%"
                       placeholder="请打开地图" autocomplete="off" class="layui-input"
                       value="<%=longitude%>">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px ">签到纬度</label>
            <div class="layui-input-block">
                <input type="text" name="template.latitude" id="latitude" style="width: 40%"
                       placeholder="请打开地图" autocomplete="off" class="layui-input"
                       value="<%=latitude%>">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px ">签到半径（米）</label>
            <div class="layui-input-block">
                <input type="text" name="template.radius" required lay-verify="required" style="width: 40%"
                       placeholder="请输入（米）" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px ">签到地点</label>
            <div class="layui-input-block">
                <input type="text" id="address" name="template.placeName" required lay-verify="required"
                       style="width: 40%" placeholder="请打开地图" autocomplete="off" class="layui-input"
                       value="<%=address%>">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width:150px "></label>
            <div class="layui-input-block">
                <input type="submit" class="layui-btn" value="确认" id="go"/>
                <a href="locate.action"><input type="button" class="layui-btn" value="打开地图" align="right"
                                               onclick=""/></a></div>
        </div>
    </form>
</div>
<%@ include file="UIbottom.jsp" %>
</html>
