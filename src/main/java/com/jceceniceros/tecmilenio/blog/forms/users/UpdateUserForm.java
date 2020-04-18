package com.jceceniceros.tecmilenio.blog.forms.users;

import javax.validation.constraints.NotEmpty;

public class UpdateUserForm extends UserForm {

    @NotEmpty(message = "{user.firstname.empty}")
    private String firstName;

    @NotEmpty(message = "{user.lastname.empty}")
    private String lastName;

    @NotEmpty(message = "{user.username.empty}")
    private String username;

    private String password;

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

}
