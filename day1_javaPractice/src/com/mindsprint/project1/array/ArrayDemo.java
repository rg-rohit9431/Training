package com.mindsprint.project1.array;

import java.util.Scanner;

public class ArrayDemo {
    public static void main(String[] args) {
        int[]  array =  new int[5];
        String[] names = {"test1","test2","test3"};

        Scanner  scanner =  new Scanner(System.in);

        // accessing direct
        System.out.println("first name: " + names[0]);


        // accessing with loop
        for(int i =0;i<names.length;i++) {
            System.out.println(names[i]);
        }
        System.out.println("using the for each loop");
        for(String name :names) {
            System.out.println(name);
        }

        //taking input in array
        for (int i=0;i<array.length;i++) {
            array[i] = scanner.nextInt();
        }

        for( int arr: array) {
            System.out.print(arr+ " ");
        }
    }
}
