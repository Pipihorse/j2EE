package com.马祖宇323.dao;

import com.马祖宇323.pojo.score;
import com.马祖宇323.pojo.user;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author 皮皮马
 * @create 2020-5-28 11:19
 */
public interface score_dao {

    @Select("select id,name,sno,school,department,major,class,score,commit_time from score_323 limit 0,10")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "name", property = "name"),
            @Result(column = "sno", property = "sno"),
            @Result(column = "school", property = "school"),
            @Result(column = "department", property = "department"),
            @Result(column = "major", property = "major"),
            @Result(column = "class", property = "class1"),
            @Result(column = "score", property = "score"),
            @Result(column = "commit_time", property = "commit_time")
    }
    )
    public List<score> select();
    @Select("select sum(1) from score_323")
    public int findsum();
}
