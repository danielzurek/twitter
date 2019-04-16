package pl.coderslab.warsztat6krkw01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.warsztat6krkw01.entity.Comment;
import pl.coderslab.warsztat6krkw01.entity.Tweet;
import pl.coderslab.warsztat6krkw01.entity.User;
import pl.coderslab.warsztat6krkw01.repository.CommentRepository;
import pl.coderslab.warsztat6krkw01.repository.TweetRepository;
import pl.coderslab.warsztat6krkw01.repository.UserRepository;

import javax.validation.Valid;
import java.util.Date;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private TweetRepository tweetRepository;
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/add")
    public String addComment(Model model) {
        model.addAttribute("comment", new Tweet());
        return "comment/add";
    }

    @PostMapping("/add")
    public String saveComment(@RequestParam(name = "userId") User userId, @RequestParam(name = "tweetId") Tweet tweetId, @Valid Comment comment) {
            Date date = new Date();
            comment.setUser(userId);
            comment.setTweet(tweetId);
            comment.setCreated(date);
            this.commentRepository.save(comment);

        return "redirect: /tweet/show?id=" + userId.getId();
    }


//    @GetMapping("/show")
//    public String show (@RequestParam(name = "id")Long tweetId, Model model){
//
//        model.addAttribute("comments", this.commentRepository.findAllByTweetId(tweetId));
//        return "comment/show";
//    }
}
