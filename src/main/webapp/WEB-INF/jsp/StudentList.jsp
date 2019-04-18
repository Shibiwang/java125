<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jqPaginator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-3.3.4.js"></script>
</head>
<body>

<div class="container">
    <table class="table">
        <tr>
            <td>ID</td>
            <td>姓名</td>
            <td>年龄</td>
            <td>性别</td>
            <td>操作</td>

        </tr>
       <c:forEach var="i" items="${pageInfo.list}">
            <tr>
                <td>${i.id}</td>
                <td>${i.name}</td>
                <td>${i.age}</td>
                <td>${i.sex}</td>
                <td>
                        <button class="btn btn-warning" data-toggle="modal" onclick="updateStu(${i.id})">修改</button>
                        <button class="btn btn-danger"  onclick="deleteStu(${i.id})">删除</button>
                </td>
            </tr>
        </c:forEach>

    </table>

    <a href="addJSP"><button class="btn btn-warning" data-toggle="modal">新增</button></a>

    <!-- 分页的导航栏 -->
    <div class="pagination-layout">

        <div class="pagination">
            <ul class="pagination">

            </ul>


        </div>
    </div>


</div>


<script type="text/javascript">

    window.onload = function() {
        var if_fistime = true;
        $(".pagination")
            .jqPaginator(
                {
                    totalPages : ${pageInfo.pages},
                    visiblePages : 3,
                    currentPage : ${pageInfo.pageNum},
                    first : '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                    prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
                    next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
                    last : '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
                    page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

                    onPageChange : function(num) {

                        /* alert(num); */
                        if (if_fistime) {
                            if_fistime = false;
                        } else {
                            changePage(num);
                        }

                    }

                })

    }

    function changePage(num) {

        window.location.href = "getAllStus?pageNum=" + num;
    }



    function  updateStu(id) {
        alert(id)
        //debugger
        location.href = 'queryById?id='+id;

    }

    function deleteStu(id){
        alert("删除成功")
        location.href = 'deleteStudent?id='+id;

    }


</script>
</body>
</html>
