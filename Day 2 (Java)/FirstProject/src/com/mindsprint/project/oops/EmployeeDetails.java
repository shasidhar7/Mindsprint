package com.mindsprint.project.oops;

public class EmployeeDetails {
    public static void main(String[] args) {
        Employee e1 = new Employee(1, "Sachin", 12345);
        System.out.println(e1);

        Employee e2 = new Employee();
        e2.setId(2);
        e2.setName("Kohli");
        e2.setSalary(9876);

        System.out.println("id: "+ e2.getId()+ " Name: "+ e2.getName()+ " Salary: " + e2.getSalary());
    }
}
