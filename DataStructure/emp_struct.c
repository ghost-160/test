//program using structure
#include<stdio.h>

struct Employee{
int emp_id;
char name[50];
float salary;
};

int main(){
 struct Employee e[3];
 int i;
 printf("Enter details of 3 employees \n");
 for(i=0;i<3;i++){
 printf("\n Employee %d :\n",i+1);
 printf("Enter employee ID : ");
 scanf("%d",&e[i].emp_id);
 printf("Enter Name: ");
scanf(" %[^\n]", e[i].name);
 printf("Enter Salary : ");
 scanf("%f",&e[i].salary);
 }
 
 printf("\n --Employee Details-- \n");
 for(i=0;i<3;i++){
 printf("\n Employee %d\n",i+1);
 printf("\n Employee ID: %d\n",e[i].emp_id);
 printf("\n Employee Name: %s\n",e[i].name);
 printf("\n Employee Salary: %.2f\n",e[i].salary);
 }
 return 0;
 }
 
