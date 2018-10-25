package com.zzx.course.product.model;

import java.sql.Timestamp;

public class Product {
    private int productId;
    private String productName;
    private int productClass;
    private int productType;
    private String productManufacturer;
    private Timestamp productDate;
    private Double productPrice;
    private String productDesc;
    private int createdByUserLogin;
    private Timestamp createdTime;
    private int lastUpdatedByUserLogin;
    private Timestamp lastUpdatedTime;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductClass() {
        return productClass;
    }

    public void setProductClass(int productClass) {
        this.productClass = productClass;
    }

    public int getProductType() {
        return productType;
    }

    public void setProductType(int productType) {
        this.productType = productType;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public Timestamp getProductDate() {
        return productDate;
    }

    public void setProductDate(Timestamp productDate) {
        this.productDate = productDate;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public int getCreatedByUserLogin() {
        return createdByUserLogin;
    }

    public void setCreatedByUserLogin(int createdByUserLogin) {
        this.createdByUserLogin = createdByUserLogin;
    }

    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    public int getLastUpdatedByUserLogin() {
        return lastUpdatedByUserLogin;
    }

    public void setLastUpdatedByUserLogin(int lastUpdatedByUserLogin) {
        this.lastUpdatedByUserLogin = lastUpdatedByUserLogin;
    }

    public Timestamp getLastUpdatedTime() {
        return lastUpdatedTime;
    }

    public void setLastUpdatedTime(Timestamp lastUpdatedTime) {
        this.lastUpdatedTime = lastUpdatedTime;
    }
}
