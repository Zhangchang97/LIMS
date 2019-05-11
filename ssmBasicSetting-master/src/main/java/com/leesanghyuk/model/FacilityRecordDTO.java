package com.leesanghyuk.model;

public class FacilityRecordDTO {
    private String name;
    private String bookingman;
    private int bookingnumber;
    private String time;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
