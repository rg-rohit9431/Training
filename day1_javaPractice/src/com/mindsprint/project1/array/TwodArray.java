package com.mindsprint.project1.array;

public class TwodArray {
    public static void main(String[] args) {
//        int[][] arr = new int[2][];
        int[][] arr = {
                {1,2,3},
                {2,4,5}
        };


        for(int[] i : arr) {
            for (int j : i) {
                System.out.print(j + ", ");
            }
            System.out.println("");
        }

    }
}
