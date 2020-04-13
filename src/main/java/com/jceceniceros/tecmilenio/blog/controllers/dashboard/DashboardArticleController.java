package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import java.util.List;

import javax.validation.Valid;

import com.jceceniceros.tecmilenio.blog.forms.articles.StoreArticleForm;
import com.jceceniceros.tecmilenio.blog.forms.articles.UpdateArticleForm;
import com.jceceniceros.tecmilenio.blog.models.Article;
import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.services.ArticleService;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/dashboard/articles")
public class DashboardArticleController {

    @Autowired
    ArticleService articleService;

    @Autowired
    UserService userService;

    @GetMapping(value = { "", "/" })
    public String index(ModelMap model) {
        List<Article> articles = articleService.all();
        model.addAttribute("articles", articles);
        return "dashboard/articles/index";
    }

    @GetMapping(value = "/create")
    public String create() {
        return "dashboard/articles/create";
    }

    @PostMapping(value = { "", "/" })
    public String store(
        @Valid StoreArticleForm articleForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        if (bindingResult.hasErrors()) {
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.articleForm", bindingResult);
            return "redirect:/dashboard/articles/create";
        }

        User author = userService.find(1L);

        Article article = new Article(
            articleForm.getTitle(),
            articleForm.getBody(),
            articleForm.getImageUrl(),
            author
        );

        articleService.save(article);

        attributes.addFlashAttribute("successMessage", "El artículo se creo correctamente");
        return "redirect:/dashboard/articles";
    }

    @GetMapping(value = "/{articleId}")
    public String edit(
        @PathVariable Long articleId,
        Model model
    ) {
        Article article = articleService.find(articleId);
        model.addAttribute("article", article);
        return "dashboard/articles/edit";
    }

    @PostMapping(value = "/{articleId}")
    public String update(
        @PathVariable Long articleId,
        @Valid UpdateArticleForm articleForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        String redirect = "redirect:/dashboard/articles/" + articleId;

        if (bindingResult.hasErrors()) {
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.articleForm", bindingResult);
            return redirect;
        }

        Article article = articleService.find(articleId);

        article.setTitle(articleForm.getTitle());
        article.setBody(articleForm.getBody());
        article.setImageUrl(articleForm.getImageUrl());

        articleService.save(article);

        attributes.addFlashAttribute("successMessage", "El articulo se actualizó correctamente.");
        return redirect;
    }

}
