package com.马祖宇323.pojo;
import java.util.Arrays;


/**
 * @Author 皮皮马
 * @create 2020-5-27 17:52
 */
public class score {
    private int id;
    private String name;
    private  String sno;
    private String school;
    private String department;
    private String major;
    private String class1;
    private int score;
    private String commit_time;
//    private String time= Datautils.Test2(commit_time);
    private int[] ids;

    public String getCommit_time() {
        return commit_time;
    }

    public void setCommit_time(String commit_time) {
        this.commit_time = commit_time;
    }

//    public String getTime() {
//        return time;
//    }
//
//    public void setTime(String time) {
//        this.time = time;
//    }




    @Override
    public String toString() {
        return "score{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sno='" + sno + '\'' +
                ", school='" + school + '\'' +
                ", department='" + department + '\'' +
                ", major='" + major + '\'' +
                ", class1='" + class1 + '\'' +
                ", score=" + score +
                ", commit_time=" + commit_time +
                ", ids=" + Arrays.toString(ids) +
                '}';
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getClass1() {
        return class1;
    }

    public void setClass1(String class1) {
        this.class1 = class1;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }


    public int[] getIds() {
        return ids;
    }

    public void setIds(int[] ids) {
        this.ids = ids;
    }


}
