#include<stdio.h>

int main(){
int n1,n2;
printf("Enter the size of the first array : \n");
scanf("%d",&n1);
int a[n1];
printf("Enter the %d elements : \n",n1);
for(int i=0;i<n1;i++){
scanf("%d",&a[i]);
}

printf("Enter the size of the second array : \n");
scanf("%d",&n2);
int b[n2];
printf("Enter the %d elements : \n",n2);
for(int i=0;i<n2;i++){
scanf("%d",&b[i]);
}

int n3=n1+n2;
int c[n3];

for(int i=0;i<n1;i++)
{
c[i]=a[i];
}
for(int i=0;i<n2;i++){
c[n1+i]=b[i];
}

printf("The merged array is :\n ");
for(int i=0;i<n3;i++)
{
printf("%d ",c[i]);
}
return 0;
}
