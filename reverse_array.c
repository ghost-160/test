#include<stdio.h>
void main(){
    int a[10];
    int n,i;
    printf("\n enter the number of elements ");
    scanf("%d",&n);
    printf("\n enter %d elements ",n);
    for(i=0;i<n;i++)
    scanf("%d",&a[i]);
printf("\n the array elements are");
for(i=0;i<n;i++)
printf("\t %d",a[i]);
printf("\n the array in reverse format is ");
for(i=n-1;i>=0;i--)
printf("\t %d",a[i]);
}