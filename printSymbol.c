#include<stdio.h>

int main(){

    int row=0;
    int col=0;
    char symbol='\0';

    printf("Enter the number of rows \n");
    scanf("%d",&row);
    printf("Enter the number of columns \n");
    scanf("%d",&col);
    printf("Enter the symbol you wanna use \n");
    scanf(" %c",&symbol);

    for(int i=0;i<col;i++){
        for(int j=0;j<row;j++){
            printf("%c",symbol);
        }
        printf("\n");
    }
    return 0;
}