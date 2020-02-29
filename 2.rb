# 2 - Questão:


class QuantidadeVendedores
    @@intervalos = [[200, 299], [300, 399], [400, 499], [500, 599], [600, 699],
                    [700, 799], [800, 899], [900, 999], [1000, Float::INFINITY]]
    @@contadores = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    def menu
        opcao = -1
        while opcao != 0
            puts "\n- - - Selecione uma opção: - - -"
            puts "1 - Para adicionar um salário de um vendedor"
            puts "2 - Para ver a lista de contadores"
            puts "0 - Sair"

            print "Digite a opção: "
            opcao = gets.chomp

            if opcao == "1"
                adicionar_salario
            elsif opcao == "2"
                mostrar_lista
            elsif opcao == '0'
                break
            else
                puts "Selecione uma opção válida!"
            end
        end
    end

    def adicionar_salario
        salario = obter_salario

        for i in 0...@@contadores.length
            if salario >= @@intervalos[i][0] and salario <= @@intervalos[i][1]
                @@contadores[i] += 1
            end
        end
        puts "\nSalário adicionado!"
    end

    def obter_salario
        salario = 0
        while true
            print "Salário: "
            salario = gets.chomp.to_f

            if salario < 0
                puts "Digite um valor acima de zero!"
            else
                break
            end
        end
        return salario
    end

    def mostrar_lista
        opcao = ""
        while opcao != "s"
            puts "\n--- Lista de Contadores: ---"
            puts "$200 - $299: #{@@contadores[0]} vendedor(es),"
            puts "$300 - $399: #{@@contadores[1]} vendedor(es),"
            puts "$400 - $499: #{@@contadores[2]} vendedor(es),"
            puts "$500 - $599: #{@@contadores[3]} vendedor(es),"
            puts "$600 - $699: #{@@contadores[4]} vendedor(es),"
            puts "$700 - $799: #{@@contadores[5]} vendedor(es),"
            puts "$800 - $899: #{@@contadores[6]} vendedor(es),"
            puts "$900 - $999: #{@@contadores[7]} vendedor(es),"
            puts "$1000 em diante: #{@@contadores[8]} vendedor(es)."

            print "\nVoltar ao menu?(s/n): "
            opcao = gets.chomp.downcase
            if opcao == "s"
                break
            end
        end
    end
end


main = QuantidadeVendedores.new
main.menu
