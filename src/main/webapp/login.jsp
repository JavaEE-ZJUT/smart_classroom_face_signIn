<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/11/25
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>�ǻ۽���ǩ������ϵͳ</title>
    <link href='layui/css/BiaoKuang.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="layui/css/normalize.min.css">
    <link rel="stylesheet" href="layui/css/style.css">
</head>

<body>

<div class="form">

    <div class="tab-content">
        <div id="teacher">
            <h1>��ʦ��¼</h1>
            <form action="teacherLogin.action" method="post">
                <div class="field-wrap">
                    <input class="layui-input" type="text" name="teacher.teaID" required autocomplete="off" placeholder="�������˺�" lay-verify="required"/>
                </div>
                <div class="field-wrap">
                    <input class="layui-input" type="password" name="teacher.password" required autocomplete="off" placeholder="����������" lay-verify="required"/>
                </div>
                <button type="submit" class="button button-block">��¼</button>
            </form>
        </div>

        <div id="blank">
        </div>
    </div>
</div>
<script src="layui/layui.all.js"></script>
<script>
    ;!function(){
        //������ִ��layui.use()��������ģ�飬ֱ��ʹ�ü���
        var form = layui.form
            ,layer = layui.layer;
    }();
</script>
</body>
</html>
