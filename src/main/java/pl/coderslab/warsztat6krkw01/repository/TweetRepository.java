package pl.coderslab.warsztat6krkw01.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.warsztat6krkw01.entity.Tweet;
import pl.coderslab.warsztat6krkw01.entity.User;

import java.util.List;

public interface TweetRepository
        extends JpaRepository<Tweet, Long> {

    @Query(value = "SELECT * FROM tweet WHERE user_id = ?1", nativeQuery = true)
    List<Tweet> findAllByUserId(Long id);
}
