package com.sxau.dormitory.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Vacation {
    private Integer vacateid;

    private Integer workerid;
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date applytime;
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date starttime;
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date endtime;

    private String aimplace;

    private Integer days;

    private Integer isvacation;

    private Integer otherone;

    private String othertwo;

    public Integer getVacateid() {
        return vacateid;
    }

    public void setVacateid(Integer vacateid) {
        this.vacateid = vacateid;
    }

    public Integer getWorkerid() {
        return workerid;
    }

    public void setWorkerid(Integer workerid) {
        this.workerid = workerid;
    }

    public Date getApplytime() {
        return applytime;
    }

    public void setApplytime(Date applytime) {
        this.applytime = applytime;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getAimplace() {
        return aimplace;
    }

    public void setAimplace(String aimplace) {
        this.aimplace = aimplace == null ? null : aimplace.trim();
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public Integer getIsvacation() {
        return isvacation;
    }

    public void setIsvacation(Integer isvacation) {
        this.isvacation = isvacation;
    }

    public Integer getOtherone() {
        return otherone;
    }

    public void setOtherone(Integer otherone) {
        this.otherone = otherone;
    }

    public String getOthertwo() {
        return othertwo;
    }

    public void setOthertwo(String othertwo) {
        this.othertwo = othertwo == null ? null : othertwo.trim();
    }
}