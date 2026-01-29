//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int i=0,num;

    //Função de imprimir na tela
    printf("Digite um numero:");
    //Função de leitura e armazenamento
    scanf("%d",&num);

    //Função estrutura de repetição
    do{
    i++;
    printf("%dX%d=%d\n",num,i,num*i);
    }while(i<10);

    //Valor retornado para a função principal
    return 0;
}
