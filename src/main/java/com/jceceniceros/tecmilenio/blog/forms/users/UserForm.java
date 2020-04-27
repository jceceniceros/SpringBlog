package com.jceceniceros.tecmilenio.blog.forms.users;

import java.util.List;

import com.jceceniceros.tecmilenio.blog.models.Role;

abstract public class UserForm {

    abstract public String getFirstName();

    abstract public void setFirstName(String firstName);

    abstract public String getLastName();

    abstract public void setLastName(String lastName);

    abstract public String getUsername();

    abstract public void setUsername(String username);

    abstract public String getPassword();

    abstract public void setPassword(String password);

    abstract public List<Role> getRoles();

    abstract public void setRoles(List<Role> roles);

}
