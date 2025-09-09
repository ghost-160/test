#include<stdio.h>

int main(){
int n,mid,low,high,key,flag=0;
printf("Enter the size of the array : \n");
scanf("%d",&n);

int a[n];

printf("Enter the sorted elements in order \n");
for(int i=0;i<n;i++){
scanf("%d",&a[i]);
}
printf("Enter the key you wanna search : \n");
scanf("%d",&key);

low=0;
high=n-1;
while(low<=high)
{
mid=(low+high)/2;
if(a[mid]==key){
printf("The element found \n");
flag=1;
break;
}
else if(key<a[mid])
{
high=mid-1;
}
else{
low=mid+1;
}
}
if(flag==0)
{
printf("The element is not present in the array \n");
}


return 0;
}
