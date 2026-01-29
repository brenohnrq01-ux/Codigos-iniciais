#Criando variáveis, lendo e armazenando valores;
peso=float(input("Digite seu peso(00.0kg):"))
altura=float(input("Digite a sua altura(1.00cm):"))

#Atribuindo valor a uma variável
imc=peso/(altura*altura)

print(f"Seu IMC é igual a peso/(altura*altura), que é igual: {imc:.2f}")

#Função estrutura de condição
if imc < 18:
 print("Esta em estado de baixo peso")
elif imc <= 24:
 print("Está no peso ideal")
elif imc <= 29:
 print("Esta com sobrepeso")
elif imc <= 35:
 print("Esta em obesidade")
else:
 print("Procure um especialista")