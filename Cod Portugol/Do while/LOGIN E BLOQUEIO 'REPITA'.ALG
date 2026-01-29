Algoritmo "Login e bloqueio 'repita'"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/01/2026
Var
// Seção de Declarações das variáveis 
 senha,tenta,i:inteiro
 login:caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
     i<-1
     Escreval("Digite o login de user:")
     Leia(login)
     Repita
     Escreval("Digite sua senha:")
     Leia(senha)
     Se (senha=123)entao
      Escreval("Acesso liberado ao Administrador ",login)
      Fimalgoritmo
      Senao
      Escreval("Tente novamente você tem apenas mais", 3-i, " chances")
      i<-i+1
      Fimse
      ate i>3 faça

Fimalgoritmo