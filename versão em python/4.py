# 4 - Questão:


class Formulario:
    def __init__(self):
        self.nome = ''
        self.idade = 0
        self.salario = 0
        self.sexo = ''
        self.estado_civil = ''

    def informar_dados(self):
        print('- - - Informe os seguintes dados pessoais: - - -')

        self.obter_nome()
        self.obter_idade()
        self.obter_salario()
        self.obter_sexo()
        self.obter_estado_civil()

        self.mostrar_dados()

    def obter_nome(self):
        while True:
            self.nome = input('Nome: ')
            if len(self.nome) < 3:
                print('O nome deve ter mais que 3 caracteres!')
            else:
                break

    def obter_idade(self):
        while True:
            self.idade = int(input('Idade: '))
            if self.idade < 0 or self.idade > 150:
                print('O idade deve estar entre 0 e 150 anos!')
            else:
                break

    def obter_salario(self):
        while True:
            self.salario = int(input('Salário: '))
            if self.salario < 0:
                print('O salário deve ser maior que zero!')
            else:
                break

    def obter_sexo(self):
        while True:
            self.sexo = input('Sexo: ').lower()
            if self.sexo not in ['f', 'm']:
                print("O sexo deve ser 'f' ou 'm'")
            else:
                break

    def obter_estado_civil(self):
        while True:
            self.estado_civil = input('Estado Civil: ').lower()
            if self.estado_civil not in ['s', 'c', 'v', 'd']:
                print("O estado civil deve ser 's', 'c', 'v' ou 'd'")
            else:
                break

    def mostrar_dados(self):
        print('\n- - - Dados recebidos: - - -')
        print('Nome:', self.nome)
        print('Idade:', self.idade)
        print('Salário:', self.salario)
        print('Sexo:', self.sexo)
        print('Estado Civil:', self.estado_civil)


if __name__ == "__main__":
    main = Formulario()
    main.informar_dados()
