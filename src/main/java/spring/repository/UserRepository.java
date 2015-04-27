package spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import spring.entity.User;

@Repository("UserRepository")
public interface UserRepository extends JpaRepository<User ,  Long> {
}
