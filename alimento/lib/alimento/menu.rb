class Menu
    
    include Comparable
    
    attr_reader :listaComidas, :total
    
    def initialize(listaComidas)
        @listaComidas = listaComidas
        cantidad_calorica   #no rula porque...
    end
    
    def cantidad_calorica
        @total = 0
        @listaComidas.each do|i|
            @total = @total + i.calcular_valor_energetico_cal #...dice que no existe esta funcion
        end
    end
    
    def <=>(otro)
        @total <=> otro.total
    end
    
    def to_s()
        "(#{@listaComidas}){#{@total}}"
    end
    
end