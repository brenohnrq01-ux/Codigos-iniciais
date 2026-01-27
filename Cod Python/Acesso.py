#Criando variáveis, lendo e armazenando valores;
login=(input("Digite o seu login: "))
senha=int(input("Digite a senha de acesso(0-9): "))

#Função estrutura de condição
if senha==123:
    print("Acesso Liberado ao Administrador "+login)
else:
    print("Acesso Negado")