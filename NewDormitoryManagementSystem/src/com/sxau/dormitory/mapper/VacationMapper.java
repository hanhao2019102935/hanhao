package com.sxau.dormitory.mapper;

import java.util.List;

import com.sxau.dormitory.entity.Vacation;

public interface VacationMapper {
    int deleteByPrimaryKey(Integer vacateid);

    int insert(Vacation record);

    int insertSelective(Vacation record);

    Vacation selectByPrimaryKey(Integer vacateid);

    int updateByPrimaryKeySelective(Vacation record);

    int updateByPrimaryKey(Vacation record);
    
    //插入请假
    int insertVacation(Vacation vacation);
    
    //查询自己的请假列表
    List<Vacation> selectByWorkerid(Integer workerid);
}