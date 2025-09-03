#include <stdio.h>
#include <string.h>
//simple story that i made to learn more about strings :)
int main(){
    char name[50]= "";
    char gun[10]="";
    char enemy_team[10]="";
    char enemy_name[10]="";



    printf("Today i was playing (game) : ");
    fgets(name,sizeof(name),stdin);
    name[strlen(name)-1]='\0';
    
    printf(" with my friends and i got a (gun) :");
    fgets(gun,sizeof(gun),stdin);
    gun[strlen(gun)-1]='\0';

    printf("and i wiped (enemy team name) :");
    fgets(enemy_team,sizeof(enemy_team),stdin);
    enemy_team[strlen(enemy_team)-1]='\0';

    printf("and i wiped (enemy_name) :");
    fgets(enemy_name,sizeof(enemy_name),stdin);
    enemy_name[strlen(enemy_name)-1]='\0';


    printf("\n Today i was playing %s " ,name);
    printf("\n with my friends and i got a %s ",gun);
    printf("\n and i killed %s's %s !!!!  ",enemy_team,enemy_name);
    return 0;
}