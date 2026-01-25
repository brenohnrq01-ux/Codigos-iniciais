//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Cadastro_Academico {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
				
		//Inicializando as variáveis
		String nome,curso;
		
		//Função de print
		System.out.print("Digite seu nome:\n");
		
		//Lê e armazena a variável
		nome=input.next();
			
		System.out.print("Digite o nome do curso:\n");
		curso=input.next();
		System.out.print("Bem vindo "+nome+" Parábens por entrar em "+curso);

	}//Fim do metodo principal
}//Fim da Classe
