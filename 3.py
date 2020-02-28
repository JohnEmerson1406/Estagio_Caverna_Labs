# 3 - Questão:

import random


class Craps:
    def __init__(self):
        self.jogada = 0
        self.ponto = 0

    def menu(self):
        opcao = -1
        while opcao != 0:
            print()
            self.mostrar_ponto()
            print('- - - Selecione uma opção: - - -')
            print('1 - Lançar dados')
            print('0 - Sair')
            opcao = input('Digite a opção: ')

            if opcao == '1':
                self.mostrar_resultado(self.lancar_dados())
            elif opcao == '0':
                break
            else:
                print('\nSelecione uma opção válida!')

    def mostrar_ponto(self):
        if self.ponto != 0:
            print("Seu ponto é:", self.ponto)

    def mostrar_resultado(self, resultado):
        print("\n======================================")
        print("Jogada:", self.jogada)
        print("Resultado =", resultado)
        if self.jogada == 1:
            if resultado in [7, 11]:
                print("\n'Natural', você ganhou!")
                self.resetar()
            elif resultado in [2, 3, 12]:
                print("\n'Craps', você perdeu!")
                self.resetar()
            else:
                self.ponto = resultado
                print()
                print(self.ponto, "é o seu ponto!")
                print("Continue a lançar os dados até tirar este ponto novamente!")
        else:
            if resultado == self.ponto:
                print("\nVocê Ganhou!")
                self.resetar()
            elif resultado == 7:
                print("\nVocê Perdeu!")
                self.resetar()
        print("======================================")

    def lancar_dados(self):
        self.jogada += 1
        resultado = random.randint(2, 12)
        return resultado

    def resetar(self):
        self.jogada = 0
        self.ponto = 0


if __name__ == "__main__":
    main = Craps()
    main.menu()
