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
<%@include file="menu.jsp"%>
<form action="${pageContext.request.contextPath}/editProduct" name="frm" method="post" id="frm">
<section>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>产品入库</th>

            </tr>
            </thead>
        </table>
        <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" id="content" >
                <tbody>
                <tr>
                    <td>产品编号</td>
                    <td><input name="productId" type="text" readonly value="<c:out value='${product.productId}' />"/> </td>
                </tr>

                <tr>
                    <td>产品名称</td>
                    <td><input name="productName" type="text" value="<c:out value='${product.productName}' />"/> </td>
                </tr>

                <tr>
                    <td>产品种类</td>
                    <td><input name="productClass" value="0" type="radio" <c:if test="${product.productClass eq 0}">checked="true" </c:if>/>实物产品 <input name="productClass" value="1" type="radio" <c:if test="${product.productClass eq 1}">checked="true" </c:if>/>虚拟电子产品</td>
                </tr>

                <tr>
                    <td>产品类别</td>
                    <td>
                        <select name="productType" >
                            <c:forEach var="productType" items="${productTypes}">
                            <option value="<c:out value='${productType.productTypeId}'/>" <c:if test='${product.productType eq productType.productTypeId}'>selected="true"</c:if> ><c:out value='${productType.productTypeName}'/></option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>生产厂家</td>
                    <td><input name="productManufacturer" type="text" value="<c:out value='${product.productManufacturer}' />"/> </td>
                </tr>
                <tr>
                    <td>生产日期</td>
                    <td><input name="productDate" type="text" value="<c:out value='${product.productDate}' />"/> </td>
                </tr>
                <tr>
                    <td>产品价格</td>
                    <td><input name="productPrice" id="productPrice" type="text" value="<c:out value='${product.productPrice}' />"/>元 </td>
                </tr>
                <tr>
                    <td>产品描述</td>
                    <td><input name="productDesc" type="text" value="<c:out value='${product.productDesc}' />"/></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
</form>
<div class="container">
    <button class="large strike button" onclick="btnSubmit()">提交</button>
    <button class="large strike button" onclick="doReset()">重置</button>
    <button class="large strike button" onclick="window.location='/toProductList'" formtarget="two" >取消</button>
</div>
<script>
    function btnSubmit() {
        var tbl_content = document.getElementById("content");
        var inputs = tbl_content.getElementsByTagName("input");
        var productPrice = document.getElementById("productPrice");
        var flog = 0;
        for (var i = 0; i < inputs.length; i++)
            if (inputs[i].value == "")
                flog = 1;

        if (flog)
            alert("输入内容每一项都不可以为空");
        else if (!(/(^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$)/.test(productPrice.value)))
            alert("价格需精确到十分位！请重新输入");
        else
            document.frm.submit();
        return false;

    }
</script>
</body>
</html>
