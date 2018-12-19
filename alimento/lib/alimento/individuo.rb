class Individuo
    include Comparable
    
    attr_reader :edad, :sexo, :peso, :altura
    
    def initialize(edad, sexo, peso, altura)
        @edad = edad
        @sexo = sexo
        @peso = peso
        @altura = altura
    end
    
    def <=>(otro)
        @altura <=> otro.altura
    end
end

class Paciente < Individuo
    def initialize(edad, sexo, peso, altura)
        super(edad, sexo, peso, altura)
    end
end

class TratamientoObesidad < Paciente
    include Comparable
    
    attr_reader :imc, :porcentajeGrasa, :actividadFisica, :menu
    
    def initialize(edad, sexo, peso, altura, actividadFisica)
        super(edad, sexo, peso, altura)
        @imc = calcularIMC()
        @porcentajeGrasa = calcularGrasa()
        @actividadFisica = actividadFisica
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
    
    def peso_teorico_ideal
        (@altura - 150) * 0.75 + 50
    end
    
    def gasto_energetico_basal
        @variable = 0
        if @sexo == 1
            @variable = 5
        else
            @variable = -161
        end
        (10 * @peso) + (6.25 * @altura) - (5 * @edad) + @variable
    end
    
    def efecto_termogeno
        gasto_energetico_basal * 0.10
    end
    
    def gasto_actividad_fisica
        gasto_energetico_basal * @actividadFisica
    end
    
    def gasto_energetico_total
        gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica
    end
    
    def asignar_menu(menu)
        @menu = menu
    end
    
    def alimentacion_suficiente
        if gasto_energetico_total * 1.1 < @menu.total
            "Suficiente"
        else
            "No suficiente"
        end
    end
    
    def to_s()
        "(#{@edad}, #{@sexo}, #{@peso}, #{@altura}){#{gasto_energetico_total}}"
    end
    
    def <=>(otro)
        @imc <=> otro.imc
    end
end