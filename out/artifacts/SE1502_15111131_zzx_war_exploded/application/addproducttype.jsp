<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>menu</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>
<%@include file="menu.jsp" %>
<form action="${pageContext.request.contextPath}/addProductType" name="frm" method="post" id="frm">
    <section>
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
                <thead>
                <tr>
                    <th>添加产品分类</th>
                </tr>
                </thead>
            </table>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" id="content">
                    <tbody>
                    <tr>
                        <td>分类编号</td>
                        <td>
                            <input name="productTypeId" type="text" id="productTypeId" onchange="oncheck()"/><div id="checkTypeId"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>分类名称</td>
                        <td>
                            <input name="productTypeName" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>备注</td>
                        <td>
                            <input name="productTypeDesc" type="text" />
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</form>
<div class="container">
    <button class="large strike button" onclick="btnSumbitType()">提交</button>
    <button class="large strike button" onclick="doReset()">重置</button>
    <button class="large strike button" onclick="window.location='/toProductTypeList'" formtarget="two">取消</button>
</div>
</body>
<script>
    var idFlag = false;
    function oncheck() {
        var productTypeId = $("#productTypeId").val();
        $.ajax(
            {
                type: "GET",
                url: "${pageContext.request.contextPath }/checkProductTypeId",
                data: "productTypeId="+productTypeId,
                dataType:"json",
                contentType : "application/json;charset=UTF-8",
                success:function(data)
                {
                    if(data > 0){
                        idFlag = false;
                        $("#checkTypeId").html("编号已存在！");
                    }

                    else{
                        idFlag = true;
                        $("#checkTypeId").html("");
                    }

                },
                error:function() {
                }
            });
    }

    function btnSumbitType() {
        var tbl_content = document.getElementById("content");
        var productTypeId = document.getElementById("productTypeId");
        var inputs = tbl_content.getElementsByTagName("input");
        var flog = 0;
        for (var i = 0; i < inputs.length; i++)
            if (inputs[i].value == "")
                flog = 1;

        if (flog)
            alert("输入内容每一项都不可以为空");
        else if (!(/(^[1-9]\d*$)/.test(productTypeId.value)))
            alert("编号必须为正整数！请重新输入");
        else if (!idFlag)
            alert("编号已存在！请重新输入");
        else
        document.getElementById("frm").submit();
        return false;
    }
</script>
</html>
