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
<section>
	<form name="frm">
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
				<tr>
					<td height="25">选择</td>
					<td>产品编号</td>
					<td>产品名称</td>
					<td>产品类别</td>
					<td>产品价格</td>
					<td>生产厂家</td>
				</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0">
				<tbody>
				<c:forEach var="product" items="${products}">
					<tr>
						<td>
							<input name="productId" value="<c:out value='${product.productId}' />" type="radio" height="25">
						</td>
						<td>
							<c:out value='${product.productId}' />
						</td>
						<td>
							<c:out value='${product.productName}' />
						</td>
						<td>
							<c:forEach var="productType" items="${productTypes}">
								<c:if test="${product.productType eq productType.productTypeId}">
									<c:out value="${productType.productTypeName}" /></c:if>
							</c:forEach>
						</td>
						<td>
							<c:out value='${product.productPrice}' />
						</td>
						<td>
							<c:out value='${product.productManufacturer}' />
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</form>
</section>
<div class="container">
	<button class="large strike button" onclick="btnAdd('${pageContext.request.contextPath}/toAddProduct')">添加</button>
	<button class="large strike button" onclick="btnEdit('${pageContext.request.contextPath}/toEditProduct')">修改</button>
	<button class="large strike button" onclick="btnDelete('${pageContext.request.contextPath}/deleteProduct')">删除</button>
</div>
<script>

    function btnEdit(url) {
        var radios = document.getElementsByName("productId");
        var flag = false;
        for(var i=0;i<radios.length;i++)
            if(radios[i].checked==true)
                flag = true;
        if(flag){
            document.frm.action = url;
            document.frm.submit();
        }
        else{
            alert("请选择要修改的商品");
            return false;
        }
    }

    function btnDelete(url) {
        var radios = document.getElementsByName("productId");
        var flag = false;
        for(var i=0;i<radios.length;i++)
            if(radios[i].checked==true)
                flag = true;

        if(flag){
            var msg = "请问是否要删除此物品？";
            if(confirm(msg)==true){
                document.frm.action = url;
                document.frm.submit();
            }
            else{
                return false;
            }
        }
        else {
            alert("请选择要删除的商品");
            return false;
        }

    }
</script>
</body>

</html>