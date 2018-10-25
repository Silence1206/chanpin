package com.zzx.course.product.service.impl;

import com.zzx.course.product.dao.ProductTypeMapper;
import com.zzx.course.product.model.ProductType;
import com.zzx.course.product.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductTypeServiceImpl implements ProductTypeService {
    @Autowired
    ProductTypeMapper productTypeMapper;
    @Override
    public ProductType findProductTypeById(int productTypeId) {
        return productTypeMapper.findProductTypeById(productTypeId);
    }
    @Override
    public List<ProductType> findAllProductTypes() {
        return productTypeMapper.findAllProductTypes();
    }
    @Override
    public void addProductType(ProductType productType) {
        productTypeMapper.addProductType(productType);
    }
    @Override
    public void updateProductType(ProductType productType) {
        productTypeMapper.updateProductType(productType);
    }
    @Override
    public void deleteProductType(int productTypeId) {
        productTypeMapper.deleteProductType(productTypeId);
    }
}
