package com.kayty.src.API;

import com.kayty.src.DAO.ProductDAO;
import com.kayty.src.Helps.Response;
import com.kayty.src.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/product")
public class ProductAPIController {
    @Autowired
    private  ProductDAO productDAO = new ProductDAO();

    @GetMapping("/get-bestsale-product")
    public Response<List<Product>> getBestSaleProduct() {
        List<Product> list = productDAO.getBestSaleProduct();

        return new Response<>(200, "Successful", list);
    }

    @GetMapping("/get-detail/{id}")
    public Response<Product> getProductById(@PathVariable Long id) {
        Product data = (Product) productDAO.get(id);
        if(data == null) {
            return new Response<>(400, "Data not found", null);
        }
        return new Response<>(200, "Successful", data);
    }

    @GetMapping("/get-product-by-category/{category}")
    public Response<List<Product>> getListProductByCategory(@PathVariable String category ) {
        System.out.println(category);
        List<Product> list = productDAO.getProductByCategory(category);

        return new Response<>(200, "Successful", list);
    }

    @GetMapping("/get-product-by-subCategory/{subCategory}")
    public Response<List<Product>> getListProductBySubCategory(@PathVariable String subCategory) {
        System.out.println(subCategory);
        List<Product> list = productDAO.getProductBySubCategory(subCategory);

        return new Response<>(200, "Successful", list);
    }


}
