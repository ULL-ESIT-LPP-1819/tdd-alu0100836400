Nodo = Struct.new(:valor, :anterior, :siguiente)

class Lista
    
    include Enumerable
    
    attr_reader :cabeza, :cola, :size
    
    def initialize()
        @cabeza = nil
        @cola = nil
        @size = 0
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
        @size += 1
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
        @size += 1
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
        @size -= 1
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
        @size -= 1
    end
    
    def empty
        if @cola == nil
            return true
        else
            return false
        end
    end
    
    def [](index)
        @aux = cola
        for i in 1..index
            if @aux.siguiente != nil
                @aux = @aux.siguiente
            else
                i = index
            end
        end
        @aux #.valor?
    end
    
    def each
        if @cola != nil
            @aux = @cola
            while @aux != nil
                yield @aux.valor
                @aux = @aux.siguiente
            end
        end
    end
    
    def clear
        @cabeza = nil
        @cola = nil
        @size = 0
    end
            
    def to_s()
        if @cola == nil
            "Empty"
        else
            @salida = "["
            @aux = @cola
            begin
                @salida += "#{@aux.valor},"
                @aux = @aux.siguiente
            end while @aux != nil
            @salida += "]"
        end
    end
    
end

#la cabeza no tiene siguiente

    # def each(&block)
    #     if block_given?
    #         block.call(@cabeza)
    #         @cola.each(&block) if @cola
    #     else
    #         to_enum(:each)
    #     end
    # end