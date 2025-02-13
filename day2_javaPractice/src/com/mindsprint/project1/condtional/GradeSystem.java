package com.mindsprint.project1.condtional;

import java.util.Scanner;

public class GradeSystem {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("enter your marks: ");
        int percent = sc.nextInt();

        if(percent >= 35 && percent <=100) System.out.println("you are pass!!");
        else System.out.println("kindly enter the correct marks and run again the code.");
    }
}
