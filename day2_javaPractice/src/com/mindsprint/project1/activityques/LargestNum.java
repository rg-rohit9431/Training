package com.mindsprint.project1.activityques;

import java.util.Scanner;

public class LargestNum {
    public static void main(String[] args) {
        int num,num2;

        Scanner scanner = new Scanner(System.in);
        System.out.print("enter the First: ");
        num =  scanner.nextInt();
        System.out.print("enter the Second: ");
        num2 =  scanner.nextInt();

        if(num > num2) {
            System.out.println("Largest is: " + num);
        } else {
            System.out.println("Largest is: " +num2);
        }
    }
}
