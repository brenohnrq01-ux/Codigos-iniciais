//Pacote onde estão as classes
package For;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Login_e_bloqueio_For {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int i,senha;
		String login;
		
		//Função de imprimir na tela
	    System.out.printf("Digite o seu login:\n");
	    //Lê e armazena a variável
		login=input.next(); 
		
		//Função estrutura de repetição
	    for(i=0;i<=3;i++)
	    {
	    	System.out.printf("Digite sua senha:");
	        senha=input.nextInt();
	         
	        //Função estrutura de condição
	         if(senha==123){
	          System.out.printf("Acesso liberado ao Administrador %s",login);
	          break;
	         }else 
	         System.out.printf("Tente novamente voce tem apenas mais %d de chances\n",3 - i);
	        
	    }//Fim da estrutura
		
	}//Fim do metodo principal
}//Fim da Classe