# 3 - Questão:


class Craps
    @@jogada = 0
    @@ponto = 0

    def menu
        opcao = -1
        while opcao != 0
            puts ""
            mostrar_ponto
            puts "- - - Selecione uma opção: - - -"
            puts "1 - Lançar dados"
            puts "0 - Sair"

            print "Digite a opção: "
            opcao = gets.chomp

            if opcao == "1"
                mostrar_resultado(lancar_dados)
            elsif opcao == "0"
                break
            else
                puts "\nSelecione uma opção válida!"
            end
        end
    end

    def lancar_dados
        @@jogada += 1
        resultado = rand(2..12)
        return resultado
    end

    def mostrar_resultado(resultado)
        puts "\n======================================"
        puts "Jogada: #{@@jogada}"
        puts "Resultado = #{resultado}"
        if @@jogada == 1
            if [7, 11].include?(resultado)
                puts "\n'Natural', você ganhou!"
                resetar
            elsif [2, 3, 12].include?(resultado)
                puts "\n'Craps', você perdeu!"
                resetar
            else
                @@ponto = resultado
                puts ""
                puts "#{@@ponto} é o seu ponto!"
                puts "Continue a lançar os dados até tirar este ponto novamente!"
            end
        else
            if resultado == @@ponto
                puts "\nVocê Ganhou!"
                resetar
            elsif resultado == 7
                puts "\nVocê Perdeu!"
                resetar
            end
        end
        puts "======================================"
    end

    def mostrar_ponto
        if @@ponto != 0
            puts "Seu ponto é: #{@@ponto}"
        end
    end

    def resetar
        @@jogada = 0
        @@ponto = 0
    end
end


main = Craps.new
main.menu
