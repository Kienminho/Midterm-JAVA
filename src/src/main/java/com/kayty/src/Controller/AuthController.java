package com.kayty.src.Controller;

import com.kayty.src.DAO.UserDAO;
import com.kayty.src.Helps.Response;
import com.kayty.src.Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/auth")

public class AuthController {

    @Autowired
    private UserDAO userDAO = new UserDAO();

    //render giao diện login
    @GetMapping("/login")
    public String renderLogin() {

        return "login";
    }

    //render giao diện đăng kí
    @GetMapping("/register")
    public String renderRegister() {
        return "register";
    }
//
//    @GetMapping("/all")
//    public Response<User> getAll() {
//        User list =  (User) userDAO.getByName("admin");
//        return new Response<>(404, "User not found", list);
//    }



//    @PostMapping("/login")
//    public Response<String> handleLogin(@RequestBody User user) {
//        System.out.println(28);
//        System.out.println(user.getPassword());
//        User existUser = (User) userDAO.getByName(user.getUsername());
//        if(existUser != null) {
//            if (existUser.getPassword().equals(user.getPassword())) {
//                return new Response<>(200, "Login successful", "Null");
//            }
//            else
//                return new Response<>(400, "Password Incorrect", "Null");
//        }
//        return new Response<>(404, "User not found", "Null");
//
//    }
}





