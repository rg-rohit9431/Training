package org.example;

import org.junit.jupiter.api.*;

public class CalcTest {
    private Calculator calculator;
    @BeforeEach
    public void setup() {
        calculator = new Calculator();
    }
    @AfterEach
    public void tearDown() {
        calculator = null;
    }
    @Test
    public void addTest() {
        Assertions.assertEquals(10,calculator.add(4,6));
        Assertions.assertEquals(20,calculator.add(26,-6));
        Assertions.assertNotEquals(30,calculator.add(34,-6));
    }
    @Test
    public void subTest() {
        Assertions.assertEquals(30,calculator.sub(34,4));
        Assertions.assertNotEquals(30,calculator.sub(34,6));
    }
    @Test
    public void mulTest() {
        Assertions.assertEquals(30,calculator.mul(5,6));
        Assertions.assertNotEquals(30,calculator.mul(34,6));
    }
    @Disabled
    @Test
    public void divTest() {
        Assertions.assertEquals(2,calculator.div(12,6));
        Assertions.assertNotEquals(5,calculator.div(30,6));
    }
}
