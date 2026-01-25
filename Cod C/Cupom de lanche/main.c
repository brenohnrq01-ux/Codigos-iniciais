//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    float cupom,refrigerante,misto;

    //Função de imprimir na tela
    printf("Cardapio--|Refrigerante R$10,00|Misto R$5,00|\n");

    printf("Digite quantos refrigerantes foram consumidos:");

    //Função de leitura e armazenamento
    scanf("%f",&refrigerante);

    printf("Digite quantos mistos foram consumidos:");
    scanf("%f",&misto);

    //Realizando a atribuição de valores na variavel
    refrigerante=refrigerante*10;
    misto=misto*5;
    cupom=(refrigerante+misto)/2;

    printf("O total do lanche com o cupom e igual:%f\n",cupom);

    //Valor retornado para a função principal
    return 0;
}
