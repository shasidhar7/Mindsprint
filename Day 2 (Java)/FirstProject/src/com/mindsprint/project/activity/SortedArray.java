package com.mindsprint.project.activity;

public class SortedArray {
    public static void main(String[] args) {
        int[] arr = {3,5,1,9,4,7};
        int n = arr.length;

        for(int i=0; i<n-1; i++){
           for(int j=0; j<n-i-1; j++){

               if(arr[j] > arr[j+1]){
                   int temp = arr[j];
                   arr[j] = arr[j+1];
                   arr[j+1] = temp;
               }
           }
        }

        //return the sorted array
        for(int num : arr){
            System.out.println(num);
        }


    }
}
