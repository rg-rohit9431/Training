package com.mindsprint.project1.activityques;

import java.util.Arrays;

public class SortArray {
    public static void main(String[] args) {
        // Create an array
        int[] arr = {5, 2, 8, 1, 3};

        // Print the original array
        System.out.println("Original array: " + Arrays.toString(arr));

        // Sort the array
        Arrays.sort(arr);

        // Print the sorted array
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }
}
