//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Maioridade {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int anos;
		
		//Função de print
		System.out.print("Digite a idade em anos:\n");
		
		//Lê e armazena a variável
		anos=input.nextInt(); 
		
		//Função estrutura de condição
		if(anos>=18) {
			System.out.print("Já alcançou a maioridade");
		}
		else{
			System.out.print("Ainda e Menor de idade");
		}
			
	}//Fim do metodo principal
}//Fim da Classe