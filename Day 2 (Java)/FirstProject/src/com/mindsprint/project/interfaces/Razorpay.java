package com.mindsprint.project.interfaces;

import java.util.Scanner;

//Interface 1
public interface Razorpay {
    public void pay();
}

//Interface 2
interface Paypal {
    public void pay();
}

class paymentMethod implements Razorpay, Paypal{
        //variable to store the user payment method
        String payMethod;
        //constructor
        public paymentMethod(String payMethod){
            this.payMethod = payMethod;
        }


        //defining(giving body) the abstract method
        public void pay(){
            if(payMethod.equalsIgnoreCase("Razorpay")){
                //payWithRazorpay();
                System.out.println("Paying with Razorpay");
            } else if (payMethod.equalsIgnoreCase("Paypal")) {
                //payWithPaypal()
                System.out.println("paying with Paypal");
            }
            else {
                System.out.println("Unknown payment method");
            }
        }

//        public void payWithRazorpay(){
//            System.out.println("Paying with Razorpay");
//        }
//        public void payWithPaypal(){
//            System.out.println("paying with Paypal");
//        }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the payment method: ");
        String pm = sc.next();

        paymentMethod p = new paymentMethod(pm);
        p.pay();
    }
}

