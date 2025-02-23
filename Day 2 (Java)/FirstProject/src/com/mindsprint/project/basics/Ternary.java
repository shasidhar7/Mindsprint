package com.mindsprint.project.basics;

import java.util.Scanner;

public class Ternary {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the selling price: ");
        int sell = sc.nextInt();
        System.out.println("Enter the purchase price: ");
        int purchase = sc.nextInt();

        System.out.println((sell < purchase)? "loss is: " + (purchase -sell): "profit is: " +(sell-purchase));
    }

}
