#Função de print
print("Cardapio-->|Refrigerante R$10,00|Misto R$5,00|")

#Criando variáveis, lendo e armazenando valores;
refrigerante=float(input("Digite quantos refrigerante foram comsumidos:"))
misto=float(input("Digite quantos mistos foram comsumidos:"))

#Atribuindo valor a uma variável
refrigerante=refrigerante*10
misto=misto*5
cupom=(refrigerante+misto)/2


print("O total do lanche mais o cupom e igual a:", cupom)
