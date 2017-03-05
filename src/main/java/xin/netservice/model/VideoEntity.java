package xin.netservice.model;

import javax.persistence.*;

/**
 * Created by z on 2017/2/26.
 */
@Entity
@Table(name = "video", schema = "cms", catalog = "")
public class VideoEntity {
    private int id;
    private String title;
    private String videoUrl;
    private ArticleEntity articleByArticleId;
    private CourseEntity courseByCategory;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "title", nullable = false, length = 100)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "video_url", nullable = false, length = 255)
    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VideoEntity that = (VideoEntity) o;

        if (id != that.id) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (videoUrl != null ? !videoUrl.equals(that.videoUrl) : that.videoUrl != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (videoUrl != null ? videoUrl.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "article_id", referencedColumnName = "id")
    public ArticleEntity getArticleByArticleId() {
        return articleByArticleId;
    }

    public void setArticleByArticleId(ArticleEntity articleByArticleId) {
        this.articleByArticleId = articleByArticleId;
    }

    @ManyToOne
    @JoinColumn(name = "category", referencedColumnName = "id")
    public CourseEntity getCourseByCategory() {
        return courseByCategory;
    }

    public void setCourseByCategory(CourseEntity courseByCategory) {
        this.courseByCategory = courseByCategory;
    }
}
