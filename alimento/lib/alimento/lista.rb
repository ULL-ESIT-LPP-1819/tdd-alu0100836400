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
    
    def extraer_cabeza
        if @cabeza == nil
            'Lista vacia'
        else
            @aux = @cabeza
            @cabeza = @aux.anterior
            @cabeza.siguiente = nil
            @aux
        end
    end
    
    def extraer_cola
        if @cola == nil
            'Lista vacia'
        else
            @aux = @cola
            @cola = @aux.siguiente
            @cola.anterior = nil
            @aux
        end
    end
    
    def to_s()
        if @cola == nil
            "Empty"
        else
            @aux = @cola
            begin
                puts @aux.valor + " "
                @aux = @aux.siguiente
            end while @aux != nil
        end
    end
    
end

#la cabeza no tiene siguiente