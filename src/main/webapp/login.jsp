<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>��������ʶ��ĸ�Уǩ��ϵͳ</title>
    <link href='layui/css/BiaoKuang.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="layui/css/normalize.min.css">
    <link rel="stylesheet" href="layui/css/style.css">
</head>

<body>

<div class="form">

    <ul class="tab-group">
        <li class="tab active"><a href="login.jsp">��ʦ��¼</a></li>
        <li class="tab"><a href="admin.jsp">����Ա��¼</a></li>
    </ul>

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

        <div id="admin">
            <h1>����Ա��¼</h1>
            <form action="adminLogin.action" method="post">
                <div class="field-wrap">
                    <input class="layui-input" type="text" name="admin.adminID" required autocomplete="off" placeholder="�������˺�" lay-verify="required"/>
                </div>
                <div class="field-wrap">
                    <input class="layui-input" type="password" name="admin.password" required autocomplete="off" placeholder="����������" lay-verify="required"/>
                </div>
                <button type="submit" class="button button-block">��¼</button>
            </form>
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
