package com.kayty.src.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {


    @GetMapping({"/", "/home"})
    public String renderHome() {
        return "index";
    }

    @GetMapping("/info")
    public String renderInfo() {
        return "info";
    }


    @GetMapping("/contact")
    public String renderContact() {
        return "contact";
    }

    @GetMapping("/searchs")

    public String renderSearch() {
        return "search";
    }
}
