package ma.ens.springbootdockerapp.repository;

import ma.ens.springbootdockerapp.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}