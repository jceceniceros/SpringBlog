package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import java.util.List;

import javax.validation.Valid;

import com.jceceniceros.tecmilenio.blog.forms.users.StoreUserForm;
import com.jceceniceros.tecmilenio.blog.forms.users.UpdateUserForm;
import com.jceceniceros.tecmilenio.blog.models.User;
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
    public String store(
        @Valid StoreUserForm userForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        String redirect = "redirect:/dashboard/users/create";

        if (bindingResult.hasErrors()) {
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.userForm", bindingResult);
            return redirect;
        }

        User user = new User(
            userForm.getFirstName(),
            userForm.getLastName(),
            userForm.getUsername(),
            userForm.getPassword()
        );

        service.save(user);

        attributes.addFlashAttribute("successMessage", "El usuario se creo corectamente");
        return redirect;
    }

    @GetMapping(value = "/{userId}")
    public String edit(@PathVariable Long userId, Model model) {
        User user = service.find(userId);
        model.addAttribute("user", user);
        return "dashboard/users/edit";
    }

    @PostMapping(value = "/{userId}")
    public String update(
        @PathVariable Long userId,
        @Valid UpdateUserForm userForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        String redirect = "redirect:/dashboard/users/" + userId;

        if (bindingResult.hasErrors()) {
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.userForm", bindingResult);
            return redirect;
        }

        User user = service.find(userId);

        user.setFirstName(userForm.getFirstName());
        user.setLastName(userForm.getLastName());
        user.setUsername(userForm.getUsername());
        user.setPassword(userForm.getPassword());

        service.save(user);

        attributes.addFlashAttribute("successMessage", "El usuario se actualizó corectamente");
        return redirect;
    }

    @PostMapping(value = "/{userId}/delete")
    public String delete(@PathVariable String userId, Model model) {
        model.addAttribute("action", "Dashboard Users Delete");
        return "test";
    }

}
