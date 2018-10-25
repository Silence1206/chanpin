package com.zzx.course.product.dao;

import com.zzx.course.product.model.ProductType;

import java.util.List;

public interface ProductTypeMapper {
    public ProductType findProductTypeById(int productTypeId);
    public List<ProductType> findAllProductTypes();
    public void addProductType(ProductType productType);
    public void updateProductType(ProductType productType);
    public void deleteProductType(int productTypeId);
}
