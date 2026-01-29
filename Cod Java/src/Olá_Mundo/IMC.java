//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class IMC {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		float peso,altura,imc;
		
		//Função de print
		System.out.print("Digite seu peso(00,0kg):\n");
		
		//Lê e armazena a variável
		peso=input.nextFloat(); 
		
		System.out.print("Digite a sua altura(1,00cm):\n");
		altura=input.nextFloat();
		
		//Atribuindo valor a uma variável
	    imc=peso/(altura*altura);
	    
		System.out.println("Seu IMC e igual a peso/(alturaXaltura) que e igual: "+imc);
		
		
		//Função estrutura de condição
		if(imc < 18.5)
			System.out.printf("Esta em estado de baixo peso");
		    else if(imc <= 24.9)
		    	System.out.printf("Esta no peso ideal");
		    else if (imc <= 29.9)
		    	System.out.printf("Esta com sobrepeso");
		    else if (imc<=35.0)
		    	System.out.printf("Esta em obesidade");
		    else
		    	System.out.printf("Procure um especialista");	
				
	}//Fim do metodo principal
}//Fim da Classe
