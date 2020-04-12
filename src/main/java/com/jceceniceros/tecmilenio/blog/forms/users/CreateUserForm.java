package com.jceceniceros.tecmilenio.blog.forms.users;

import javax.validation.constraints.NotEmpty;

public class CreateUserForm {

    @NotEmpty
    private String firstName;

    @NotEmpty
    private String lastName;

    @NotEmpty
    private String username;

    @NotEmpty
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

    @Override
    public String toString() {
        String formatString = "CreateUserForm [ firstName=%s, lastName=%s, username=%s, password=%s ]";
        return String.format(formatString, firstName, lastName, username, password);
    }

}
