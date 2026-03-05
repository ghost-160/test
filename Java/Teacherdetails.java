import java.util.Scanner;
class Employee{
    int empid;
    String name;
    double salary;
    String address;
    
    public Employee(int empid,String name,double salary,String addres) {
        this.empid=empid;
        this.name=name;
        this.salary=salary;
        this.address=address;
    }
}
class Teacher extends Employee{
    String department;
    String subject;

    public Teacher(int empid,String name,double salary,String addres,String department,String subject) {
        super(empid,name,salary,addres);

        this.department=department;
        this.subject=subject;
    }
    void display(){
        System.out.println("Employee id : "+ empid);
        System.out.println("Name : "+ name);                System.out.println("Employee id : "+ empid);
        System.out.println("Salary : "+ salary);
        System.out.println("Address : "+ address);
        System.out.println("Department : "+ department);
        System.out.println("Subject : "+ subject);
    }
}
public class Teacherdetails {
        public static void main(String[] args) {
            Scanner sc=new Scanner(System.in);
            System.out.println("Enter number of teachers : ");
            int n=sc.nextInt();
            sc.nextLine();

            Teacher[]t=new Teacher[n];

            for(int i=0;i<n;i++)
            {
                System.out.println("\n Enter details of teacher : "+(i+1));
                System.out.println("Employee id : ");
                int id=sc.nextInt();
                sc.nextLine();

                System.out.println("Name : ");
                String name=sc.nextLine();

                System.out.println("Salary : ");
                double salary=sc.nextDouble();
                sc.nextLine();

                System.out.println("Address : ");
                String address= sc.nextLine();

                System.out.println("Department : ");
                String dept=sc.nextLine();

                System.out.println("Subject : ");
                String subject=sc.nextLine();

                t[i]=new Teacher(id, name, salary, address, dept, subject);
            }
            System.out.println("\n Teacher details \n ");
            for(int i=0;i<n;i++){
                t[i].display();
            }
            sc.close();
    }
}
