package com.kayty.src.Controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller


public class AdminController {

    @GetMapping("/admin")

    public String renderAdmin() {
        return "admin";
    }
}
