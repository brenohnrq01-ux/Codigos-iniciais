//Pacote onde estão as classes
package While;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Lista_de_Nomes_While {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int i=0;
		String nome;
		
		//Função estrutura de repetição
	    while(i<=30)
	    {
	    //Função de imprimir na tela
	    System.out.printf("Digite o nome do aluno:\n");
	    //Lê e armazena a variável
		nome=input.next(); 
		i++;	
	    }//Fim da estrutura
		
		
	}//Fim do metodo principal
}//Fim da Classe