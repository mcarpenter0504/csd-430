/*
Madilyn Carpenter
4/12/2026
Assignment: Gathering user data
Purpose: Create a JavaBean to store and manage movie data,
to later be displayed in a JSP page.
 */
package myapp;

import java.io.Serializable;

public class MovieBean implements Serializable {

    private String title;
    private String genre;
    private int year;
    private String director;
    private double rating;

    public MovieBean() {}

    // Getter and Setter for Title
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    // Getter and Setter for Genre
    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    // Getter and Setter for Year
    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    // Getter and Setter for Director
    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    // Getter and Setter for Rating
    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }
}