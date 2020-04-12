package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.forms.users.StoreUserForm;
import com.jceceniceros.tecmilenio.blog.forms.users.UpdateUserForm;
import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
    public String store(StoreUserForm storeUserForm, RedirectAttributes attributes) {
        User user = new User(
            storeUserForm.getFirstName(),
            storeUserForm.getLastName(),
            storeUserForm.getUsername(),
            storeUserForm.getPassword()
        );

        service.save(user);

        attributes.addFlashAttribute("successMessage", "El usuario se creo corectamente");
        return "redirect:/dashboard/users";
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
        UpdateUserForm updateUserForm,
        RedirectAttributes attributes
    ) {
        User user = service.find(userId);

        user.setFirstName(updateUserForm.getFirstName());
        user.setLastName(updateUserForm.getLastName());
        user.setUsername(updateUserForm.getUsername());
        user.setPassword(updateUserForm.getPassword());


        service.save(user);

        attributes.addFlashAttribute("successMessage", "El usuario se actualizó corectamente");
        return "redirect:/dashboard/users/" + userId;
    }

    @PostMapping(value = "/{userId}/delete")
    public String delete(@PathVariable String userId, Model model) {
        model.addAttribute("action", "Dashboard Users Delete");
        return "test";
    }

}
