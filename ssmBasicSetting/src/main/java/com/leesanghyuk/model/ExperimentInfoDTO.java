package com.leesanghyuk.model;

public class ExperimentInfoDTO {
    private int id;
    private String coursename;
    private String experimentname;
    private String facility;
    private String quantityoffacility;
    private String duration;
    private String classroom;
    private int bookings;
    private int numberofbooking;
    private int totalbooking;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public String getFacility() {
        return facility;
    }

    public void setFacility(String facility) {
        this.facility = facility;
    }

    public String getQuantityoffacility() {
        return quantityoffacility;
    }

    public void setQuantityoffacility(String quantityoffacility) {
        this.quantityoffacility = quantityoffacility;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

    public int getBookings() {
        return bookings;
    }

    public void setBookings(int bookings) {
        this.bookings = bookings;
    }

    public int getNumberofbooking() {
        return numberofbooking;
    }

    public void setNumberofbooking(int numberofbooking) {
        this.numberofbooking = numberofbooking;
    }

    public int getTotalbooking() {
        return totalbooking;
    }

    public void setTotalbooking(int totalbooking) {
        this.totalbooking = totalbooking;
    }
}
