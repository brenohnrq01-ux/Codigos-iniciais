//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    char login[50];
    int i=0,senha;

    //Função de imprimir na tela
    printf("Digite o seu login:");
    //Função de leitura e armazenamento
    scanf(" %s",&login);

    //Função estrutura de repetição
    do{
    printf("Digite sua senha:");
    scanf("%d",&senha);

     //Função estrutura de condição
     if(senha==123){
      printf("Acesso liberado ao Administrador %s",login);
      break;
     }else
     printf("Tente novamente voce tem apenas mais %d de chances\n",3 - i);
     i++;
  }while(i<4);
    //Valor retornado para a função principal
    return 0;
}
