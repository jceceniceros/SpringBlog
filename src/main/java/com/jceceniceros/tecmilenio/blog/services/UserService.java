package com.jceceniceros.tecmilenio.blog.services;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.User;

public interface UserService {

    public List<User> all();
    public User find(Long id);
    public Boolean save(User user);

}
