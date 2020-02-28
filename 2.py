# 2 - Questão:

import math


class QuantidadeVendedores:
    def __init__(self):
        self.intervalos = [[200, 299], [300, 399], [400, 499], [500, 599], [600, 699],
                           [700, 799], [800, 899], [900, 999], [1000, math.inf]]
        self.contadores = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    def menu(self):
        opcao = -1
        while opcao != 0:
            print('\n- - - Selecione uma opção: - - -')
            print('1 - Para adicionar um salário de um vendedor')
            print('2 - Para ver a lista de contadores')
            print('0 - Sair')
            opcao = input('Digite a opção: ')

            if opcao == '1':
                self.adicionar_salario()
            elif opcao == '2':
                self.mostrar_lista()
            elif opcao == '0':
                break
            else:
                print('Selecione uma opção válida!')

    def adicionar_salario(self):
        salario = self.obter_salario()

        for i in range(len(self.contadores)):
            if salario >= self.intervalos[i][0] and salario <= self.intervalos[i][1]:
                self.contadores[i] += 1
        print('\nSalário adicionado!')

    def obter_salario(self):
        salario = 0
        while True:
            salario = int(input('Salário: '))
            if salario < 0:
                print('Digite um valor válido!')
            else:
                break
        return salario

    def mostrar_lista(self):
        opcao = ''
        while opcao != 's':
            print('\n--- Lista de Contadores: ---')
            print('$200 - $299:', self.contadores[0], 'vendedor(es),')
            print('$300 - $399:', self.contadores[1], 'vendedor(es),')
            print('$400 - $499:', self.contadores[2], 'vendedor(es),')
            print('$500 - $599:', self.contadores[3], 'vendedor(es),')
            print('$600 - $699:', self.contadores[4], 'vendedor(es),')
            print('$700 - $799:', self.contadores[5], 'vendedor(es),')
            print('$800 - $899:', self.contadores[6], 'vendedor(es),')
            print('$900 - $999:', self.contadores[7], 'vendedor(es),')
            print('$1000 em diante:', self.contadores[8], 'vendedor(es),')

            opcao = input('\nVoltar ao menu?(s/n): ').lower()
            if opcao == 's':
                break


if __name__ == "__main__":
    main = QuantidadeVendedores()
    main.menu()
