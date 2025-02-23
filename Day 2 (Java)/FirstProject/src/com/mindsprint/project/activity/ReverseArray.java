package com.mindsprint.project.activity;

public class ReverseArray {
    public static void main(String[] args) {
        int [] arr = {5,3,2,1,6};

        //original array
        System.out.println("Original array is: ");
        for(int i=0; i<arr.length;i++){
            System.out.print(arr[i] + " ");
        }

        System.out.println();
        //reversed array
        System.out.println("Reversed  array is: ");
        for(int i=arr.length-1; i>=0; i--){
            System.out.print(arr[i] + " ");
        }
    }
}
