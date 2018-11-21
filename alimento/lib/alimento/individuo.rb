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

end