//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    float nota1,nota2,nota3,media;
    char nome[50];

    //Função de imprimir na tela
    printf("Digite o nome do aluno:\n");
    //Função de leitura e armazenamento
    scanf(" %s",&nome);

    printf("Digite a primeira nota:\n");
    scanf("%f",&nota1);
    printf("Digite a segunda nota:\n");
    scanf("%f",&nota2);
    printf("Digite a terceira nota:\n");
    scanf("%f",&nota3);

    //Realizando a atribuição de valores na variavel
    media=(nota1+nota2+nota3)/3;

    printf("A media do aluno %s e igual: %f\n",nome,media);

    //Valor retornado para a função principal
    return 0;
}
