<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>menu</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        body { background-image:url("${pageContext.request.contextPath}/img/bg.jpg");}
        .container { margin:150px auto 30px auto; min-width:360px;}
        h1 { margin-bottom:30px;}
    </style>
</head>

<body>

<%@include file="menu.jsp" %>
<form action="${pageContext.request.contextPath}/addProduct" id="frm" method="post" name="frm">
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
                <table cellpadding="0" cellspacing="0" id="content">
                    <tbody>
                    <tr>
                        <td>产品编号</td>
                        <td>
                            <input name="productId" type="text" id="productId" onchange="oncheck()"/> <div id="checkId"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>产品名称</td>
                        <td>
                            <input name="productName" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>产品种类</td>
                        <td>
                            <input name="productClass" type="radio" value="0" checked="true" />实物产品
                            <input name="productClass" type="radio" value="1" />虚拟电子产品
                        </td>
                    </tr>
                    <tr>
                        <td>产品类别</td>
                        <td>
                            <select name="productType">
                                <c:forEach var="productType" items="${productTypes}">
                                    <option value="<c:out value=" ${productType.productTypeId} "/>">
                                        <c:out value="${productType.productTypeName}" />
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>生产厂家</td>
                        <td>
                            <input name="productManufacturer" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>生产日期</td>
                        <td>
                            <input name="productDate" type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});" />
                        </td>
                    </tr>
                    <tr>
                        <td>产品价格</td>
                        <td>
                            <input name="productPrice" type="text" id="productPrice" />元</td>
                    </tr>
                    <tr>
                        <td>产品描述</td>
                        <td>
                            <input name="productDesc" type="text" />
                        </td>
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
    <button class="large strike button" onclick="window.location='/toProductList'" formtarget="two">取消</button>
</div>
<script>
    var idFlag = false;
    function oncheck() {
        var productId = $("#productId").val();
        $.ajax(
            {
                type: "GET",
                url: "${pageContext.request.contextPath }/checkProductId",
                data: "productId="+productId,
                dataType:"json",
                contentType : "application/json;charset=UTF-8",
                success:function(data)
                {
                    if(data > 0){
                        idFlag = false;
                        $("#checkId").html("编号已存在！");
                    }
                    else {
                        idFlag = true;
                        $("#checkId").html("");
                    }
                },
                error:function() {
                }
            });
    }
    function btnSubmit() {
        var tbl_content = document.getElementById("content");
        var inputs = tbl_content.getElementsByTagName("input");
        var productId = document.getElementById("productId");
        var productPrice = document.getElementById("productPrice");
        var flog = 0;
        for (var i = 0; i < inputs.length; i++)
            if (inputs[i].value == "")
                flog = 1;

        if (flog)
            alert("输入内容每一项都不可以为空");
        else if (!(/(^[1-9]\d*$)/.test(productId.value)))
            alert("编号必须为正整数！请重新输入");
        else if (!(/(^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$)/.test(productPrice.value)))
            alert("价格需精确到十分位！请重新输入");
        else if (!idFlag)
            alert("编号已存在！请重新输入");
        else
            document.frm.submit();
        return false;

    }

</script>
</body>

</html>