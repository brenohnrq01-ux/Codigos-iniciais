//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    float celsius,farenheit;

    //Função de imprimir na tela
    printf("Digite o numero de celsius:\n");
    //Função de leitura e armazenamento
    scanf("%f",&celsius);
    //Realizando a atribuição de valores na variavel
    farenheit=(celsius*1.8)+32;

    printf("Realizando a conversao dos %2.f celsius em farenheit %2.f\n",celsius,farenheit);

    //Valor retornado para a função principal
    return 0;
}
