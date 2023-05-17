#include "../../Libaries/NeuralC/Sources/Modules/Matrix/matrix.h"
#include "../../Libaries/NeuralC/Sources/Modules/NeuralNetwork/neuralNetwork.h"
#include "../../Libaries/NeuralC/Sources/Modules/ActivationFunctions/activationFunctions.h"
#include "../../Libaries/NeuralC/Sources/Modules/LayerCreation/layerCreation.h"
#include "../idx3_ubyte_to_csv/idx3_ubyte_to_csv.h"
#include <stdio.h>

extern Matrix * INPUT_LAYER_WEIGHTS;
extern Matrix * HIDDEN_LAYER_WEIGHTS[NUM_HIDDEN_LAYERS];
extern Matrix * HIDDEN_LAYER_BIASES[NUM_HIDDEN_LAYERS];
extern Matrix * OUTPUT_LAYER_WEIGHTS;
extern Matrix * OUTPUT_LAYER_BIASES;

int main (void)
{
    vCreateNNLayerMatricies();

    NerualNetwork * NN = xConstructNeuralNetwork(INPUT_LAYER_WEIGHTS, NUM_HIDDEN_LAYERS, HIDDEN_LAYER_WEIGHTS, HIDDEN_LAYER_BIASES, OUTPUT_LAYER_WEIGHTS, OUTPUT_LAYER_BIASES);
    vPrintAllLayers(NN);

    // double data[4] = {1, 2, 3, 4};

    // Matrix * test = xCreateMatrix(1, 4, data);

    // vUpdateInputLayerWeights(test);
    // printf("\n\n\n");
    // vPrintAllLayers(NN);

    // FILE * fp = fopen("../../../MNIST_DataSet/train-images.idx3-ubyte", "rb");

    // vWriteMnistNumberToCsv(fp, 1236, "../../../test.csv", twoDimensions);



    return 0;
}