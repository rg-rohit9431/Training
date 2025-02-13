package com.mindsprint.project1.oops;

public class Student {
    int id;
    String name,email,address;

    public Student(){}
    public Student (String name,String email,String address) {
//        int id = (int) Math.round(Math.random()*10000);
//        this((int) Math.round(Math.random()*10000),name,email,address);
        this.id = (int) Math.round(Math.random()*10000);
        this.name = name;
        this.email = email;
        this.address =  address;
    }

    public Student(int id,String name,String email,String address) {
        this.address = address;
        this.email =  email;
        this.name = name;
        this.id = id;
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
        Student s2 = new Student("alex","a@djhsa.jsad","jdjah dhjasgdjha djhasgdja");
        Student s3 = new Student(6712576,"alex2","a@djhsa2.jsad","jdjah dhj2222asgdjha djhasgdja");


        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s3);
    }

}
