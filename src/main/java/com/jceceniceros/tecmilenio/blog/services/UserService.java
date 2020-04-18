package com.jceceniceros.tecmilenio.blog.services;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.forms.users.UserForm;
import com.jceceniceros.tecmilenio.blog.models.User;

public interface UserService {

    public List<User> all();
    public User find(Long id);
    public Boolean persist(User user);
    public Boolean delete(User user);

    public User findByUsername(String username);

    public User save(UserForm form, User user);
}
