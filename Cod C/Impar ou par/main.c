//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int num;

    //Função de imprimir na tela
    printf("Digite um numero de (0-9):\n");
    //Função de leitura e armazenamento
    scanf("%d",&num);
    //Função estrutura de condição
    if(num%2==0)
    printf("O numero que voce digitou e par");
    else
    printf("O numero que voce digitou e impar");

    //Valor retornado para a função principal
    return 0;
}
