package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/dashboard")
public class DashboardController {

    @GetMapping(value = {"", "/"})
    public String index() {
        return "dashboard/index";
    }

}
