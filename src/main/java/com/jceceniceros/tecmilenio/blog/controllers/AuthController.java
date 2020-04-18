package com.jceceniceros.tecmilenio.blog.controllers;

import javax.validation.Valid;

import com.jceceniceros.tecmilenio.blog.forms.users.StoreUserForm;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/auth")
public class AuthController {

    @Autowired
    UserService service;

    @GetMapping(value = "/login")
    public String login(
        Model model,
        String error,
        String logout
    ) {
        if (error != null) {
            model.addAttribute("error", "Las credenciales no son válidas.");
        }

        if (logout != null) {
            model.addAttribute("message", "Se cerró sesión correctamente.");
        }

        return "auth/login";
    }

    @GetMapping(value = "/register")
    public String showRegister() {
        return "auth/register";
    }

    @PostMapping(value = "/register")
    public String register(
        @Valid StoreUserForm userForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        if (bindingResult.hasErrors()) {
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.registerForm", bindingResult);
            return "redirect:/auth/register";
        }

        service.save(userForm, null);

        attributes.addFlashAttribute("successMessage", "El registro se completó correctamente");
        return "redirect:/auth/login";
    }

}
