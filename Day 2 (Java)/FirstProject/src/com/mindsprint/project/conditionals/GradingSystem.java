package com.mindsprint.project.conditionals;

import java.util.Scanner;

public class GradingSystem {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the percentage: ");
        int percentage = sc.nextInt();

        if(percentage >= 70 && percentage<=100){
            System.out.println("Congratulations..! you got Distinction");
        }
        else if(percentage >= 60 && percentage<70){
            System.out.println("Congratulations..! you got First Class");
        }
        else if(percentage >= 50 && percentage<60){
            System.out.println("Congratulations..! you got Second Class");
        }
        else if(percentage >= 35 && percentage<50){
            System.out.println("Congratulations..! you got Pass class");
        }
        else if(percentage >= 0 && percentage<35){
            System.out.println("Sorry you are fail");
        }
        else {
            System.out.println("Kindly enter the correct percentage");
        }
    }
}
