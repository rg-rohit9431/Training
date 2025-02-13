package com.mindsprint.project1.oops;

public class Calculator {


    public int sum (int num1,int num2) {
        return num1+num2;
    }

    public int diff (int num1,int num2) {
        return num1-num2;
    }

    public int mul (int num1,int num2) {
        return num1*num2;
    }

    public int square (int num) {
        return num*num;
    }

    public int cube (int num) {
        return num*num*num;
    }

    public static void main(String[] args) {
        Calculator c = new Calculator();
        System.out.println("Addition: " + c.sum(10,30)); // add 10, 30
        System.out.println("Difference: " + c.diff(10,30)); // diff 10, 30
        System.out.println("multiply: " + c.mul(10,30)); // mul 10, 30
        System.out.println("square: " + c.square(20)); // square 20
        System.out.println("cube: " + c.cube(20)); // cube 20

    }
}
