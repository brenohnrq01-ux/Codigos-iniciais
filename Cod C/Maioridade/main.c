//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int idade;

    //Função de imprimir na tela
    printf("Digite a idade em anos:\n");
    //Função de leitura e armazenamento
    scanf("%d",&idade);
    //Função de estrutura de condição
    if(idade>=18)
        printf("Ja alcancou a maioridade\n");
    else
        printf("Ainda e menor de idade\n");

    //Valor retornado para a função principal
    return 0;
}
