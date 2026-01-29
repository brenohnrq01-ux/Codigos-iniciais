//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int i=1;

    //Função estrutura de repetição
    while(i<=100)
    {
    //Função estrutura de condição
    if(i%2==0){
    //Função de imprimir na tela
    printf("Impares de 1 a 100=%d\n",i-1);
    printf("Pares   de 1 a 100=%d\n",i);
        }i++;
   }

    //Valor retornado para a função principal
    return 0;
}
