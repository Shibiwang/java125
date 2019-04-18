<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-3.3.4.js"></script>
</head>
<body class="navbar-top">
<div class="modal-shiftfix">
    <div class="container-fluid main-content">
        <div class="widget-container fluid-height clearfix mwi1200">

            <div class="widget-content padded clearfix">
                <form id="addStudent" class="form-horizontal"
                      action="addStudent" method="post">

                    <div class="form-group field-manage-name required">
                        <label class="control-label col-sm-2" >姓名</label>
                        <div class="col-sm-8">
                            <input type="text" id="name" class="form-control"
                                   name="name" placeholder="姓名">
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>

                    <div class="form-group field-manage-position_id required">
                        <label class="control-label col-sm-2" >年龄</label>
                        <div class="col-sm-8">
                            <input type="text" id="age" class="form-control"
                                   name="age" placeholder="年龄">
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>

                    <div class="form-group field-manage-mobile required">
                        <label class="control-label col-sm-2" >性别</label>
                        <div class="col-sm-8">
                            <input type="text" id="sex" class="form-control"
                                   name="sex" placeholder="性别">
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-lg-10">
                            <button id="mysubmit" type="button" class="btn btn-success"
                                    onclick="commitCheck()">添加</button>
                            <button type="button" class="btn btn-default"
                                    onClick="history.go(-1);">返回</button>
                            <input type="hidden" name="reback">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function commitCheck() {
        //debugger
        var name=$("#name").val();
        var age=$("#age").val();
        var sex=$("#sex").val();
        if ("" == name || undefined == name) {
            alert("姓名不能为空");
            return;
        }
        if ("" == age || undefined == age) {
            alert("年龄不能为空");
            return;
        }
        if ("" == sex || undefined == sex) {
            alert("性别不能为空");
            return;
        }
        alert("增加成功")
        $("#addStudent").submit();


    }


</script>


</body>
</html>
