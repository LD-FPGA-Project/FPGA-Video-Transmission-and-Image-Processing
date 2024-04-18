#include <stdio.h>
#include <string.h>
int main()
{
    //lasa doar de la 0 la F litere + cifre
    FILE *fin = NULL;
    FILE *fout = NULL;
    char *filename1 = "image_data.coe";
    char *filename2 = "output.coe";

   if((fin = fopen(filename1, "r")) == NULL)
    {
           perror(filename1);
           return -1;
    }

    if((fout = fopen(filename2, "w")) == NULL)
    {
           perror(filename2);
           return -1;
    }

    char header_string[100];

    fgets(header_string, 100, fin);
    fgets(header_string, 100, fin);

    char c;
    int i = 0;
    while((c = fgetc(fin)) != EOF)
    {
        if(strchr("0123456789ABCDEF ", c) != NULL)
        {
            if(i % 3 == 0)
                fprintf(fout, " ");
            i++;
            fprintf(fout, "%c", c);
        }
    }
    return 0;
}
