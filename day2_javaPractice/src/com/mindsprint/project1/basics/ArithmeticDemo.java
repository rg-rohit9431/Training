package com.mindsprint.project1.basics;

import java.util.Locale;
import java.util.Scanner;

public class ArithmeticDemo {
    public static void main(String[] args) {
        Scanner scanner =  new Scanner(System.in);
        System.out.print("enter the first number: ");

        int num1 = scanner.nextInt();
        System.out.println("enter the second number: ");
        int num2 =  scanner.nextInt();

        System.out.println("Addition: "+ (num1+num2));
        System.out.println("Sub: "+ (num1-num2));
        System.out.println("mul: "+ (num1*num2));
        System.out.println("div: "+ (num1/num2));

    }
}
