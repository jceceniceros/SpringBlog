package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import com.jceceniceros.tecmilenio.blog.forms.users.CreateUserForm;
import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/dashboard/users")
public class UserController {

    @Autowired
    UserService service;

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public String index(Model model) {
        return "dashboard/users/index";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {
        return "dashboard/users/create";
    }

    @RequestMapping(value = { "", "/" }, method = RequestMethod.POST)
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

    @RequestMapping(value = "/{article_id}", method = RequestMethod.GET)
    public String edit(@PathVariable String article_id, Model model) {
        model.addAttribute("method", "Dashboard Users Edit");
        return "test";
    }

    @RequestMapping(value = "/{article_id}", method = RequestMethod.PATCH)
    public String update(@PathVariable String article_id, Model model) {
        model.addAttribute("method", "Dashboard Users Update");
        return "test";
    }

    @RequestMapping(value = "/{article_id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable String article_id, Model model) {
        model.addAttribute("method", "Dashboard Users Delete");
        return "test";
    }

}
