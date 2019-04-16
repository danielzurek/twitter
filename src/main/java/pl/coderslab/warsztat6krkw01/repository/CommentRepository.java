package pl.coderslab.warsztat6krkw01.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.warsztat6krkw01.entity.Comment;
import pl.coderslab.warsztat6krkw01.entity.Tweet;

import java.util.List;

public interface CommentRepository
        extends JpaRepository<Comment, Long> {

    @Query(value = "SELECT * FROM comment WHERE tweet_id = ?1", nativeQuery = true)
    List<Comment> findAllByTweetId(Long id);
}
