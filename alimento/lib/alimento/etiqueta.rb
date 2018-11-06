class Etiqueta
    
    attr_reader :nombre, :valor_energeticoJ, :valor_energeticoCal, :grasas, :grasas_saturadas, :hidratos, :azucares, :proteinas, :sal
    
    def initialize(nombre, grasas, grasas_saturadas, hidratos, azucares, proteinas, sal)
        @nombre, @grasas, @grasas_saturadas, @hidratos, @azucares, @proteinas, @sal = 
        nombre, grasas, grasas_saturadas, hidratos, azucares, proteinas, sal
    end

end