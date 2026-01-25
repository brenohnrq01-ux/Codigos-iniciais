//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    int base,altura,area=0;

    //Função de imprimir na tela
    printf("Digite a metrica da base em metros:\n");
    //Função de leitura e armazenamento
    scanf("%d",&base);

    printf("Digite a metrica da altura em metros:\n");
    scanf("%d",&altura);
    //Realizando a inserção de valores em uma váriavel
    area=(base*altura);
    printf("A area do retangulo e igual: %d\n",area);

    //Valor retornado para a função principal
    return 0;
}
