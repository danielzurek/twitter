package pl.coderslab.warsztat6krkw01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.warsztat6krkw01.entity.Tweet;
import pl.coderslab.warsztat6krkw01.entity.User;
import pl.coderslab.warsztat6krkw01.repository.CommentRepository;
import pl.coderslab.warsztat6krkw01.repository.TweetRepository;
import pl.coderslab.warsztat6krkw01.repository.UserRepository;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.Date;

@Controller
@RequestMapping(value = "tweet")
public class TweetController {

    @Autowired
    private CommentRepository commentRepository;

    @Autowired
    private TweetRepository tweetRepository;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/add")
    public String addTweet(Model model) {
        model.addAttribute("tweet", new Tweet());
        return "tweet/add";
    }

    @PostMapping("/add")
    public String saveEdited(@RequestParam(name = "userId") User userId, @Valid Tweet tweet, BindingResult bindingResult, User user) {
        if (bindingResult.hasErrors()) {
            return "tweet/add";
        } else {
            Date now = new Date();
            now.getTime();
            tweet.setCreated(now);
            tweet.setUser(userId);
            this.tweetRepository.save(tweet);
            return "redirect:/";
        }
    }

    @GetMapping("/show")
    public String showTweet(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("tweet", this.tweetRepository.findOne(id));
        model.addAttribute("comments", this.commentRepository.findAllByTweetId(id));
        return "tweet/show";
    }

    @GetMapping("/byUser")
    public String showTweetsByUser(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("tweetsByUser", this.tweetRepository.findAllByUserId(id));
        return "tweet/allByUser";
    }


//    @RequestMapping(value = "/tweet/show", method = RequestMethod.POST)
//    public String saveEdited(@Valid Article article, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//
//            return "article/edit";
//        } else {
//            this.articleRepository.save(article);
//            return "redirect:/article";
//        }
//    }
}
