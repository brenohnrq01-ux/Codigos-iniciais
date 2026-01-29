//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    char nome[50];
    int i=0;

    //Função estrutura de repetição
    do{
    //Função de imprimir na tela
    printf("Digite o nome do aluno:\n");
    //Função de leitura e armazenamento
    scanf(" %s",&nome);
    i++;
    }while(i<3);

    //Valor retornado para a função principal
    return 0;

}

