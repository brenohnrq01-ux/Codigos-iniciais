//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Area_do_Retangulo {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int base,altura,area;
		
		//Função de print
		System.out.print("Digite a metrica da base do retangulo:\n");
		
		//Lê e armazena a variável
		base=input.nextInt(); 
		
		
		System.out.print("Digite a metrica da altura do retangulo:\n");
		altura=input.nextInt(); 
		
		//Atribuindo valor a uma variável
		area=base*altura;
		
		System.out.print("A área do retangulo e igual:\n"+area);
		
		
	}//Fim do metodo principal
}//Fim da Classe
