//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Cupom_de_lanche {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		float cupom,refrigerante,misto;
		
		//Função de print
		System.out.print("Cardapio-->|Refrigerante R$10,00|Misto R$5,00|\n");
		
		System.out.print("Digite quantos refrigerante foram comsumidos:\n");
		
		//Lê e armazena a variável
		refrigerante=input.nextInt(); 
		
		
		System.out.print("Digite quantos mistos foram comsumidos:\n");
		misto=input.nextInt(); 
		
		//Atribuindo valor a uma variável
		refrigerante=refrigerante*10;
		misto=misto*5;
		cupom=(refrigerante+misto)/2;
		
		System.out.print("O total do lanche mais o cupom e igual a:"+cupom);
			
	}//Fim do metodo principal
}//Fim da Classe
