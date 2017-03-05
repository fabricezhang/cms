package xin.netservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import xin.netservice.model.VideoEntity;
import xin.netservice.repository.VideoRepository;

import java.util.List;

/**
 * Created by z on 2017/1/12.
 */
@Controller
public class VideoController {
    @Autowired
    VideoRepository videoRepository;

    @RequestMapping(value = "/video/{id}",method = RequestMethod.GET)
    public String showVideoByID(@PathVariable("id") Integer id, ModelMap modelMap){
        // 返回给请求页面
        VideoEntity videoEntity = videoRepository.findOne(id);
        if(null != videoEntity){
            modelMap.addAttribute("Video", videoEntity);
            return "/client/video";
        } else {
            return "redirect:/404";
        }
    }

    @RequestMapping(value = "/videos",method = RequestMethod.GET)
    public String showVideo(ModelMap modelMap){
        // 返回给请求页面
        List<VideoEntity> videoEntityList = videoRepository.findAll();
        return "/client/videos";
    }


}
