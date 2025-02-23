package com.mindsprint.project.activity;

public class Student {
    String name;
    int[] grades;

    public Student(String name, int[] grades) {
        this.name = name;
        this.grades = grades;
    }



    public void displayInfo(){
        System.out.println("name of the student: " + name);
        System.out.println("Average grade: " + calculateAvg());
    }

    public float calculateAvg(){
        int sum=0;
        for(int i =0; i<grades.length; i++){
            sum = sum + grades[i];
        }
        return (sum/(grades.length+1));
    }

    public static void main(String[] args) {
        Student s = new Student("Shasi", new int[]{60, 80, 90});
        s.displayInfo();


    }
}
