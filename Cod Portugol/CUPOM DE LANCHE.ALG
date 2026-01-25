Algoritmo "Cupom de Lanche"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/01/2026
Var
// Seção de Declarações das variáveis 
 cupom,refrigerante,misto:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 Escreval()
 Escreval("Cardapio-->|Refrigerante R$10,00|Misto R$5,00|")
 Escreval("Digite quantos refrigerante foram comsumidos:")
 Leia(refrigerante)
 Escreval("Digite quantos mistos foram comsumidos:")
 Leia(misto)
 refrigerante<-refrigerante*10
 misto<-misto*5
 cupom<-(refrigerante+misto)/2
 Escreval("O total do lanche mais o cupom e igual a:",cupom)

Fimalgoritmo