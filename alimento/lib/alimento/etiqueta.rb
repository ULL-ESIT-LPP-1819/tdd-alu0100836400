class Etiqueta
    
    include Comparable
    
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
    
    def calcular_valor_energetico_julios()
        @valor_energeticoJ = 37*(@grasas + @grasas_saturadas) + 17*@hidratos + 17*@azucares + 17*@proteinas + 25*@sal
    end
    
    def calcular_valor_energetico_cal()
        @valor_energeticoCal = 9*(@grasas + @grasas_saturadas) + 4*@hidratos + 4*@azucares + 4*@proteinas + 6*@sal
    end
    
    def <=>(otro)
        @sal <=> otro.sal
    end
    
end