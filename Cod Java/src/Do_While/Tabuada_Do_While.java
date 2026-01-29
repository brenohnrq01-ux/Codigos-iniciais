//Pacote onde estão as classes
package Do_While;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Tabuada_Do_While {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int i=0,num;
		
		//Função de imprimir na tela
	    System.out.printf("Digite um número:\n");
	    //Lê e armazena a variável
		num=input.nextInt(); 
		
		//Função estrutura de repetição
	    do{
	    i++;
	    System.out.printf("%dX%d=%d\n",num,i,num*i);	
	    }while(i<10);//Fim da estrutura
		
		
	}//Fim do metodo principal
}//Fim da Classe