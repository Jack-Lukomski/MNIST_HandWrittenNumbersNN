#include "idx3_ubyte_to_csv.h"

void vPrintIdx3_UbyteFileHeader(FILE * idx3_ubyte_filePtr)
{
    uint8_t headerBuf[FILE_HEADER_BYTE_LEN];

    fread(headerBuf, sizeof(headerBuf), 1, idx3_ubyte_filePtr);
    printf("Magic Number: %02x %02x %02x %02x\n", headerBuf[0], headerBuf[1], headerBuf[2], headerBuf[3]);
    printf("Number of Images: %02x %02x %02x %02x\n", headerBuf[4], headerBuf[5], headerBuf[6], headerBuf[7]);
    printf("Number of Rows: %02x %02x %02x %02x\n", headerBuf[8], headerBuf[9], headerBuf[10], headerBuf[11]);
    printf("Number of Columns: %02x %02x %02x %02x\n", headerBuf[12], headerBuf[13], headerBuf[14], headerBuf[15]);

    fseek(idx3_ubyte_filePtr, 0, SEEK_SET);
}

void vWriteMnistNumberToCsv (FILE * idx3_ubyte_filePtr, uint16_t numberIndex, char * outputPath, csvDimensionOptions_e dimensionOption)
{
    FILE * newCsvFile_ptr = fopen(outputPath, "w");
    uint16_t pixel;
    uint8_t data[28 * 28];

    fseek(idx3_ubyte_filePtr, FILE_HEADER_BYTE_LEN + (numberIndex * NUM_RESOLUTION), SEEK_SET);

    if (newCsvFile_ptr == NULL)
    {
        printf("ERROR opening csv file\n");
        return;
    }

    for (uint16_t currRow = 0; currRow < ROW_RES; currRow++)
    {
        for (uint16_t currCol = 0; currCol < COL_RES; currCol++)
        {
            fread(&pixel, sizeof(uint8_t), 1, idx3_ubyte_filePtr);
            fprintf(newCsvFile_ptr, "%u,", pixel);
        }
        
        if (dimensionOption == twoDimensions)
        {
            fprintf(newCsvFile_ptr, "\n");
        }
    }

    fclose(newCsvFile_ptr);
}