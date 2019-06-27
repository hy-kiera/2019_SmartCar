#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#define THRESHOLD 8000

#define SIZE 128

typedef struct _datafile
{
	char filename[30];
}datafile;

/* stretch value */
void Stretching(int array[], int _max) {
   int i, max = array[0], min = array[0];

   for (i = 0; i < SIZE; i++) {
      max = (array[i] > max) ? array[i] : max;
      min = (array[i] < min) ? array[i] : min;
   }
   for (i = 0; i < SIZE; i++)
      array[i] = ((float)_max / (float)(max - min)) * (array[i] - min);
}



int getMax(int array[]){
	int i, max = array[0];
	for (i = 0; i < SIZE; ++i){
		max = (array[i] > max) ? array[i] : max;
	}
	return max;
}

/* x-axis inversion */
void Sharpening(int array[]) {
	int MAX = getMax(array);
   int i, j;
   int minus, add, square;
   int temp[SIZE];

   for (i = 0; i < 128; i++) {
         array[i] = MAX - array[i];
         temp[i] = array[i];
   }

   for(i=3; i<125; i++) {
      minus = 0, add = 0, square = 0;
      for(j = -3; j <= 3; j++) {
         if(j <= -2 || j >= 2) minus += (array[i+j] * (-3));
         if(j == -1 || j == 1) add += (array[i+j] * 3);
         if(j == 0) square += (array[i+j] * 6);
      }
      temp[i] = minus + add + square;
   }
}


int GetMedian(int array[5]) {
   int i, j, temp;
   for (i = 0; i < 5; i++) {
      for (j = i; j < 5; j++) {
         if (array[i] > array[j]) {
            temp = array[i];
            array[i] = array[j];
            array[j] = temp;
         }
      }
   }
   return array[2];
}

/* reduce noise */
void MedianFiltering(int array[]) {
   int i, j, t;
   int _array[5];
   for (i = 0 + 2; i < SIZE - 2; i++) {
      for (j = -2, t = 0; j <= 2; j++, t++)
         _array[t] = array[i + j];
      array[i] = GetMedian(_array);
   }
}

/* go zero except satistied value with threshold */
void zeroFiltering(int array[]){
	for (int i = 0; i < SIZE; ++i)
	{
		if(array[i] <THRESHOLD){
			array[i] = 0;
		}
	}
}


int getLineFirstIndex(int array[]){
	int idx;
	for (int i = 0; i < SIZE; ++i)
	{
		if (array[i] >= THRESHOLD)
		{
			idx = i;
			break;
		}
	}
	return idx;
}

void makeDataFile(char* filename, int array[]){
	FILE * file;
	int i;
	file = fopen(filename,"wt");
	if(file ==NULL){
		printf("fail\n");
	}
	for(i = 0; i < SIZE; ++i){
		fprintf(file, "%d %d \n", i, array[i]);
	}
	fclose(file);

}

void addGraph(char * filename, int array[], datafile dataFileList[], int * fcount){
	if (fcount == NULL){
		*fcount = 0;		
	}
	makeDataFile(filename, array);
	strcpy(dataFileList[*fcount].filename, filename);
	(*fcount)++;
}

void plot(char* title, datafile dataFileList[], int fcount, int xrangeMin ,int xrangeMax, int yrangeMin, int yrangeMax){
	printf("%d\n",fcount);
	int i;
	FILE * gnuplotPipe = popen("gnuplot -persistent", "w");
	fprintf(gnuplotPipe, "set title '%s'\n", title);
	fprintf(gnuplotPipe, "plot \"%s\" using 1:2 with lines", dataFileList[0].filename);

	if(fcount > 1){
		for (i = 1; i < fcount; ++i){
			fprintf(gnuplotPipe, ",\"%s\" using 1:2 with lines", dataFileList[i].filename);
		}
		fprintf(gnuplotPipe, "\n");
	}
	else{
		fprintf(gnuplotPipe, "\n");
	}

    fprintf(gnuplotPipe, "set xrange[%d:%d]\nset yrange [%d:%d]\n", xrangeMin, xrangeMax, yrangeMin, yrangeMax);
    fprintf(gnuplotPipe, "refresh\n");
}

int main(void) {
	int adcResult[SIZE];
	int fcount = 0;
	int * _fcount = &fcount;
	datafile dataFileList[10];

	/* sample graph */
	// int adcResult[SIZE]={541, 628, 647, 663, 658, 663, 671, 663, 671, 675, 663, 670, 671, 683, 675, 670, 678, 682, 676, 689, 680, 688, 617, 628, 640, 641, 656, 652, 705, 717, 676, 691, 690, 689, 697, 694, 728, 727, 717, 736, 720, 728, 730, 720, 726, 721, 724, 724, 695, 721, 710, 710, 710, 706, 715, 706, 702, 709, 702, 711, 702, 692, 704, 695, 700, 694, 688, 696, 629, 632, 643, 643, 652, 653, 692, 704, 669, 682, 671, 679, 681, 708, 718, 709, 700, 710, 701, 706, 701, 690, 696, 693, 690, 689, 684, 691, 682, 687, 681, 676, 676, 675, 668, 673, 660, 671, 661, 660, 655, 649, 657, 651, 640, 647, 576, 587, 582, 582, 544, 434, 472, 478, 550, 628, 622, 620, 612, 758};
	

	/* filtering */
	Sharpening(adcResult);
	MedianFiltering(adcResult);
	Stretching(adcResult, THRESHOLD);
	// zeroFiltering(adcResult);
	
	/* plot*/
	// addGraph("result.txt", adcResult, dataFileList, _fcount);

	// printf("%d", getLineFirstIndex(adcResult));
	// plot("test1",dataFileList,*_fcount,0,130,-1,9000);

	return 0;
}

