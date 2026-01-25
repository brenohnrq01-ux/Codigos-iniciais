//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int anos,meses,dias;

    //Função de imprimir na tela
    printf("Digite a idade em anos:\n");
    //Função de leitura e armazenamento
    scanf("%d",&anos);


    //Realizando a atribuição de valores na variavel
    meses=anos*12;
    dias=anos*365;

    printf("Sua idade em meses e igual:%d\n",meses);
    printf("Sua idade em dias e aproximadamente:%d\n",dias);

    //Valor retornado para a função principal
    return 0;
}
