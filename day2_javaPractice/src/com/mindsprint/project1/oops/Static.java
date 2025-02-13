package com.mindsprint.project1.oops;

public class Static {
    static int num =10;
    public static void print() {
        System.out.println("number :" + num);
    }

    public static void main(String[] args) {
        //without creating object we use it and access it
        print();
        System.out.println(num);

    }
}
