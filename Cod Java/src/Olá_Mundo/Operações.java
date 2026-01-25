//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Operações {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int x,y;
		
		//Função de print
		System.out.print("Digite um número de 1-9:\n");
		
		//Lê e armazena a variável
		x=input.nextInt(); 
		
		
		System.out.print("Digite um segundo número de 1-9:\n");
		y=input.nextInt(); 
	
		
		System.out.print("A soma desses números e igual:"+(x+y)+"\n");
		System.out.println("A subtração desses números e igual:"+(x-y));
		System.out.print("A multiplicação desses números e igual:"+(x*y)+"\n");
		System.out.println("A divisão desses números e igual:"+(x/y));
		
	}//Fim do metodo principal
}//Fim da Classe
