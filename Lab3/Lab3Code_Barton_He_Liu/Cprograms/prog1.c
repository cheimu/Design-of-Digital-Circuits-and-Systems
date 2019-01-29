#include <stdio.h>
#include <stdlib.h>

int main() {
    char choice = 'y';
    while (choice == 'y'){
        int in_choice = 0;
        int out_choice = 0;
        float temp = 0.0;
        do {
            printf("Please enter your temperature scale...\n");
            printf("(1) : Celcius \n");
            printf("(2) : Farenheit \n");
            printf("(3) : Kelvin \n");
            printf(">");
            scanf("%d",&in_choice);
            fflush(stdin);
        } while (in_choice != 1 && in_choice != 2 && in_choice != 3);

        do {
            printf("What do you want to convert it to?\n");
            printf("(1) : Celcius \n");
            printf("(2) : Farenheit \n");
            printf("(3) : Kelvin \n");
            printf(">");
            scanf("%d",&out_choice);
            fflush(stdin);
        } while (out_choice != 1 && out_choice != 2 && out_choice != 3);

        printf("What is the temperature you want to convert?\n");
        printf(">");
        scanf("%f",&temp);
        fflush(stdin);

        float og_temp = temp;
        char in_unit = 'K';
        char out_unit = 'K';

        if (in_choice == 1) {
            temp += 273.15;
            in_unit = 'C';
        } else if (in_choice == 2) {
            temp = (temp + 459.67) * 5.0 / 9.0;
            in_unit = 'F';
        }

        if (out_choice == 1) {
            temp -= 273.15;
            out_unit = 'C';
        } else if (out_choice == 2) {
            temp = temp * 9.0 / 5.0 - 459.67;
            out_unit = 'F';
        }

        printf("Your Temp:%.2f%c\n",og_temp,in_unit);
        printf("Converted Temp:%.2f%c\n",temp,out_unit);

        choice = 'a';
        do {
            printf("Do you want to convert another temperature?\nEnter y or n:");
            scanf("%c", &choice);
            fflush(stdin);
        } while (choice != 'y' && choice != 'n');
    }
    return 0;
}
