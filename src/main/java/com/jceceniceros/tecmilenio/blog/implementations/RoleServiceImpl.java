package com.jceceniceros.tecmilenio.blog.implementations;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.Role;
import com.jceceniceros.tecmilenio.blog.repositories.RoleRepository;
import com.jceceniceros.tecmilenio.blog.services.RoleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository repository;

    public List<Role> all() {
        return repository.findAll();
    }

    public Role find(Long id) {
        return repository.getOne(id);
    }

}
