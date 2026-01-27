Algoritmo "IMC"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/01/2026
Var
// Seção de Declarações das variáveis
 peso,altura,imc:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
 Escreval("Digite seu peso(00,0kg) e logo após o enter a sua altura(1,00cm):")
 Leia(peso,altura)
 imc<-peso/(altura*altura)
 Escreval("Seu IMC e igual a peso/(alturaxaltura) que e igual:",imc)
 Se imc < 18.5 entao
 Escreval("Está em estado de baixo peso")
 Senao Se imc <= 24.9 entao
 Escreval("Está no peso ideal")
 Senao Se imc <= 29.9 entao
 Escreval("Está com sobrepeso")
 Senao imc <=35.0 entao
 Escreval("Está em obesidade")
 Senao
 Escreval("Procure um especialista")
 Fimse

Fimalgoritmo