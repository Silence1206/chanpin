package com.zzx.course.product.controller;

import com.zzx.course.product.util.DateTime;
import com.zzx.course.product.model.Product;
import com.zzx.course.product.model.ProductType;
import com.zzx.course.product.service.ProductService;
import com.zzx.course.product.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductService productService;
    @Autowired
    ProductTypeService productTypeService;

    /**
     * Jump to productList.jsp
     * @param model
     * @return productList.jsp
     */
    @RequestMapping("/toProductList")
    public String toProductList(Model model){
        List<ProductType> productTypes = productTypeService.findAllProductTypes();
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        model.addAttribute("productTypes", productTypes);
        return "productlist";
    }

    /**
     * Jump to addProduct.jsp
     * @param model
     * @return addProduct.jsp
     */
    @RequestMapping("/toAddProduct")
    public String toAddProduct(Model model){
        List<ProductType> productTypes = productTypeService.findAllProductTypes();
        model.addAttribute("productTypes", productTypes);
        return "addproduct";
    }

    /**
     * Insert Database
     * @param product
     * @return toProductList
     */
    @RequestMapping("/addProduct")
    public String addProduct(Product product){
        product.setCreatedByUserLogin(15111131);
        product.setCreatedTime(DateTime.getNow());
        product.setLastUpdatedByUserLogin(15111131);
        product.setLastUpdatedTime(DateTime.getNow());

        productService.addProduct(product);
        return "redirect:toProductList";
    }

    /**
     * Jump to editProduct.jsp
     * @param productId
     * @param model
     * @return editProduct.jsp
     */
    @RequestMapping("/toEditProduct")
    public String toEditProduct(int productId, Model model){
        Product product = productService.findProductTypeById(productId);
        List<ProductType> productTypes = productTypeService.findAllProductTypes();
        model.addAttribute("product", product);
        model.addAttribute("productTypes", productTypes);
        return "editproduct";
    }

    /**
     * Update Database
     * @param product
     * @return toProductList
     */
    @RequestMapping("/editProduct")
    public String editProduct(Product product){
        product.setLastUpdatedByUserLogin(15111131);
        product.setLastUpdatedTime(DateTime.getNow());
        productService.updateProduct(product);
        return "redirect:toProductList";
    }

    /**
     * Delete Database
     * @param productId
     * @return toProductList
     */
    @RequestMapping("/deleteProduct")
    public String deleteProduct(int productId){
        productService.deleteProduct(productId);
        return "redirect:toProductList";
    }

    /**
     * Check productId
     * @param productId
     * @return Product Number;
     */
    @RequestMapping("/checkProductId")
    public @ResponseBody int checkProductId (@RequestParam(value="productId") Integer productId) {
        Product product = productService.findProductTypeById(productId);
        if(product != null)
            return 1;
        return 0;
    }

    /**
     * Check productTypeId
     * @param productTypeId
     * @return ProductType Number
     */
    @RequestMapping("/checkProductTypeId")
    public @ResponseBody int checkProductTypeId (@RequestParam(value="productTypeId") Integer productTypeId) {
        ProductType productType = productTypeService.findProductTypeById(productTypeId);
        if(productType != null)
            return 1;
        return 0;
    }
}
