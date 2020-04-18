package com.jceceniceros.tecmilenio.blog.implementations;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.User;
import com.jceceniceros.tecmilenio.blog.repositories.UserRepository;
import com.jceceniceros.tecmilenio.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository repository;

    public List<User> all() {
        return repository.findAll();
    }

    public User find(Long id) {
        return repository.getOne(id);
    }

    public Boolean save(User user) {
        try {
            repository.save(user);
            return true;
        } catch (Exception e) {
            // Log de la excepcion
            return false;
        }
    }

    public User findByUsername(String username) {
        return repository.findByUsername(username);
    }

}
