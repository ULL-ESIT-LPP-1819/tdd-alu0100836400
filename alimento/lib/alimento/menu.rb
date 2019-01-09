class Menu
    
    include Comparable
    
    attr_reader :listaComidas, :total, :dia, :desayuno_array, :almuerzo_array, :cena_array
    
    #def initialize(listaComidas, &block)
    def initialize(dia, &block)
        @dia = dia
        @desayuno_array = []
        @almuerzo_array = []
        @cena_array = []
        
        @listaComidas = listaComidas
        #cantidad_calorica   #no rula porque...
        if block_given?  
            if block.arity == 1
                yield self
            else
                instance_eval(&block) 
            end
        end
    end
    
    def cantidad_calorica
        @total = 0
        @listaComidas.each do|i|
            @total = @total + i.calcular_valor_energetico_cal #...dice que no existe esta funcion
        end
    end

    def desayuno(options = {})
        desayuno = ""
        desayuno << " (#{options[:descripcion]})" if options[:descripcion]
        desayuno << " (#{options[:porcion]})" if options[:porcion]
        desayuno << " (#{options[:gramos]})" if options[:gramos]
        desayuno << " (#{options[:grasa]})" if options[:grasa]
        desayuno << " (#{options[:carbohidratos]})" if options[:carbohidratos]
        desayuno << " (#{options[:proteinas]})" if options[:proteinas]
        desayuno << " (#{options[:fibra]})" if options[:fibra]
        desayuno << " (#{options[:sal]})" if options[:sal]
        @desayuno_array << desayuno
    end
    
    def almuerzo(options = {})
        almuerzo = ""
        almuerzo << " (#{options[:descripcion]})" if options[:descripcion]
        almuerzo << " (#{options[:porcion]})" if options[:porcion]
        almuerzo << " (#{options[:gramos]})" if options[:gramos]
        almuerzo << " (#{options[:grasa]})" if options[:grasa]
        almuerzo << " (#{options[:carbohidratos]})" if options[:carbohidratos]
        almuerzo << " (#{options[:proteinas]})" if options[:proteinas]
        almuerzo << " (#{options[:fibra]})" if options[:fibra]
        almuerzo << " (#{options[:sal]})" if options[:sal]
        @almuerzo_array << almuerzo
    end
    
    def cena(options = {})
        cena = ""
        cena << " (#{options[:descripcion]})" if options[:descripcion]
        cena << " (#{options[:porcion]})" if options[:porcion]
        cena << " (#{options[:gramos]})" if options[:gramos]
        cena << " (#{options[:grasa]})" if options[:grasa]
        cena << " (#{options[:carbohidratos]})" if options[:carbohidratos]
        cena << " (#{options[:proteinas]})" if options[:proteinas]
        cena << " (#{options[:fibra]})" if options[:fibra]
        cena << " (#{options[:sal]})" if options[:sal]
        @cena_array << cena
    end
    
    def <=>(otro)
        @total <=> otro.total
    end
    
    def to_s()
        output = "#{@dia}                                  Composición nutricional"
        output << "\n========================================================================================="
        output << "\n                       Porción\t Gramos\t Grasas\t Carbohidratos\t Proteínas\t Fibra\t Sal\n"
   
        output << "Desayuno\n"
        @desayuno_array.each_with_index do |desayuno, index|
            output << "#{desayuno}\n"
        end
        
        output << "Almuerzo\n"
        @almuerzo_array.each_with_index do |almuerzo, index|
            output << "#{almuerzo}\n"
        end
        
        output << "Cena\n"
        @cena_array.each_with_index do |cena, index|
            output << "#{cena}\n"
        end
        
        output
    end
    
end