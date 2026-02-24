import java.util.Scanner;
 class Employee{
    int eno;
    String ename;
    double salary;

    void read(Scanner sc){
        System.out.println("Enter Employee no : ");
        eno=sc.nextInt();
        sc.nextLine();

        System.out.println("Enter Employee Name : ");
        ename=sc.nextLine();

        System.out.println("Enter Employee salary : ");
        salary=sc.nextDouble();
    }
    void display(){
        System.out.println("Employee No : "+eno);
        System.out.println("Employee Name : "+ename);
        System.out.println("Employee salary : "+salary);
    }
}
public class Employeesearch {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter numbere of employees : ");
        int n=sc.nextInt();

        Employee[]emp = new Employee[n];

        for(int i=0;i<n;i++){
            emp[i]=new Employee();
            emp[i].read(sc);
        }

        System.out.println("Enter employee number to search : ");
        int searchno=sc.nextInt();

        boolean found =false;

        for(int i=0;i<n;i++){
            if(emp[i].eno==searchno){
                emp[i].display();
                found=true;
                break;
            }
        }
        if(!found){
            System.out.println("Employee not found ");
        }
        sc.close();
    }
}
