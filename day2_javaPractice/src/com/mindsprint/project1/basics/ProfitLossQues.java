package com.mindsprint.project1.basics;

import java.util.Scanner;

public class ProfitLossQues {
    public static void main(String[] args) {
        Scanner scanner =  new Scanner(System.in);
        System.out.print("enter the selling price: ");
        int sell = scanner.nextInt();
        System.out.print("enter the cost price: ");
        int cost = scanner.nextInt();

        int value = Math.abs(sell - cost);
        String status = (sell >= cost) ? "Profit: "  : "Loss: ";

        System.out.println(status + value);
    }
}
