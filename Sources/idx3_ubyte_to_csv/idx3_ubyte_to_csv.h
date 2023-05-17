#ifndef IDX3_UBYTE_TO_CSV_H
#define IDX3_UBYTE_TO_CSV_H

#include <stdio.h>
#include <stdint.h>

#define FILE_HEADER_BYTE_LEN 16
#define ROW_RES 28
#define COL_RES 28
#define NUM_RESOLUTION 28*28

typedef enum csvDimensionOptions_e {
    oneDimension,
    twoDimensions,
} csvDimensionOptions_e;

void vPrintIdx3_UbyteFileHeader (FILE * idx3_ubyte_filePtr);
void vWriteMnistNumberToCsv (FILE * idx3_ubyte_filePtr, uint16_t numberIndex, char * outputPath, csvDimensionOptions_e dimensionOption);

#endif