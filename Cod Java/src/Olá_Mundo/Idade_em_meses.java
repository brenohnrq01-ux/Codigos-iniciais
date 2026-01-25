//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Idade_em_meses {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int anos,meses,dias;
		
		//Função de print
		System.out.print("Digite a idade em anos:\n");
		
		//Lê e armazena a variável
		anos=input.nextInt(); 
		
		//Atribuindo valor a uma variável
		meses=anos*12;
		dias=anos*365;
		
		System.out.print("Sua idade em meses e igual:"+meses+"\n");
		System.out.print("Sua idade em dias e aproximadamente:"+dias);	
				
	}//Fim do metodo principal
}//Fim da Classe
