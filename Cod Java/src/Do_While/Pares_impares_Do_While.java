//Pacote onde estão as classes
package Do_While;

//Classe principal onde acontece a execução
public class Pares_impares_Do_While {
	
	//Metodo Principal
	public static void main(String[] args) {
		
		//Inicializando as variáveis
		int i=1;
		
		//Função estrutura de repetição
	    
	    do{
	    //Função estrutura de condição
	    if(i%2==0) {
	    //Função de imprimir na tela
	    System.out.printf("Impares de 1 a 100=%d\n",i-1);
	    System.out.printf("Pares   de 1 a 100=%d\n",i);
	    }i++;	
	   }while(i<=100);//Fim da estrutura
		
	}//Fim do metodo principal
}//Fim da Classe