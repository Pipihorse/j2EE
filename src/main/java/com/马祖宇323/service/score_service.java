package com.马祖宇323.service;

import com.马祖宇323.pojo.score;
import com.马祖宇323.pojo.user;

import java.util.List;

/**
 * @Author 皮皮马
 * @create 2020-5-28 11:22
 */
public interface score_service {
    public List<score> select();
    public int findsum();
}
