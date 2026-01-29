//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    char login[50];
    int i,senha;

    //Função de imprimir na tela
    printf("Digite o seu login:\n");
    //Função de leitura e armazenamento
    scanf(" %s",&login);

    //Função estrutura de repetição
    for(i=0;i<=3;i++)
    {
    printf("Digite sua senha:");
    scanf("%d",&senha);
     //Função estrutura de condição
     if(senha==123){
      printf("Acesso liberado ao Administrador %s",login);
      break;
     }else
     printf("Tente novamente voce tem apenas mais %d de chances\n",3 - i);
    }

    //Valor retornado para a função principal
    return 0;
}
