package org.example;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.sql.SQLOutput;

public class SampleTest {


    public int add(int num1,int num2) {
        return num1 + num2;
    }
    @Test
    public void demoTest() {
        System.out.println("Test Executed");
        Assertions.assertEquals(70,add(30,40));
    }
}
