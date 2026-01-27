Algoritmo "Acesso"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/01/2026
Var
// Seção de Declarações das variáveis 
 login:caractere
 senha:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 Escreval("Digite o seu login de acesso: ")
 Leia(login)
 Escreval("Digite a senha de acesso(0-9): ")
 Leia(senha)
 Se (senha=123) então
 Escreval("Acesso Liberado ao Administrador ",login)
 Senão
 Escreval("Acesso Negado")
 Fimse

Fimalgoritmo