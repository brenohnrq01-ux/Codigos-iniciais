//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Conversao_em_Graus {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		float celsius;
		double farenheit;
		
		//Função de print
		System.out.print("Digite o numero de Celcius:\n");
		
		//Lê e armazena a variável
		celsius=input.nextFloat(); 
		
		//Atribuindo valor a uma variável
		farenheit=((celsius*1.8)+32);
		
		System.out.print("Realizando a conversão de "+celsius+" para farenheit:"+farenheit);
		
	}//Fim do metodo principal
}//Fim da Classe
