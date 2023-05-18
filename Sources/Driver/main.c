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
    // vCreateNNLayerMatricies();
    // NerualNetwork * NN = xConstructNeuralNetwork(INPUT_LAYER_WEIGHTS, NUM_HIDDEN_LAYERS, HIDDEN_LAYER_WEIGHTS, HIDDEN_LAYER_BIASES, OUTPUT_LAYER_WEIGHTS, OUTPUT_LAYER_BIASES);
    // vPrintAllLayers(NN);

    // Matrix * op = xForwardPropagation(NN, Sigmoid);
    // vPrintMatrix(op);
    FILE * fp = fopen("../../../MNIST_DataSet/train-images.idx3-ubyte", "rb");
    vWriteMnistNumberToCsv(fp, 1, "../../../test.csv", oneDimension);

    // double t1[9] = {
    //     1, 2, 3,
    //     3, 67, 32,
    //     34, 99, 23
    // };

    // double t2[9] = {
    //     13, 276, 33,
    //     33, 674, 362,
    //     34, 993, 223
    // };

    // Matrix * m1 = xCreateMatrix(3, 3, t1);
    // Matrix * m2 = xCreateMatrix(3, 3, t2);

    // Matrix * dif = xMatrixSquareEachElement(m1);

    // vPrintMatrix(dif);

    return 0;
}