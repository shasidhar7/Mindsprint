package com.mindsprint.project.activity;

import java.util.Scanner;

public class Largest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter the num1: ");
        int num1 = sc.nextInt();

        System.out.println("Enter the num2: ");
        int num2 = sc.nextInt();

        if(num1 > num2){
            System.out.println("largest number is: " +num1);
        } else {
            System.out.println("largest number is: " +num2);
        }

    }
}
