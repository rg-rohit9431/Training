package com.mindsprint.project1.loop;

import java.util.Scanner;

public class BasicCalculatorWhileLoop {
    public static void main(String[] args) {
        double num1, num2;
        boolean status = true;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.println("Enter the numbers:");
            num1 = sc.nextDouble();
            num2 = sc.nextDouble();

            System.out.println("Enter the operator (+,-,*,/):");
            char op = sc.next().charAt(0);

            double result = 0;

            switch (op) {
                case '+':
                    result = num1 + num2;
                    break;
                case '-':
                    result = num1 - num2;
                    break;
                case '*':
                    result = num1 * num2;
                    break;
                case '/':
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        System.out.println("Error! Division by zero.");
                        continue;
                    }
                    break;
                default:
                    System.out.println("Invalid operator!");
                    continue;
            }

            System.out.println("The final result:");
            System.out.println(num1 + " " + op + " " + num2 + " = " + result);

            System.out.println("Do you want to perform another calculation? (y/n):");
            String option = sc.next();
            status = option.equalsIgnoreCase("y");

        } while (status);

        sc.close();
    }
}
