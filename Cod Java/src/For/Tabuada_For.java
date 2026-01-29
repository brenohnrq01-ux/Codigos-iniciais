//Pacote onde estão as classes
package For;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Tabuada_For {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int i,num;
		
		//Função de imprimir na tela
	    System.out.printf("Digite um número:\n");
	    //Lê e armazena a variável
		num=input.nextInt(); 
		
		//Função estrutura de repetição
	    for(i=0;i<=10;i++)
	    {
	    System.out.printf("%dX%d=%d\n",num,i,num*i);
			
	    }//Fim da estrutura
		
		
	}//Fim do metodo principal
}//Fim da Classe