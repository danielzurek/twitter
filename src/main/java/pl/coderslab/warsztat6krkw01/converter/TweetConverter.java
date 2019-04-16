package pl.coderslab.warsztat6krkw01.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.warsztat6krkw01.entity.Tweet;
import pl.coderslab.warsztat6krkw01.repository.TweetRepository;

public class TweetConverter implements Converter<String, Tweet> {

    @Autowired
    TweetRepository tweetRepository;

    @Override
    public Tweet convert(String s) {
        return tweetRepository.findOne(Long.parseLong(s));
    }

}

