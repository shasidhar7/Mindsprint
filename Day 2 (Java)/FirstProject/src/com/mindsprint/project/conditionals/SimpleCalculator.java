package com.mindsprint.project.conditionals;

import java.util.Scanner;

public class SimpleCalculator {
    public static void main(String[] args) {

        while(true){
            Scanner sc = new Scanner(System.in);
            System.out.println("Enter any number: ");
            double num1 = sc.nextDouble();
            System.out.println("Enter any number: ");
            double num2 = sc.nextDouble();

            System.out.println("Enter\n + for addition\n - for substraction\n * for multiplication \n " +
                    "/ for division");


            String input = sc.next();

            switch (input){
                case "+":
                    System.out.println("Addition: " + (num1+num2));
                    break;
                case "-":
                    System.out.println("Substraction: " + (num1-num2));
                    break;
                case "*":
                    System.out.println("Multiplication: " + (num1*num2));
                    break;
                case "/":
                    System.out.println("Division: " + (num1/num2));
                    break;
            }
            System.out.println("Enter y to continue or press any key to exit");
            String opt = sc.next();
            if(opt.equals("y") || opt.equals("Y")){
                continue;
            }
            else {
                break;
            }
        }

    }
}
