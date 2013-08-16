/* fscanf example */
// KF 08/15/2013
#include <stdio.h>

int main ()
{
  char str [80];
  float f;
  FILE * pFile;
  pFile = fopen ("myfile.txt","rb");
//
//  fprintf (pFile, "%f %s", 3.1416, "PI");
//  rewind (pFile);
  fscanf (pFile, "%f", &f);
  fscanf (pFile, "%s", str);
//
  fclose (pFile);
  printf ("I've read: %f\n",f);
  printf ("I have read: %f and %s \n",f,str);
  return 0;
}
