package com.ohwilly.account.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ohwilly.account.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findById(long id);
    /*public void updateUser(User user)*/;
    
}