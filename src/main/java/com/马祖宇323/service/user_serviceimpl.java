package com.马祖宇323.service;

import com.马祖宇323.dao.user_dao;
import com.马祖宇323.pojo.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @Author 皮皮马
 * @create 2020-6-3 18:53
 */
@Controller
public class user_serviceimpl implements user_service{
    @Autowired
    private user_dao Dao;
    public user find(String name, String password) {
        return Dao.finduser(name,password);
    }
}
