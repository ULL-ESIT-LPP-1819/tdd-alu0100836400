class Individuo
    attr_reader :edad, :sexo, :peso, :altura
    
    def initialize(edad, sexo, peso, altura)
        @edad = edad
        @sexo = sexo
        @peso = peso
        @altura = altura
    end
end

class Paciente < Individuo
    def initialize(edad, sexo, peso, altura)
        super(edad, sexo, peso, altura)
    end
end

class TratamientoObesidad < Paciente
    include Comparable
    
    attr_reader :imc, :porcentajeGrasa
    
    def initialize(edad, sexo, peso, altura)
        super(edad, sexo, peso, altura)
        @imc = calcularIMC()
        @porcentajeGrasa = calcularGrasa()
    end

    def calcularIMC()
        ("%.2f" % (@peso / (1.0 * @altura ** 2))).to_f
        
    end
    
    def calcularGrasa()
        ("%.2f" % (1.2 * @imc + 0.23 * @edad - 10.8 * @sexo - 5.4)).to_f
        
    end
    
    def valoracionIMC()
        if @imc < 18.5
            "Bajo peso"
        else if @imc < 24.9
            "Adecuado"
            else
            "Sobrepeso"
            end
        end
    end
    
    def <=>(otro)
        @imc <=> otro.imc
    end
end