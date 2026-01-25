//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int x,y;

    //Função de imprimir na tela
    printf("\nDigite um numero de (1-9):\n");

    //Função de leitura e armazenamento
    scanf("%d",&x);

    printf("Digite o segundo numero de (1-9):\n");
    scanf("%d",&y);
    printf("A soma dos dois numero e igual: %d\n",x+y);
    printf("A subtracao dos dois numero e igual: %d\n",x-y);
    printf("A multiplicacao dos dois numero e igual: %d\n",x*y);
    printf("A divisao dos dois numero e igual: %d\n",x/y);

    //Valor retornado para a função principal
    return 0;
}
