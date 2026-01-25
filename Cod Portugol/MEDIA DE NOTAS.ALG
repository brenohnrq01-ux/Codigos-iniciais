Algoritmo "Media de notas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/01/2026
Var
// Seção de Declarações das variáveis 
 nota1,nota2,nota3,media:real
 nome:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 Escreva("Digite o nome do aluno:")
 Leia(nome)
 Escreva("Digite a primeira nota:")
 Leia(nota1)
 Escreva("Digite a segunda nota:")
 Leia(nota2)
 Escreva("Digite a terceira nota:")
 Leia(nota3)
 media<-(nota1+nota2+nota3)/3
 Escreva("A media do ",nome," e igual: " ,media)

Fimalgoritmo