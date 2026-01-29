//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    char nome[50];
    int senha;

    //Função de imprimir na tela
    printf("Digite o login:\n");
    //Função de leitura e armazenamento
    scanf(" %s",&nome);

    printf("Digite a sua senha (0-9):\n");
    scanf("%d",&senha);

    //Função estrutura de condição
    if(senha==123)
        printf("Acesso liberado para o Administrador %s.",nome);
    else
        printf("Acesso negado");

    //Valor retornado para a função principal
    return 0;
}
