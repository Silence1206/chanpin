package com.zzx.course.product.service.impl;

import com.zzx.course.product.dao.ProductMapper;
import com.zzx.course.product.model.Product;
import com.zzx.course.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductMapper productMapper;
    @Override
    public Product findProductTypeById(int productId) {
        return productMapper.findProductById(productId);
    }
    @Override
    public List<Product> findAllProducts() {
        return productMapper.findAllProducts();
    }
    @Override
    public void addProduct(Product product) {
        productMapper.addProduct(product);
    }
    @Override
    public void updateProduct(Product product) {
        productMapper.updateProduct(product);
    }
    @Override
    public void deleteProduct(int productId) {
        productMapper.deleteProduct(productId);
    }
}

