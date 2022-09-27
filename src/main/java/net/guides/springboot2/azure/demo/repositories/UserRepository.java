package net.guides.springboot2.azure.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import net.guides.springboot2.azure.demo.domain.User;

public interface UserRepository extends JpaRepository<User, Integer>
{
	User findByEmail(String email);
}
