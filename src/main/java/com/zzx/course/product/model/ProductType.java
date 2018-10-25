package com.zzx.course.product.model;

import java.sql.Timestamp;

public class ProductType {
    private int productTypeId;
    private String productTypeName;
    private String productTypeDesc;
    private int createdByUserLogin;
    private Timestamp createdTime;
    private int lastUpdatedByUserLogin;
    private Timestamp lastUpdatedTime;

    public int getProductTypeId() {
        return productTypeId;
    }

    public void setProductTypeId(int productTypeId) {
        this.productTypeId = productTypeId;
    }

    public String getProductTypeName() {
        return productTypeName;
    }

    public void setProductTypeName(String productTypeName) {
        this.productTypeName = productTypeName;
    }

    public String getProductTypeDesc() {
        return productTypeDesc;
    }

    public void setProductTypeDesc(String productTypeDesc) {
        this.productTypeDesc = productTypeDesc;
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
