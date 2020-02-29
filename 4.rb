# 4 - Questão:


class Formulario
    @@nome = ""
    @@idade = 0
    @@salario = 0
    @@sexo = 0
    @@estado_civil = ""

    def informar_dados
        puts "\n- - - Informe os seguintes dados pessoais: - - -"
        
        obter_nome
        obter_idade
        obter_salario
        obter_sexo
        obter_estado_civil

        mostrar_dados
    end

    def obter_nome
        while true
            print "Nome: "
            @@nome = gets.chomp

            if @@nome.length < 3
                puts "O nome deve ter mais que 3 caracteres!"
            else
                break
            end
        end
    end

    def obter_idade
        while true
            print "Idade: "
            @@idade = gets.chomp.to_i

            if @@idade < 0 or @@idade > 150
                puts "A idade deve estar entre 0 e 150 anos!"
            else
                break
            end
        end
    end

    def obter_salario
        while true
            print "Salário: "
            @@salario = gets.chomp.to_i

            if @@salario < 0
                puts "O salário deve ser maior que zero!"
            else
                break
            end
        end
    end

    def obter_sexo
        while true
            print "Sexo: "
            @@sexo = gets.chomp.downcase

            if not ["f", "m"].include?(@@sexo)
                puts "O sexo deve ser 'f' ou 'm'."
            else
                break
            end
        end
    end

    def obter_estado_civil
        while true
            print "Estado Civil: "
            @@estado_civil = gets.chomp.downcase

            if not ["s", "c", "v", "d"].include?(@@estado_civil)
                puts "O estado civil deve ser 's', 'c', 'v' ou 'd'."
            else
                break
            end
        end
    end

    def mostrar_dados
        puts "\n- - - Dados recebidos: - - -"
        puts "Nome: #{@@nome}"
        puts "Idade: #{@@idade}"
        puts "Salário: #{@@salario}"
        puts "Sexo: #{@@sexo}"
        puts "Estado Civil: #{@@estado_civil}"
    end
end

main = Formulario.new
main.informar_dados
