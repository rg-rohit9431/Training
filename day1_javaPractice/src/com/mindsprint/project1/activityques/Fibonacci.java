package com.mindsprint.project1.activityques;

import java.util.Scanner;

public class Fibonacci {
    public static void Fibo(int N)
    {
        int num1 = 0, num2 = 1;

        for (int i = 0; i < N; i++) {

            System.out.print(num1 + " ");


            int num3 = num2 + num1;
            num1 = num2;
            num2 = num3;
        }
    }
    public static void main(String[] args) {

        int n = 1;
        Fibo(n);
    }
}


