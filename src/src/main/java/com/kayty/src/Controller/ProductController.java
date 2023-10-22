package com.kayty.src.Controller;

import com.kayty.src.DAO.ProductDAO;
import com.kayty.src.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductDAO productDAO = new ProductDAO();

    @GetMapping("/get-detail/{id}")
    public String renderDetailProduct(@PathVariable Long id, Model model) {

        // Gọi API để lấy thông tin sản phẩm
        String apiUrl = "http://localhost:8080/api/product/get-detail/" + id;
        RestTemplate restTemplate = new RestTemplate();
        String productInfo = restTemplate.getForObject(apiUrl, String.class);
        // Truyền dữ liệu đến template Thymeleaf
        model.addAttribute("productInfo", productInfo);

        return "detail_product";
    }

    @GetMapping("/category/{category}")
    public String renderDetailCategory(@PathVariable String category, Model model) {

        List<Product> listByCategory = productDAO.getProductByCategory(category);
        // Giới hạn danh sách chỉ có 9 phần tử
        List<Product> limitedList = listByCategory.stream().limit(9).collect(Collectors.toList());
        List<String> listSubCategory = productDAO.getSubCategory(category);

        //gửi list data qua template
        model.addAttribute("listSubCategory", listSubCategory);
        model.addAttribute("listByCategory", limitedList);

        return "detail_category";
    }
}
