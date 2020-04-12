package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.forms.users.CreateUserForm;
import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/dashboard/users")
public class UserController {

    @Autowired
    UserService service;

    @GetMapping(value = {"", "/"})
    public String index(ModelMap model) {
        List<User> users = service.all();
        model.addAttribute("users", users);
        return "dashboard/users/index";
    }

    @GetMapping(value = "/create")
    public String create(Model model) {
        return "dashboard/users/create";
    }

    @PostMapping(value = { "", "/" })
    public String store(CreateUserForm userRequest, RedirectAttributes attributes) {
        User user = new User(
            userRequest.getFirstName(),
            userRequest.getLastName(),
            userRequest.getUsername(),
            userRequest.getPassword()
        );

        service.save(user);

        attributes.addFlashAttribute("successMessage", "El usuario se creo exitosamente");
        return "redirect:/dashboard/users";
    }

    @GetMapping(value = "/{article_id}")
    public String edit(@PathVariable String article_id, Model model) {
        model.addAttribute("action", "Dashboard Users Edit");
        return "test";
    }

    @PatchMapping(value = "/{article_id}")
    public String update(@PathVariable String article_id, Model model) {
        model.addAttribute("action", "Dashboard Users Update");
        return "test";
    }

    @DeleteMapping(value = "/{article_id}")
    public String delete(@PathVariable String article_id, Model model) {
        model.addAttribute("action", "Dashboard Users Delete");
        return "test";
    }

}
