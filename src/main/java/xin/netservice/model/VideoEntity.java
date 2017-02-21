package xin.netservice.model;

import javax.persistence.*;

/**
 * Created by z on 2017/2/21.
 */
@Entity
@Table(name = "video", schema = "cms", catalog = "")
public class VideoEntity {
    private int id;
    private String url;
    private String qrcodeUrl;
    private ArticleEntity articleByArticleId;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "url", nullable = true, length = 255)
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "qrcodeUrl", nullable = true, length = 255)
    public String getQrcodeUrl() {
        return qrcodeUrl;
    }

    public void setQrcodeUrl(String qrcodeUrl) {
        this.qrcodeUrl = qrcodeUrl;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VideoEntity that = (VideoEntity) o;

        if (id != that.id) return false;
        if (url != null ? !url.equals(that.url) : that.url != null) return false;
        if (qrcodeUrl != null ? !qrcodeUrl.equals(that.qrcodeUrl) : that.qrcodeUrl != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (qrcodeUrl != null ? qrcodeUrl.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "article_id", referencedColumnName = "id", nullable = false)
    public ArticleEntity getArticleByArticleId() {
        return articleByArticleId;
    }

    public void setArticleByArticleId(ArticleEntity articleByArticleId) {
        this.articleByArticleId = articleByArticleId;
    }
}
