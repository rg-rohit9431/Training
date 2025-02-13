package com.mindsprint.project1.basics;

public class Typecasting {
    public static void main(String[] args) {
        short data = 10;
        float data1 = data;
        System.out.println("Data 1 :" + data1); // imnplict


        double info = 74.78;
        int info1 = (int) info;
        System.out.println("info1: " +info1); // explict

        char a = 'A';
        System.out.println("Ascii No: " + (int)a);
        System.out.println("Ascii No: " + (char)((int)a+32));
    }
}
