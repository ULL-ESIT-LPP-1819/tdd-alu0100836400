Nodo = Struct.new(:valor, :anterior, :siguiente)

class Lista
    
    attr_reader :cabeza, :cola
    
    def initialize()
        @cabeza = nil
        @cola = nil
    end
    
    def insertar_cabeza(dato)
        @nuevo = Nodo.new(nil, nil, nil)
        if dato.class == Nodo
            @nuevo.valor = dato.valor
        else
            @nuevo.valor = dato
        end
        
        if @cola == nil
            @cola = @nuevo
        else
            @nuevo.anterior = @cabeza
            @cabeza.siguiente = @nuevo
        end
        @cabeza = @nuevo
    end
    
    def insertar_cola(dato)
        @nuevo = Nodo.new(nil, nil, nil)
        if dato.class == Nodo
            @nuevo.valor = dato.valor
        else
            @nuevo.valor = dato
        end
        
        if @cola == nil
            @cabeza = @nuevo
        else
            @nuevo.siguiente = @cola
            @cola.anterior = @nuevo
        end
        @cola = @nuevo
    end
end