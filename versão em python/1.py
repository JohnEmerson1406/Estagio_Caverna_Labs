# 1 - Questão:


class Financiamento:
    def __init__(self):
        self.valor_financiado = 0
        self.taxa_de_financiamento = 0
        self.parcelas = 0
        self.juros_anuais = 0

        self.total_do_financiamento = 0
        self.valor_das_parcelas = 0

    def informar_dados(self):
        print('\n- - - Informe os seguintes dados: - - -')

        self.obter_valor_financiado()
        self.obter_taxa_de_financiamento()
        self.obter_parcelas()
        self.obter_juros_anuais()

        self.efetuar_calculo()

        self.mostrar_resultado()

    def obter_valor_financiado(self):
        while True:
            self.valor_financiado = float(input('Valor financiado: '))
            if self.valor_financiado < 0:
                print('O valor deve ser maior que zero!')
            else:
                break

    def obter_taxa_de_financiamento(self):
        while True:
            self.taxa_de_financiamento = float(
                input('Taxa de financiamento(em Real): '))
            if self.taxa_de_financiamento < 0:
                print('O valor deve ser maior que zero!')
            else:
                break

    def obter_parcelas(self):
        while True:
            self.parcelas = int(input('Parcelas(24, 36, 48, 60): '))
            if self.parcelas not in [24, 36, 48, 60]:
                print('Digite um valor válido!')
            else:
                break

    def obter_juros_anuais(self):
        while True:
            self.juros_anuais = float(input('Taxa de juros anuais(ex. 2.5): '))
            if self.juros_anuais < 0:
                print('O valor deve ser maior que zero!')
            else:
                break

    def efetuar_calculo(self):
        i = (self.juros_anuais / 12) / 100
        n = self.parcelas

        # Fórmula do cálculo do coeficiente de financiamento:
        cf = i / (1 - ((1+i) ** -n))

        # Multiplicando o valor do financiamento pelo coeficiente de financiamento, teremos o valor da prestação:
        self.valor_das_parcelas = self.valor_financiado * cf

        # Total pago em prestações:
        total_em_taxa_de_financiamento = n * self.taxa_de_financiamento
        total_em_prestacoes = n * self.valor_das_parcelas

        self.total_do_financiamento = total_em_taxa_de_financiamento + total_em_prestacoes

    def mostrar_resultado(self):
        print('\n- - - - - - - - - - - - - - - - - - - - ')
        print('Total do financiamento: R$ {0:.2f}'.format(
            self.total_do_financiamento))
        print('Valor das parcelas: R$ {0:.2f}'.format(self.valor_das_parcelas))
        print('- - - - - - - - - - - - - - - - - - - - ')


if __name__ == "__main__":
    main = Financiamento()
    main.informar_dados()
