package com.mindsprint.project1.activityques;

public class StudentGrade {
    String name;
    int[] grades;

    public StudentGrade(String name, int[] grades) {
        this.name = name;
        this.grades =  grades;
    }

    public int calculateAvg () {
        int sum = 0;
//        for(int i = 0;i<grades.length;i++) {
//            sum += grades[i];
//        }

        for (int grade : grades) {
            sum += grade;
        }
        return sum/grades.length;
    }

    public  void displayInfo(){
        System.out.println("Hi! " + name + " You have got " + calculateAvg() + " grade out of 10");
    }
    public static void main(String[] args) {
        int[] grades = {10, 6, 7, 9, 6};
        StudentGrade s1 = new StudentGrade("Ram", grades);
        s1.displayInfo();
    }
}
