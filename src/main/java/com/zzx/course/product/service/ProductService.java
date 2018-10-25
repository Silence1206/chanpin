package com.zzx.course.product.service;

import com.zzx.course.product.model.Product;

import java.util.List;

public interface ProductService {
    public Product findProductTypeById(int productId);
    public List<Product> findAllProducts();
    public void addProduct(Product product);
    public void updateProduct(Product product);
    public void deleteProduct(int productId);
}
