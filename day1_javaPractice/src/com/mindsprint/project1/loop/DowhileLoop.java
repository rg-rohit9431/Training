package com.mindsprint.project1.loop;

public class DowhileLoop {
    public static void main(String[] args) {
        int i = 1;
         do{
            System.out.print(i);
            if(i != 10)  System.out.print(", ");
            i++;
        }while(i <= 10);
    }
}
