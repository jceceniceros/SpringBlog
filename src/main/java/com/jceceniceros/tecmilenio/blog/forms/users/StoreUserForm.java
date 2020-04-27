package com.jceceniceros.tecmilenio.blog.forms.users;

import java.util.List;

import javax.validation.constraints.NotEmpty;

import com.jceceniceros.tecmilenio.blog.models.Role;

public class StoreUserForm extends UserForm {

    @NotEmpty(message="{user.firstname.empty}")
    private String firstName;

    @NotEmpty(message="{user.lastname.empty}")
    private String lastName;

    @NotEmpty(message="{user.username.empty}")
    private String username;

    @NotEmpty(message="{user.password.empty}")
    private String password;

    @NotEmpty(message = "{user.roles.empty}")
    private List<Role> roles;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

}
