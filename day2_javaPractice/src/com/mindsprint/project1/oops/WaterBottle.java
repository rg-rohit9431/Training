package com.mindsprint.project1.oops;

public class WaterBottle {

    int capacity;
    String color,brand;

    public void setData(int capacity,String color,String brand) {
        this.capacity = capacity;
        this.color = color;
        this.brand = brand;
    }
    public void display () {
        System.out.println(capacity);
        System.out.println(color);
        System.out.println(brand);
    }


    public static void main(String[] args) {
        WaterBottle w1 = new WaterBottle();
        w1.setData(29,"red","milton");

        w1.display();
    }
}
