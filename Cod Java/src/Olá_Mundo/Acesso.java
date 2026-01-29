//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Acesso {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
				
		//Inicializando as variáveis
		String login;
		int senha;
		
		//Função de print
		System.out.print("Digite seu login:\n");
		
		//Lê e armazena a variável
		login=input.next();
			
		System.out.print("Digite a sua senha de (0-9):\n");
		senha=input.nextInt();
		
		//Função estrutura de condição
		if(senha==123)
		System.out.print("Acesso Liberado ao Administrador "+login);
		else
		System.out.print("Acesso Negado");
	
	}//Fim do metodo principal
}//Fim da Classe
