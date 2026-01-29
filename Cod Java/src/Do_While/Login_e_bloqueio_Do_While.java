//Pacote onde estão as classes
package Do_While;

//Importando a função de scanner
import java.util.Scanner;

//Classe principal onde acontece a execução
public class Login_e_bloqueio_Do_While {
	
	//Metodo Principal
	public static void main(String[] args) {
	
		//Inicializando o Scanner
		Scanner input= new Scanner (System.in);
		
		//Inicializando as variáveis
		int i=0,senha;
		String login;
		
		//Função de imprimir na tela
	    System.out.printf("Digite o seu login:\n");
	    //Lê e armazena a variável
		login=input.next(); 
		
		//Função estrutura de repetição
	    
	    do{
	    	System.out.printf("Digite sua senha:");
	        senha=input.nextInt();
	         
	        //Função estrutura de condição
	         if(senha==123){
	          System.out.printf("Acesso liberado ao Administrador %s",login);
	          break;
	         }else 
	         System.out.printf("Tente novamente voce tem apenas mais %d de chances\n",3 - i);
	         i++;
	    }while(i<=3);//Fim da estrutura
		
	}//Fim do metodo principal
}//Fim da Classe