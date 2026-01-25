#Criando variáveis, lendo e armazenando valores;
nome=input("Digite o nome do aluno:")

nota1=int(input("Digite a primeira nota:"))
nota2=int(input("Digite a segunda nota:"))
nota3=int(input("Digite a terceira nota:"))

#Atribuindo valor a uma variável
media=(nota1 + nota2 + nota3) / 3

#Função de print
print("A media do ", nome, " e igual: ", media)