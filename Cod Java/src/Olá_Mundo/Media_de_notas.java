//Pacote onde estão as classes
package Olá_Mundo;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Media_de_notas {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		float nota1,nota2,nota3,media;
		String nome;
		
		//Função de print
		System.out.print("Digite o nome do aluno:\n");
		
		//Lê e armazena a variável
		nome=input.next(); 
		
		
		System.out.print("Digite a primeira nota:\n");
		nota1=input.nextFloat(); 
		System.out.print("Digite a segunda nota:\n");
		nota2=input.nextFloat(); 
		System.out.print("Digite a terceira nota:\n");
		nota3=input.nextFloat(); 
		
		//Atribuindo valor a uma variável
		media=(nota1+nota2+nota3)/3;
		
		System.out.print("A media do "+nome+ " e igual:"+media);
			
	}//Fim do metodo principal
}//Fim da Classe
