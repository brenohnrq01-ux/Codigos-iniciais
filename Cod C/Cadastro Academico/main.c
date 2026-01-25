//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    char nome[50],curso[50];

    //Função de imprimir na tela
    printf("Digite seu primeiro nome:\n");
    //Função de leitura e armazenamento
    scanf(" %s",&nome);

    printf("Digite o nome do seu curso:\n");
    scanf(" %s",&curso);
    printf("Bem vindo a faculdade %s , parabens pela aprovacao em %s",nome,curso);

    //Valor retornado para a função principal
    return 0;
}
