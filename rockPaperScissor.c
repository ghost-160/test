#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int getuserChoice();
int getcomputerChoice();
int checkWinner(int userChoice,int computerChoice);

int getuserChoice(){
    int choice=0;
    do{
        printf("Enter your choice \n");
        printf("1.Rock \n");
        printf("1.Paper \n");
        printf("1.Scissor \n");
        printf("Enter your choice : ");
        scanf("%d",&choice);


    }while(choice<1 || choice>3);
    return choice;

}
int getcomputerChoice(){
    return (rand() % 3) + 1;
}
int checkWinner(int userChoice,int computerChoice){
    if(userChoice==computerChoice){
        printf("ITS A TIE\n");
    }
    else if ((userChoice==1 && computerChoice == 3) ||
             (userChoice==2 && computerChoice ==1) ||
             (userChoice==3 && computerChoice==2)){
                printf("YOU WIN\n");
             }
    else{
        printf("YOU LOSE\n");
    }
}
int main(){

    srand(time(NULL));
    printf("ROCK PAPER SCISSOR \n");

    int userChoice=getuserChoice();
    int computerChoice=getcomputerChoice();

    switch(userChoice){
        case 1:
        printf("YOU CHOOSE ROCK\n");
        break;
        case 2:
        printf("YOU CHOOSE PAPER\n");
        break;
        case 3:
        printf("YOU CHOOSE SCISSOR\n");
        break;
    }
    switch(computerChoice){
        case 1:
        printf("COMPUTER CHOOSE ROCK\n");
        break;
        case 2:
        printf("COMPUTER CHOOSE PAPER\n");
        break;
        case 3:
        printf("COMPUTER CHOOSE SCISSOR\n");
        break;
    }
  checkWinner(userChoice,computerChoice);
    return 0;
}