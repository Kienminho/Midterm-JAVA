package com.kayty.src.API;

import com.kayty.src.DAO.ShoppingCartDAO;
import com.kayty.src.DAO.ShoppingCartProductDAO;
import com.kayty.src.DAO.UserDAO;
import com.kayty.src.Helps.Response;
import com.kayty.src.Helps.Utils;
import com.kayty.src.Model.Order;
import com.kayty.src.Model.ShoppingCart;
import com.kayty.src.Model.ShoppingCartProduct;
import com.kayty.src.Model.User;
import com.kayty.src.Repository.OrderRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.kayty.src.Helps.Utils.userLogin;

@RestController
@RequestMapping("/api/order")
public class OrderAPIController {
    @Autowired
    private HttpServletRequest request;

    @Autowired
    private ShoppingCartProductDAO shoppingCartProductDAO;


    @Autowired
    private ShoppingCartDAO shoppingCartDAO;

    @Autowired
    private OrderRepository orderRepository;

    @GetMapping("/get-products-orders")
    public Response<List<ShoppingCartProduct>> getProductOrder() {
        System.out.println(userLogin.getId());
        ShoppingCart sp = shoppingCartDAO.shoppingCartOfUser(userLogin.getId());
        List<ShoppingCartProduct> listProduct = shoppingCartProductDAO.getProductInCart(sp);
        Map<String, List<ShoppingCartProduct>> data = new HashMap<>();
        data.put("listProductOrder", listProduct);

        return new Response<>(200, "successful", listProduct.size(), data);
    }

    @PostMapping("/update-quantity")
    public Response<Object> updateQuantityOfProductInShoppingCart(@RequestBody Map<String, Integer> req) {
        Long productId = Long.valueOf(req.get("productId"));
        int newQuantity = req.get("newQuantity");
        int newPrice = req.get("newPrice");

        boolean isUpdated = shoppingCartProductDAO.updateQuantity(Utils.shoppingCart, newQuantity, newPrice, productId);
        if(isUpdated) {
            HttpSession session = request.getSession();
            Integer oldTotalQuantity = (Integer) session.getAttribute("totalQuantity");
            session.setAttribute("totalQuantity", oldTotalQuantity + newQuantity);

            return new Response<>(200, "Successful",0, null);
        }

        return new Response<>(300, "Update fail",0, null);
    }

    @PostMapping("/delete-product")
    public Response<Object> deleteProductInShoppingCart(@RequestBody Map<String, Integer> req) {
        Long productId = Long.valueOf(req.get("productId"));
        int quantity = req.get("quantityProductDeleted");

        boolean isDeleted = shoppingCartProductDAO.deleteProduct(Utils.shoppingCart, productId);
        if(isDeleted) {
            HttpSession session = request.getSession();
            Integer oldTotalQuantity = (Integer) session.getAttribute("totalQuantity");
            session.setAttribute("totalQuantity", oldTotalQuantity - quantity);
            return new Response<>(200, "Successful",0, null);
        }

        return new Response<>(300, "Delete fail",0, null);
    }

    @PostMapping("/add-order")
    public Response<Object> addOrder(@RequestBody Map<String, Integer> req) {
        int quantityPay = req.get("quantityPay");
        int moneyPay =req.get("moneyPay");

        Order order = new Order(userLogin, quantityPay, moneyPay);
        orderRepository.save(order);
        Utils.orderNow = order;
        //delete all shopping-cart after order successfully
        orderRepository.deleteByShoppingCartId(Utils.shoppingCart.getId());
        HttpSession session = request.getSession();
        session.setAttribute("totalQuantity", 0);
        return new Response<>(200, "Successful",0, null);
    }
}
