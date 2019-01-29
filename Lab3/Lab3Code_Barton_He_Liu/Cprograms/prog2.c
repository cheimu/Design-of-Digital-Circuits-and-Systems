#include <stdio.h>
#include <stdlib.h>

int main() {
    char choice;
    do {
        int device;
        int delay;
        do {
            printf("Please enter the number of logic devices:\n");
            scanf("%d", &device);
            fflush(stdin);
        } while (device < 0);
        delay = 18 * (device + 1) + 5000 * device;
        printf("The total delay is %d picoseconds.\nf", delay);
        do {
            printf("Do you want to calculate another delay?\nEnter y or n:");
            scanf("%c", &choice);
            fflush(stdin);
        } while (choice != 'y' && choice != 'n');
    } while (choice == 'y');
    return 0;
}
