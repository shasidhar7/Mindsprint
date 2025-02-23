package com.mindsprint.project.basics;

import java.util.Scanner;

public class ArithmeticDemo {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("First number: ");
        int num1 = sc.nextInt();
        System.out.println("Second number: ");
        int num2 = sc.nextInt();

        System.out.println("Addition: " + (num1+num2));
        System.out.println("multiplication: " + (num1*num2));
        System.out.println("Substraction: " + (num1-num2));
        System.out.println("Division: " + (num1/num2));

    }

}
