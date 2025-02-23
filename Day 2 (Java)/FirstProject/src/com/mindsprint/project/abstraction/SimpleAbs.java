package com.mindsprint.project.abstraction;

abstract class Test{
    public abstract void display();
}

public class SimpleAbs extends Test{

    public void display(){
        System.out.println("Implemented parent Method");
    }

    public static void main(String[] args) {
        Test test = new SimpleAbs();
        test.display();
    }
}
