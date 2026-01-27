//Bibliotecas onde são armazenadas as funções
#include <stdio.h>
#include <stdlib.h>

//Função principal do código de execução
int main()
{
    //Inicializando as váriaveis
    float peso,altura,imc;

    //Função de imprimir na tela
    printf("Digite seu peso(00.0kg):");
    //Função de leitura e armazenamento
    scanf("%f",&peso);

    printf("Digite a sua altura(1.00cm):");
    scanf("%f",&altura);
    //Atribuindo valor a uma variável
    imc=peso/(altura*altura);

    printf("Seu IMC e igual a peso/(alturaXaltura) que e igual:%2.f\n",imc);

    //Função estrutura de condição
    if(imc < 18.5)
    printf("Esta em estado de baixo peso");
    else if(imc <= 24.9)
    printf("Esta no peso ideal");
    else if (imc <= 29.9)
    printf("Esta com sobrepeso");
    else if (imc<=35.0)
    printf("Esta em obesidade");
    else
    printf("Procure um especialista");

    //Valor retornado para a função principal
    return 0;
}
