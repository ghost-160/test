import java.util.Scanner;

class Student{
    int rollno;
    String name;
    double a_score;

void getstudentdetails(){
    Scanner sc=new Scanner(System.in);
    System.out.println("Enter roll number : ");
    rollno=sc.nextInt();
    sc.nextLine();

    System.out.println("Enter name : ");
    name=sc.nextLine();

    System.out.println("Enter academic score : ");
    a_score=sc.nextDouble();
    }
}

class Sports{
    double s_score;
    
    void getsportsscore(){
        Scanner sc =new Scanner(System.in);

        System.out.println("Enter Sports score : ");
        s_score=sc.nextDouble();
    }
}

class Result extends Student{
    Sports s=new Sports();

    void display(){
        System.out.println("\n Student Result : ");
        System.out.println("Roll number : "+rollno);
        System.out.println("Name : "+name);
        System.out.println("Academic score : "+a_score);
        System.out.println("Sports score : "+s.s_score);
    }
}
public class Studentresult {
    public static void main(String[] args) {
        Result r=new Result();
        r.getstudentdetails();
        r.s.getsportsscore();
        r.display();
    }
}
