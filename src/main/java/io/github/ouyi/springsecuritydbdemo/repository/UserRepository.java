package io.github.ouyi.springsecuritydbdemo.repository;

import io.github.ouyi.springsecuritydbdemo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer>{
    // The method name needs to match the username field name in User
    Optional<User> findByUsername(String username);
}
