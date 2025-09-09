//linear search in a sorted array
#include <stdlib.h>
#include <stdio.h>

int main(){
int n,key,flag=0;

printf("Enter the size of the array :\n");
scanf("%d",&n);

int a[n];
printf("Enter %d elements in sorted order:",n);
for(int i=0;i<n;i++){
scanf("%d",&a[i]);
}
printf("Enter the key you wanna search \n");
scanf("%d",&key);

for(int i=0;i<n;i++){
if(a[i]==key){
flag=1;
printf("The %d element is found in the array \n",key);
}
}
if(flag==0){
printf("The element is not present in the array \n");
}
return 0;
}
