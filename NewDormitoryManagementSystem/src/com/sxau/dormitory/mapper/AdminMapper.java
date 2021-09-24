package com.sxau.dormitory.mapper;

import java.util.List;
import java.util.Map;

import com.sxau.dormitory.entity.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    //登录
    Admin selectByUserNameAndPassword(Map<String, String> admin);
    
    //根据条件查询
    List<Admin> selectByUser(Admin admin);
}