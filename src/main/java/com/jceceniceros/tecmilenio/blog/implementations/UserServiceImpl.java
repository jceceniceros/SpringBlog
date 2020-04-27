package com.jceceniceros.tecmilenio.blog.implementations;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.forms.users.UserForm;
import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.repositories.UserRepository;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    private UserRepository repository;

    public List<User> all() {
        return repository.findAll();
    }

    public User find(Long id) {
        return repository.getOne(id);
    }

    public Boolean persist(User user) {
        try {
            repository.save(user);
            return true;
        } catch (Exception e) {
            // Log de la excepcion
            return false;
        }
    }

    public Boolean delete(User user) {
        try {
            repository.delete(user);
            return true;
        } catch (Exception e) {
            // Log de la excepcion
            return false;
        }
    }

    //

    public User findByUsername(String username) {
        return repository.findByUsername(username);
    }

    //

    public User save(UserForm form, User u) {
        User user = (u != null) ? u : new User();
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setUsername(form.getUsername());
        user.setPassword(passwordEncoder.encode(form.getPassword()));
        user.setRoles(form.getRoles());
        persist(user);
        return user;
    }

}
