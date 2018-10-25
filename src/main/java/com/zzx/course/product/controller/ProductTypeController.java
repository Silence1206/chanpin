package com.zzx.course.product.controller;

import com.zzx.course.product.util.DateTime;
import com.zzx.course.product.model.ProductType;
import com.zzx.course.product.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductTypeController {
    @Autowired
    ProductTypeService productTypeService;

    /**
     * Jump to productTypeList.jsp
     * @param model
     * @return productTypeList.jsp
     */
    @RequestMapping("/toProductTypeList")
    public String toProductTypeList(Model model){
        List<ProductType> productTypes = productTypeService.findAllProductTypes();
        model.addAttribute("productTypes",productTypes);
        return "producttypelist";
    }

    /**
     * Jump to addProductType.jsp
     * @return addProductType.jsp
     */
    @RequestMapping("/toAddProductType")
    public String toAddProductType(){
        return "addproducttype";
    }

    /**
     * Insert Database
     * @param productType
     * @return toProductTypeList
     */
    @RequestMapping("/addProductType")
    public String addProductType(ProductType productType){
        productType.setCreatedByUserLogin(15111131);
        productType.setCreatedTime(DateTime.getNow());
        productType.setLastUpdatedByUserLogin(15111131);
        productType.setLastUpdatedTime(DateTime.getNow());
        productTypeService.addProductType(productType);
        return "redirect:toProductTypeList";
    }

    /**
     * Jump to edtiproductType.jsp
     * @param productTypeId
     * @param model
     * @return editProductType.jsp
     */
    @RequestMapping("/toEditProductType")
    public String toEditProductType(int productTypeId, Model model){
        ProductType productType = productTypeService.findProductTypeById(productTypeId);
        model.addAttribute("productType", productType);
        return "editproducttype";
    }

    /**
     * Update Database
     * @param productType
     * @return toProductTypeList
     */

    @RequestMapping("/editProductType")
    public String editProductType(ProductType productType){
        productType.setLastUpdatedByUserLogin(15111131);
        productType.setLastUpdatedTime(DateTime.getNow());
        productTypeService.updateProductType(productType);
        return "redirect:toProductTypeList";
    }

    /**
     * Delete Database
     * @param productTypeId
     * @return toProductTypeList
     */
    @RequestMapping("/deleteProductType")
    public String deleteProductType(int productTypeId){
        productTypeService.deleteProductType(productTypeId);
        return "redirect:toProductTypeList";
    }
}
