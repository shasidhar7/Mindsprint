package com.mindsprint.project.oops;

public class WaterBottle {
    int capacity;
    String color;
    String brand;

    public void setData(int capacity, String color, String brand){
        this.capacity = capacity;
        this.color = color;
        this.brand = brand;

    }

    //display the output
    public void display(){
        System.out.println("Brand: "+ brand);
        System.out.println("color: "+ color);
        System.out.println("capacity: "+ capacity + " ltr");
    }

    public static void main(String[] args) {
        WaterBottle w = new WaterBottle();
        w.setData(1,"Grey","Bisleri");


        w.display();

    }
}
