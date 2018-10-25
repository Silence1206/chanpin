<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>menu</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>
<%@include file="menu.jsp" %>
<form action="${pageContext.request.contextPath}/editProductType" name="frm" method="post" id="frm">
    <section>
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0" id="content">
                <thead>
                <tr>
                    <th>添加产品分类</th>
                </tr>
                </thead>
            </table>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0">
                    <tbody>
                    <tr>
                        <td>分类编号</td>
                        <td>
                            <input name="productTypeId" type="text" value="<c:out value='${productType.productTypeId}' />">
                        </td>
                    </tr>
                    <tr>
                        <td>分类名称</td>
                        <td>
                            <input name="productTypeName" type="text" value="<c:out value='${productType.productTypeName}'/>">
                        </td>
                    </tr>
                    <tr>
                        <td>备注</td>
                        <td>
                            <input name="productTypeDesc" type="text" value="<c:out value='${productType.productTypeDesc}'/>">
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</form>
<div class="container">
    <button class="large strike button" onclick="btnSubmitType()">提交</button>
    <button class="large strike button" onclick="doReset()">重置</button>
    <button class="large strike button" onclick="window.location='/toProductTypeList'" formtarget="two">取消</button>
</div>
<script>
    function btnSubmitType() {
        var tbl_content = document.getElementById("content");
        var inputs = tbl_content.getElementsByTagName("input");
        var flog = 0;
        for (var i = 0; i < inputs.length; i++)
            if (inputs[i].value == "")
                flog = 1;

        if (flog)
            alert("输入内容每一项都不可以为空");

        else
            document.getElementById("frm").submit();
        return false;
    }
</script>
</body>

</html>