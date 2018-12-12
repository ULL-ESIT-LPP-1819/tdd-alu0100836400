class Menu
    
    attr_reader :listaComidas, :total
    
    def initialize(listaComidas)
        @listaComidas = listaComidas
        cantidad_calorica
    end
    
    def cantidad_calorica
        @total = 0
        @listaComidas.each do|i|
            @total = @total + i.calcular_valor_energetico_cal
        end
    end
    
end