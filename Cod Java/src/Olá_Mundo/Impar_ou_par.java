//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Impar_ou_par {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int num;
		
		//Função de print
		System.out.print("Digite um número de (0-9):\n");
		
		//Lê e armazena a variável
		num=input.nextInt(); 
		
		//Função estrutura de condição
		if(num%2==0)
			System.out.printf("O numero que você digitou e par");
		else
			System.out.printf("O numero que você digitou e impar");	
				
	}//Fim do metodo principal
}//Fim da Classe
