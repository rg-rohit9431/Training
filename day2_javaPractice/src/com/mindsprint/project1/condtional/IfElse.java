package com.mindsprint.project1.condtional;

import java.util.Scanner;

public class IfElse {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number: ");
        int num = scanner.nextInt();

        if(num > 0) {
            System.out.println("Number is Positive");
        } else if (num == 0) {
            System.out.println("Number is Zero");
        } else {
            System.out.println("Number is Negative");
        }
    }
}
