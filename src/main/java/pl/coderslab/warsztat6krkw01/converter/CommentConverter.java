package pl.coderslab.warsztat6krkw01.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.warsztat6krkw01.entity.Comment;
import pl.coderslab.warsztat6krkw01.entity.Tweet;
import pl.coderslab.warsztat6krkw01.repository.CommentRepository;
import pl.coderslab.warsztat6krkw01.repository.TweetRepository;

public class CommentConverter implements Converter<String, Comment> {

    @Autowired
    CommentRepository commentRepository;

    @Override
    public Comment convert(String s) {
        return commentRepository.findOne(Long.parseLong(s));
    }

}