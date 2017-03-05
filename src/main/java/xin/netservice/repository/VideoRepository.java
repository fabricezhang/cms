package xin.netservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import xin.netservice.model.VideoEntity;

/**
 * Created by z on 2017/2/26.
 */
public interface VideoRepository extends JpaRepository<VideoEntity,Integer> {
    VideoEntity findById(Integer id);
}
