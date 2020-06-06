package com.马祖宇323.dao;

import com.马祖宇323.pojo.user;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @Author 皮皮马
 * @create 2020-6-3 18:52
 */
public interface user_dao {
    @Select("select * from user_1 where name=#{name} and  password=#{password}" )
    public user finduser(@Param("name")String name, @Param("password") String password);
}
