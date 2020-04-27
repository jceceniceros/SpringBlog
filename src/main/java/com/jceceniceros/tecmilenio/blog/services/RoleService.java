package com.jceceniceros.tecmilenio.blog.services;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.Role;

public interface RoleService {

    public List<Role> all();
    public Role find(Long id);

}
