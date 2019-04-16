package pl.coderslab.warsztat6krkw01.entity;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "comment")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull
    @NotBlank
    @Column(columnDefinition = "longtext")
    private String commentText;
    @Column(updatable = false)
    @CreationTimestamp
    // private Date created;
    @Temporal(TemporalType.TIMESTAMP)
//    @DateTimeFormat(pattern = "dd-mm-yyyy hh:mm:ss")
    private Date created;
    @ManyToOne
    private User user;
    @ManyToOne
    private Tweet tweet;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCommentText() {
        return commentText;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Tweet getTweet() {
        return tweet;
    }

    public void setTweet(Tweet tweet) {
        this.tweet = tweet;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", commentText='" + commentText + '\'' +
                ", created=" + created +
                ", user=" + user +
                ", tweet=" + tweet +
                '}';
    }
}
