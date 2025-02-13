package com.mindsprint.project1.loop;

import java.util.Scanner;

public class ForLoop {
    public static void main(String[] args) {
        int num;
        Scanner sc = new Scanner(System.in);
        System.out.print("enter the number: ");
        num = sc.nextInt();

        for(int i = 1 ; i<=num;i++) {
            System.out.print(i);
            if(i != num) { System.out.print(", ");}
        }
    }
}
