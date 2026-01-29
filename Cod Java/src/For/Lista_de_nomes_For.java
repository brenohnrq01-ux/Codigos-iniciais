//Pacote onde estão as classes
package For;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Lista_de_nomes_For {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int i;
		String nome;
		
		//Função estrutura de repetição
	    for(i=0;i<=30;i++)
	    {
	    //Função de imprimir na tela
	    System.out.printf("Digite o nome do aluno:\n");
	    //Lê e armazena a variável
		nome=input.next(); 
			
	    }//Fim da estrutura
		
		
	}//Fim do metodo principal
}//Fim da Classe