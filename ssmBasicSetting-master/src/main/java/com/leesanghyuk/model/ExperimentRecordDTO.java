package com.leesanghyuk.model;

public class ExperimentRecordDTO {
    private String coursename;
    private String experimentname;
    private String classroom;
    private String bookingman;
    private int bookingnumber;
    private String time;

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getExperimentname() {
        return experimentname;
    }

    public void setExperimentname(String experimentname) {
        this.experimentname = experimentname;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

    public String getBookingman() {
        return bookingman;
    }

    public void setBookingman(String bookingman) {
        this.bookingman = bookingman;
    }

    public int getBookingnumber() {
        return bookingnumber;
    }

    public void setBookingnumber(int bookingnumber) {
        this.bookingnumber = bookingnumber;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
