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

end

class TratamientoObesidad < Paciente

end