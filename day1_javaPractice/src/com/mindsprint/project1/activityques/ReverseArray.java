package com.mindsprint.project1.activityques;


public class ReverseArray {
    public static void main(String[] args) {
        int[] arr = {1,4,3,5,6};

        for(int i = arr.length-1;i>=0;i--) {
            System.out.print(arr[i] + ", ");
        }
    }
}
