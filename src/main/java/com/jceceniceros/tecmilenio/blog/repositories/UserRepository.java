package com.jceceniceros.tecmilenio.blog.repositories;

import com.jceceniceros.tecmilenio.blog.models.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    public User findByUsername(String username);

}
