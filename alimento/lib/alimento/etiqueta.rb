class Etiqueta
    
    attr_reader :nombre, :valor_energeticoJ, :valor_energeticoCal, :grasas, :grasas_saturadas, :hidratos, :azucares, :proteinas, :sal
    
    def initialize(nombre, grasas, grasas_saturadas, hidratos, azucares, proteinas, sal)
        @nombre, @grasas, @grasas_saturadas, @hidratos, @azucares, @proteinas, @sal = 
        nombre, grasas, grasas_saturadas, hidratos, azucares, proteinas, sal
    end
    
    def calcular_valor_energetico_julios()
        @valor_energeticoJ = 37*(@grasas + @grasas_saturadas) + 17*@hidratos + 17*@azucares + 17*@proteinas + 25*@sal
    end
    
    def calcular_valor_energetico_cal()
        @valor_energeticoCal = 37*(@grasas + @grasas_saturadas) + 17*@hidratos + 17*@azucares + 17*@proteinas + 25*@sal
    end
    
end