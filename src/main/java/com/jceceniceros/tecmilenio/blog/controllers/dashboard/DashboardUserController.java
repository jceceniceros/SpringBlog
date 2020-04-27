package com.jceceniceros.tecmilenio.blog.controllers.dashboard;

import java.util.List;

import javax.validation.Valid;

import com.jceceniceros.tecmilenio.blog.forms.users.StoreUserForm;
import com.jceceniceros.tecmilenio.blog.forms.users.UpdateUserForm;
import com.jceceniceros.tecmilenio.blog.models.Role;
import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.services.RoleService;
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
public class DashboardUserController {

    @Autowired
    RoleService roleService;

    @Autowired
    UserService userService;

    @GetMapping(value = {"", "/"})
    public String index(ModelMap model) {
        List<User> users = userService.all();
        model.addAttribute("users", users);
        return "dashboard/users/index";
    }

    @GetMapping(value = "/create")
    public String create(Model model) {
        List<Role> roles = roleService.all();
        model.addAttribute("roles", roles);
        return "dashboard/users/create";
    }

    @PostMapping(value = { "", "/" })
    public String store(
        @Valid StoreUserForm userForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        if (bindingResult.hasErrors()) {
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.userForm", bindingResult);
            return "redirect:/dashboard/users/create";
        }

        userService.save(userForm, null);

        attributes.addFlashAttribute("successMessage", "El usuario se creo correctamente");
        return "redirect:/dashboard/users";
    }

    @GetMapping(value = "/{userId}")
    public String edit(
        @PathVariable Long userId,
        Model model
    ) {
        List<Role> roles = roleService.all();
        model.addAttribute("roles", roles);

        User user = userService.find(userId);
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

        User user = userService.find(userId);
        userService.save(userForm, user);

        attributes.addFlashAttribute("successMessage", "El usuario se actualizó corectamente");
        return redirect;
    }

    @PostMapping(value = "/{userId}/delete")
    public String delete(
        @PathVariable Long userId,
        RedirectAttributes attributes)
    {
        User user = userService.find(userId);
        userService.delete(user);
        attributes.addFlashAttribute("successMessage", "El usuario se eliminó correctamente.");
        return "redirect:/dashboard/users";
    }

}
