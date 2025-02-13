package com.mindsprint.project1.activityques;

import java.util.Arrays;
import java.util.Collections;

public class ReverseArrayLib {
    public static void main(String[] args) {
        Integer[] arr= {4,5,3,1,6};

        Collections.reverse(Arrays.asList(arr));

        System.out.println(Arrays.toString(arr));
    }
}
