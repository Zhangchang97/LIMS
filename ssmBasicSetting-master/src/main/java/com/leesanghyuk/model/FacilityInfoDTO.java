package com.leesanghyuk.model;

public class FacilityInfoDTO {
    private int id;
    private String name;
    private String level;
    private int booking;
    private int booked;
    private int totalbooking;

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

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public int getBooking() {
        return booking;
    }

    public void setBooking(int booking) {
        this.booking = booking;
    }

    public int getBooked() {
        return booked;
    }

    public void setBooked(int booked) {
        this.booked = booked;
    }

    public int getTotalbooking() {
        return totalbooking;
    }

    public void setTotalbooking(int totalbooking) {
        this.totalbooking = totalbooking;
    }
}