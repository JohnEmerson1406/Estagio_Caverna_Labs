# 1 - Questão:


class Financiamento
    @@valor_financiado = 0
    @@taxa_de_financiamento = 0
    @@parcelas = 0
    @@juros_anuais = 0

    @@total_do_financiamento = 0
    @@valor_das_parcelas = 0

    def informar_dados
        puts "\n- - - Informe os seguintes dados: - - -"

        obter_valor_financiado
        obter_taxa_de_financiamento
        obter_parcelas
        obter_juros_anuais

        efetuar_calculo

        mostrar_resultado
    end

    def obter_valor_financiado
        while true
            print "Valor financiado: "
            @@valor_financiado = gets.chomp.to_f

            if @@valor_financiado < 0
                puts "O valor deve ser maior que zero!"
            else
                break
            end
        end
    end

    def obter_taxa_de_financiamento
        while true
            print "Taxa de financiamento(em Real): "
            @@taxa_de_financiamento = gets.chomp.to_f

            if @@taxa_de_financiamento < 0
                puts "O valor deve ser maior que zero!"
            else
                break
            end
        end
    end

    def obter_parcelas
        while true
            print "Parcelas(24, 36, 48, 60): "
            @@parcelas = gets.chomp.to_i

            if not [24, 36, 48, 60].include?(@@parcelas)
                puts "Digite um valor válido!"
            else
                break
            end
        end
    end

    def obter_juros_anuais
        while true
            print "Taxa de juros anuais(ex. 2.5): "
            @@juros_anuais = gets.chomp.to_f

            if @@juros_anuais < 0
                puts "O valor deve ser maior que zero!"
            else
                break
            end
        end
    end

    def efetuar_calculo
        i = (@@juros_anuais / 12) / 100
        n = @@parcelas

        # Fórmula do cálculo do coeficiente de financiamento:
        cf = i / (1 - ((1+i) ** -n))

        # Multiplicando o valor do financiamento pelo coeficiente de financiamento, teremos o valor da prestação:
        @@valor_das_parcelas = @@valor_financiado * cf

        # Total pago em prestações:
        total_em_taxa_de_financiamento = n * @@taxa_de_financiamento
        total_em_prestacoes = n * @@valor_das_parcelas

        @@total_do_financiamento = total_em_taxa_de_financiamento + total_em_prestacoes
    end

    def mostrar_resultado
        puts "\n- - - - - - - - - - - - - - - - - - - -"
        puts "Total do financiamento: R$ %.2f" % @@total_do_financiamento
        puts "Valor das parcelas: R$ %.2f" % @@valor_das_parcelas
        puts "- - - - - - - - - - - - - - - - - - - -"
    end
end


main = Financiamento.new
main.informar_dados
