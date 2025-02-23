package com.mindsprint.project.oops;

class ParentPhone {
    public void call(){
        System.out.println("Parent phone is calling");
    }
}

class ChildPhone extends ParentPhone{
    public void call(){
        super.call();
        System.out.println("Child phone is calling");
    }
}
public class MethodOverriding {

    public static void main(String[] args) {
        ChildPhone alexa = new ChildPhone();
        alexa.call();
    }
}
