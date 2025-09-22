#include<stdio.h>
int main(){
    int m,n,i,j;
    printf("Enter the row and column of the matrix\n ");
    scanf("%d %d",&m,&n);
    int a[m][n],b[m][n],mul[m][n];

    printf("Enter %d elements of the matrix A\n ",m*n);
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            scanf("%d",&a[i][j]);
        }
    }

    printf("Enter %d elements of the matrix B\n ",m*n);
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            scanf("%d",&b[i][j]);
        }
    }
//displaying the matrices A and B
    printf("The elements of the matrix A are\n ");
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            printf("%d ",a[i][j]);
        }
        printf("\n");
    }

    printf("The elements of the matrix B are\n ");
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            printf("%d ",b[i][j]);
        }
        printf("\n");
    }

    //matrix subtraction
    int sub[m][n];
    for(i=0;i<m;i++)
    {
     for(j=0;j<n;j++){
         sub[i][j]=a[i][j]-b[i][j];
     }
    }

    //matrix addition
    int add[m][n];
    for(i=0;i<m;i++)
    {
     for(j=0;j<n;j++){
         add[i][j]=a[i][j]+b[i][j];
     }
    }

    //matirx multiplication 
    if(m==n){
        int k;
        for(i=0;i<m;i++){
            for(j=0;j<n;j++){
                mul[i][j]=0;
                for(k=0;k<n;k++){
                    mul[i][j]+=a[i][k]*b[k][j];
                }
            }
        }
    }

    //displaying matrix operations

    printf("Matrix Addition \n ");
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            printf("%d ",add[i][j]);
        }
        printf("\n");
    }

    printf("Matrix Subtraction \n ");
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            printf("%d ",sub[i][j]);
        }
        printf("\n");
    }

    printf("Matrix Multiplication \n ");
    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            printf("%d ",mul[i][j]);
        }
        printf("\n");
    }
    return 0;
}
