package com.jceceniceros.tecmilenio.blog.services;

import com.jceceniceros.tecmilenio.blog.models.User;

public interface UserService {

    public User find(Long id);
    public Boolean save(User user);

}
