//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int i,num;

    //Função de imprimir na tela
    printf("Digite um numero:");
    //Função de leitura e armazenamento
    scanf("%d",&num);

    //Função estrutura de repetição
    for(i=1;i<=10;i++)
    {
    printf("%dX%d=%d\n",num,i,num*i);
    }

    //Valor retornado para a função principal
    return 0;
}
