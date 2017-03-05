package xin.netservice.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by z on 2017/2/26.
 */
@Entity
@Table(name = "article", schema = "cms", catalog = "")
public class ArticleEntity {
    private int id;
    private String title;
    private String imagePath;
    private UserEntity userByUserId;
    private CourseEntity courseByCategory;
    private Collection<VideoEntity> videosById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "title", nullable = false, length = 255)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "image_path", nullable = true, length = 1000)
    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ArticleEntity that = (ArticleEntity) o;

        if (id != that.id) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (imagePath != null ? !imagePath.equals(that.imagePath) : that.imagePath != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (imagePath != null ? imagePath.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    public UserEntity getUserByUserId() {
        return userByUserId;
    }

    public void setUserByUserId(UserEntity userByUserId) {
        this.userByUserId = userByUserId;
    }

    @ManyToOne
    @JoinColumn(name = "category", referencedColumnName = "id")
    public CourseEntity getCourseByCategory() {
        return courseByCategory;
    }

    public void setCourseByCategory(CourseEntity courseByCategory) {
        this.courseByCategory = courseByCategory;
    }

    @OneToMany(mappedBy = "articleByArticleId")
    public Collection<VideoEntity> getVideosById() {
        return videosById;
    }

    public void setVideosById(Collection<VideoEntity> videosById) {
        this.videosById = videosById;
    }
}
