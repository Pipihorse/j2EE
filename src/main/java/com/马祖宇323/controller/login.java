package com.马祖宇323.controller;
import com.马祖宇323.pageutils.page;
import com.马祖宇323.pageutils.pageutils;
import com.马祖宇323.pojo.score;
import com.马祖宇323.pojo.user;
import com.马祖宇323.service.score_service;
import com.马祖宇323.service.user_service;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Type;
import java.util.List;

/**
 * @Author 皮皮马
 * @create 2020-5-27 17:43
 */
@Controller
public class login {
    @Autowired
    private user_service User;
    @Autowired
    private score_service Score;
    @RequestMapping(value = "/login")
    public String login(@Param("a") String current_page){
        System.out.println(current_page);
    return "/login";
    }
    @RequestMapping("/index")
    public String index(String Name, String Password, Model model, HttpSession session,@Param("pageNum") String pageNum){
        user u=User.find(Name,Password);
        System.out.println(pageNum);
        if (u!=null) {
            session.setAttribute("user1",Name);
            List<score> list=Score.select();
            for (score score : list) {
                System.out.println(score);
            }

            int everypage=10;
            int totalCount=Score.findsum();
            int currentpage=1;
            page page= pageutils.createpage(everypage,totalCount,currentpage);
            model.addAttribute("score",list);
            model.addAttribute("page",page);
            return "/list";
        }else {
            model.addAttribute("msg","用户名或密码错误！");
            return "/login";
        }
    }
    @RequestMapping("/list")
    public String list(){

        System.out.println("list");return "/list";
    }
}
