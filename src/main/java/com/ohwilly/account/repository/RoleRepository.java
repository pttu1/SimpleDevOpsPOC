package com.ohwilly.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ohwilly.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
