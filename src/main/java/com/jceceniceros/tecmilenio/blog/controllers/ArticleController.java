package com.jceceniceros.tecmilenio.blog.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/articles")
public class ArticleController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index() {
        return "articles/index";
    }

    @RequestMapping(value = "/{article_id}", method = RequestMethod.GET)
    public String show(
        @PathVariable String article_id,
        Model model
    ) {
        System.out.println("Article ID = " + article_id);

        model.addAttribute("var1", "Hello World!");
        return "articles/show";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        return "articles/search";
    }

}
