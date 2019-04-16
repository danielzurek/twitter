package pl.coderslab.warsztat6krkw01.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.warsztat6krkw01.entity.User;
import pl.coderslab.warsztat6krkw01.repository.UserRepository;

public class UserConverter implements Converter<String, User> {

    @Autowired
    UserRepository userRepository;

    @Override
    public User convert(String s) {
        return userRepository.findOne(Long.parseLong(s));
    }

}