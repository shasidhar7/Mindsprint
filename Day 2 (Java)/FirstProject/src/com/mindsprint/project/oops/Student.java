package com.mindsprint.project.oops;

public class Student {
    int id;
    String name;
    String email;
    String address;


    public Student(){};

    public Student(String name, String email, String address) {
        this((int) Math.round(Math.random()*10000), name, email, address);
    }

    public Student(int id, String name, String email, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public static void main(String[] args) {
        Student s1 = new Student();
        Student s2 = new Student("Shasi","shasi@gmail.com","Andhra");
        Student s3 = new Student(1, "Dhoni", "dhoni@gmail.com","Jharkand");
        System.out.println(s1.toString());
        System.out.println(s2);
        System.out.println(s3);

    }

}
