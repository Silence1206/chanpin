<%--
  Created by IntelliJ IDEA.
  User: zhangzhenqin
  Date: 2018/6/9
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/playground.css">
<style>
    body { background-image:url("${pageContext.request.contextPath}/img/bg.jpg");}
    h1{font-size: 50px;}
</style>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src='${pageContext.request.contextPath}/js/jquery.min.js'></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/btn.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/canvas-nest.min.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>

<h1>产&nbsp;&nbsp;&nbsp;品&nbsp;&nbsp;&nbsp;管&nbsp;&nbsp;&nbsp;理&nbsp;&nbsp;&nbsp;平&nbsp;&nbsp;&nbsp;台</h1>
<nav>
    <ul class="main">
        <li>
            <a href="#">会员管理</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/toProductList">产品管理</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/toProductTypeList">产品分类管理</a>
        </li>
        <li>
            <a href="#">产品编目管理</a>
        </li>
    </ul>
</nav>
