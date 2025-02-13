package com.mindsprint.project1.activityques;

import java.util.Scanner;

public class OddEven {
    public static void main(String[] args) {
        int num;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number: ");
        num = scanner.nextInt();

        if(num %2 == 0) System.out.println("even");
        else System.out.println("odd");
    }
}
