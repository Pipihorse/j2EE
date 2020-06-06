package com.马祖宇323.service;

import com.马祖宇323.dao.score_dao;
import com.马祖宇323.pojo.score;
import com.马祖宇323.pojo.user;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 皮皮马
 * @create 2020-5-28 11:22
 */
@Service
public class score_serviceimpl implements score_service {
    @Autowired
    private score_dao dao;



    public List<score> select() {
        return dao.select();
    }

    public int findsum() {
        return dao.findsum();
    }

}
