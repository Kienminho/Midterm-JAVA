package com.kayty.src.API;

import com.kayty.src.DAO.ProductDAO;
import com.kayty.src.Helps.Response;
import com.kayty.src.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/product")
public class ProductAPIController {
    @Autowired
    private  ProductDAO productDAO = new ProductDAO();

    @GetMapping("/get-bestsale-product")
    public Response<List<Product>> getBestSaleProduct() {
        List<Product> list = productDAO.getBestSaleProduct();
        Map<String, List<Product>> data = new HashMap<>();
        data.put("list", list);
        return new Response<>(200, "Successful",list.size(), data);
    }

    @GetMapping("/get-detail/{id}")
    public Response<Object> getProductById(@PathVariable Long id) {
        Product p = (Product) productDAO.get(id);
        if(p == null) {
            return new Response<>(400, "Data not found", null);
        }
        Map<String, Object> data = new HashMap<>();
        data.put("product", p);
        return new Response<>(200, "Successful", data);
    }

    @GetMapping("/get-product-by-category/{category}")
    public Response<List<Product>> getListProductByCategory(@PathVariable String category, @RequestParam(defaultValue = "1") Integer pageIndex) {

        List<Product> limitedList;
        List<Product> listByCategory = productDAO.getProductByCategory(category);
        //vị trí bắt đầu lấy sản phâm
        int from = 0;
        if(pageIndex !=1) {
            from = (pageIndex - 1) * 9;
            // Giới hạn danh sách chỉ có 9 phần tử

        }
        limitedList = listByCategory.stream().skip(from).limit(9)
                .collect(Collectors.toList());
        //lấy sub_category
        Map<String, List<Product>> data  = new HashMap<>();
        data.put("pageListProduct", limitedList);
        data.put("listByCategory", listByCategory);

        return new Response<>(200, "Successful", listByCategory.size(), data);
    }

    @GetMapping("/get-product-by-subCategory/{subCategory}")
    public Response<List<Product>> getListProductBySubCategory(@PathVariable String subCategory) {
        System.out.println(subCategory);
        List<Product> list = productDAO.getProductBySubCategory(subCategory);
        Map<String, List<Product>> data = new HashMap<>();
        data.put("list", list);
        return new Response<>(200, "Successful", data);
    }


}
