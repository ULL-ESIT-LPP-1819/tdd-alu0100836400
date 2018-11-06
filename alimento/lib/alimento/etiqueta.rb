class Etiqueta
    
    attr_reader :nombre, :valor_energeticoJ, :valor_energeticoCal, :grasas, :grasas_saturadas, :hidratos, :azucares, :proteinas, :sal
    
    def initialize(nombre, grasas, grasas_saturadas, hidratos, azucares, proteinas, sal)
        @nombre, @grasas, @grasas_saturadas, @hidratos, @azucares, @proteinas, @sal = 
        nombre, grasas, grasas_saturadas, hidratos, azucares, proteinas, sal
    end

    def getNombre
        @nombre
    end
    
    def getGrasas
        @grasas
    end
    
    def getGrasasSaturadas
        @grasas_saturadas
    end
    
    def getHidratos
        @hidratos
    end
    
    def getAzucares
        @azucares
    end
    
    def getProteinas
        @proteinas
    end
    
    def getSal
        @sal
    end
end
