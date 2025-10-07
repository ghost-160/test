#include<stdio.h>
#include<stdlib.h>
#define MAX 5

int stack[MAX];
int top=-1;

//push  function
void push(int value){
if(top==MAX-1){
printf("Stack overflow\n");
}
else{
stack[++top]=value;
printf("%d pushed to stack \n\n",value);
}
}

//pop function
void pop(){
if(top==-1){
printf("Stack underflow\n\n
");
}
else{
printf("%d popped from stack \n\n",stack[top--]);
}
}

//display
void display(){
if(top==-1){
printf("Stack underflow\n\n");
}
else{
printf("Stack elements \n\n");
for(int i=top;i>=0;i--) 
{
printf("%d ",stack[i]);
}
printf("\n");
}
}

int main(){
int c,value;
while(1){
printf("Enter your choice \n");
printf(" 1.push \n 2.pop \n 3.display \n\n");
scanf("%d",&c);

switch(c){
case 1:
printf("Enter the value to push \n");
scanf("%d ",&value);
push(value);
break;
case 2:
pop();
break;
case 3:
display();
break;
case 4:
return 0;
default:
printf("Enter a valid choice \n");
}
}
}
