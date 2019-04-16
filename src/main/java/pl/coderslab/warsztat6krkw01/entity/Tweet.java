package pl.coderslab.warsztat6krkw01.entity;

import org.hibernate.annotations.CreationTimestamp;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.warsztat6krkw01.model.UserDto;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.util.Date;

@Entity
@Table(name = "tweet")
public class Tweet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private User user;
    @Column(name = "text", length = 214768)
    private String text;
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date created;
//    @Temporal(TemporalType.TIMESTAMP)
//    Date created;
//    @CreationTimestamp
//    private Date created;


//    private LocalDate created;

    public Tweet() {
    }


    public Tweet(User user) {
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    @Override
    public String toString() {
        return "Tweet{" +
                "id=" + id +
                ", user=" + user +
                ", text='" + text + '\'' +
                ", created=" + created +
                '}';
    }
}
