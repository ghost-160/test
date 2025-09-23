#include<stdio.h>
int main(){
int r,c,i,j,k;
printf("Enter the row size and column size of the Matrices \n");
scanf("%d %d",&r,&c);
int a[r][c],b[r][c],add[r][c],mul[r][c],sub[r][c];

printf("Enter the %d elements of the First Matrix \n",r*c);
for(i=0;i<r;i++){
for(j=0;j<c;j++){
scanf("%d",&a[i][j]);
}
}

printf("Enter the %d elements of the Second Matrix \n",r*c);
for(i=0;i<r;i++){
for(j=0;j<c;j++){
scanf("%d",&b[i][j]);
}
}
printf("\n");
//displaying the first matrix 
printf("The elements in the First matrix is \n");
for(i=0;i<r;i++){
for(j=0;j<c;j++){
printf("%d ",a[i][j]);
}
printf("\n");
}
//displaying the second matrix
printf("\n");
printf("The elements in the Second matrix is \n");
for(i=0;i<r;i++){
for(j=0;j<c;j++){
printf("%d ",b[i][j]);
}
printf("\n");
}

//Matrix addition

for(i=0;i<r;i++){
for(j=0;j<c;j++){
add[i][j]=a[i][j]+b[i][j];
}
}

//Matrix subtraction

for(i=0;i<r;i++){
for(j=0;j<c;j++){
sub[i][j]=a[i][j]-b[i][j];
}
}
//Matrix multiplication

if(r==c){
for(i=0;i<r;i++){
for(j=0;j<c;j++){
mul[i][j]=0;
for(k=0;k<r;k++){
mul[i][j]+=a[i][k]*b[k][j];
}
}
}
printf("\n");
//printing the matrix operations
printf("Matrix Addition\n");
for(i=0;i<r;i++){
for(j=0;j<c;j++){
printf("%d ",add[i][j]);
}
printf("\n");
}
//
printf("\n");
printf("Matrix Subtraction \n");
for(i=0;i<r;i++){
for(j=0;j<c;j++){
printf("%d ",sub[i][j]);
}
printf("\n");
}
//
printf("\n");
printf("Matrix Multiplication \n");
for(i=0;i<r;i++){
for(j=0;j<c;j++){
printf("%d ",mul[i][j]);
}
printf("\n");
}
return 0;
}
}
