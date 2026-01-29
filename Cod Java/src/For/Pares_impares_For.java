//Pacote onde estão as classes
package For;

//Classe principal onde acontece a execução
public class Pares_impares_For {
	
	//Metodo Principal
	public static void main(String[] args) {
		
		//Inicializando as variáveis
		int i;
		
		//Função estrutura de repetição
	    for(i=1;i<=100;i++)
	    {
	    //Função estrutura de condição
	    if(i%2==0) {
	    //Função de imprimir na tela
	    System.out.printf("Impares de 1 a 100=%d\n",i-1);
	    System.out.printf("Pares   de 1 a 100=%d\n",i);
	    }	
	   }//Fim da estrutura
		
		
	}//Fim do metodo principal
}//Fim da Classe