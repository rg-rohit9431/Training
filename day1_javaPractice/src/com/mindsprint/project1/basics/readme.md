datatype
    -   primitive datatype 
            - boolean
            - char
            - integer
            - floating point
    -   non primitive datatype
            - String
            - array


type casting
  - def: Typecasting in Java is the process of converting one data type to another data type using the casting operator.

Types of Type Casting
-   There are two types of Type Casting in java:

        Widening Type Casting
        Narrow Type Casting


Widening Type Casting

    // Java program to demonstrate Widening TypeCasting
    import java.io.*;
    
    class GFG {
    public static void main(String[] args)
    {
    int i = 10;
    
            // Wideing TypeCasting (Automatic Casting) 
            // from int to long 
            long l = i; 
    
            // Wideing TypeCasting (Automatic Casting) 
            // from int to double 
            double d = i; 
    
            System.out.println("Integer: " + i); 
            System.out.println("Long: " + l); 
            System.out.println("Double: " + d); 
        } 
    }

Narrow Type Casting

// Java Program to demonstrate Narrow type casting
import java.io.*;

class GFG {
public static void main(String[] args)
{
double i = 100.245;

		// Narrowing Type Casting 
		short j = (short)i; 
		int k = (int)i; 

		System.out.println("Original Value before Casting"
						+ i); 
		System.out.println("After Type Casting to short "
						+ j); 
		System.out.println("After Type Casting to int "
						+ k); 
	} 
}
