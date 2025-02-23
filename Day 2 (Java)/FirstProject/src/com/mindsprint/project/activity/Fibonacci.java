package com.mindsprint.project.activity;

public class Fibonacci {
    public static void main(String[] args) {
        int a = 0;
        int b = 1;

        for(int i=0; i<=10; i++){
            System.out.println(a);
            int temp = a;
            a = b;
            b = a +temp;
        }
    }
}
