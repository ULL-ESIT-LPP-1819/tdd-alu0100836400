require "./spec/spec_helper"


describe Lista do
	before :all do
	 	@lista = Lista.new()
        @nodo = Nodo.new(4,nil,nil)
        @nodo2 = Nodo.new(8,nil,nil)
        @nodo3 = Nodo.new(12,nil,nil)
        
        @listaEtiquetas = Lista.new()
        @etiqueta = Etiqueta.new("Yatekomo", 10, 4.7, 28, 3.7, 4.2, 1.2)
        @etiqueta2 = Etiqueta.new("ColaCao", 3.6, 2.4, 21, 20, 7.8, 0.27)
        @etiqueta3 = Etiqueta.new("Bimbo", 2.6, 0.7, 41, 3.3, 9.3, 0.91)
        @etiqueta4 = Etiqueta.new("Turrón", 28, 12, 56, 45, 8.4, 0.7)
        @etiqueta5 = Etiqueta.new("Croissant", 30, 12, 47, 23, 7, 0.68)
        
        @listaIndividuos = Lista.new()
        @individuo = Individuo.new(26, 0, 75, 1.89)
        @individuo2 = Individuo.new(26, 1, 80, 1.70)
        @individuo3 = Individuo.new(24, 0, 90, 1.59)
        @listaIndividuos.insertar_cabeza(@individuo)
        @listaIndividuos.insertar_cabeza(@individuo2)
        @listaIndividuos.insertar_cabeza(@individuo3)
        
	end
	describe "LISTA DOBLEMENTE ENLAZADA" do
	    
	    context "Existen" do
	        it "Existe la clase Lista" do
    		    expect(@lista.class).to eq(Lista)
    		end
    		
    		it "Existe el nodo para la lista" do
                expect(@nodo.class).to eq(Nodo)
            end

    		it "Existe un struct nodo con anterior y siguiente" do
    		    expect(@nodo).to have_attributes(:valor => 4, :siguiente =>nil, :anterior =>nil)
    		end
            
            it "Existe un método para insertar por la cabeza" do
    		    expect(@lista).to respond_to :insertar_cabeza
    		end
    		
    		it "Existe un método para insertar por la cola" do
    		    expect(@lista).to respond_to :insertar_cola
    		end
    		
    		it "Existe un método para extraer por la cabeza" do
    		    expect(@lista).to respond_to :extraer_cabeza
    		end
    		
    		it "Existe un método para extraer por la cola" do
    		    expect(@lista).to respond_to :extraer_cola
    		end
	    end
	    
	    context "Lista de enteros" do
	        it "Lista inicialmente vacía" do
	            expect(@lista.empty).to eq(true)
	        end
	        
		    it "Se puede insertar un elemento en la lista" do
           	    @lista.insertar_cabeza(@nodo)
            	expect(@lista.cabeza).to eq(@nodo)
        	end
        	
    		it "Se puede insertar varios nodos en la lista" do
        		@lista.insertar_cabeza(@nodo2)
        		@lista.insertar_cabeza(@nodo3)
        		expect(@lista.cabeza.valor).to eq(@nodo3.valor)
    		end
    		
    		it "Existe un método para extraer por la cabeza" do
    	    	expect(@lista).to respond_to :extraer_cabeza
    		end
    		
    		it "Se puede extraer un elemento de la lista" do
        		@lista.extraer_cabeza()
        		expect(@lista.cabeza.valor).to eq(@nodo2.valor)
    		end
		
		    it "Existe un método para extraer por el final" do
                expect(@lista).to respond_to :extraer_cola
            end

            it "Se puede extraer un elemento de lista" do
                @lista.extraer_cola()
                expect(@lista.cabeza).to eq(@nodo2)
            end
            
            it "Se puede conocer el tamaño" do
                expect(@lista.size).to eq(1)
            end
    	end
    	
    	context "Lista de etiquetas" do
    	    it "Se puede insertar etiqueta en lista" do
                @listaEtiquetas.insertar_cabeza(@etiqueta)
                expect(@listaEtiquetas.cabeza.valor).to eq(@etiqueta)
            end
            
            it "Se pueden insertar varias etiquetas en la lista" do
                @listaEtiquetas.insertar_cabeza(@etiqueta2)
                @listaEtiquetas.insertar_cabeza(@etiqueta3)
                @listaEtiquetas.insertar_cabeza(@etiqueta4)
                @listaEtiquetas.insertar_cabeza(@etiqueta5)
                expect(@listaEtiquetas.cabeza.valor).to eq(@etiqueta5)
                expect(@listaEtiquetas.cabeza.anterior.valor).to eq(@etiqueta4)
                expect(@listaEtiquetas.cabeza.anterior.anterior.valor).to eq(@etiqueta3)
                expect(@listaEtiquetas.cabeza.anterior.anterior.anterior.valor).to eq(@etiqueta2)
                expect(@listaEtiquetas.cola.valor).to eq(@etiqueta)
            end
    	end
    	
    	context "Enumerable - Etiquetas" do
    	    it "Operador []" do
    	        expect(@listaEtiquetas[0]).to eq(@listaEtiquetas.cola)
    	        expect(@listaEtiquetas[1]).to eq(@listaEtiquetas.cola.siguiente)
    	        expect(@listaEtiquetas[2]).to eq(@listaEtiquetas.cola.siguiente.siguiente)
    	        expect(@listaEtiquetas[3]).to eq(@listaEtiquetas.cabeza.anterior)
    	        expect(@listaEtiquetas[4]).to eq(@listaEtiquetas.cabeza)
    	    end
    	    
    	    it "Métodos max, min" do
    	        expect(@listaEtiquetas.max).to eq(@etiqueta)
    	        expect(@listaEtiquetas.min).to eq(@etiqueta2)
    	    end
    	   
    	    it "Método sort" do
                expect(@listaEtiquetas.sort).to eq([@etiqueta2, @etiqueta5, @etiqueta4, @etiqueta3, @etiqueta])
    	    end
    	    
    	    it "Método select" do
    	        expect(@listaEtiquetas.select{|i| i.proteinas == 8.4}).to eq([@etiqueta4])
    	        expect(@listaEtiquetas.select{|i| i.nombre == "Bimbo"}).to eq([@etiqueta3])
    	        expect(@listaEtiquetas.select{|i| i.hidratos == 21}).to eq([@etiqueta2])
    	    end
    	    
    	    it "Método collect" do
    	        expect(@listaEtiquetas.collect{|i| @etiqueta}).to eq([@etiqueta, @etiqueta, @etiqueta, @etiqueta, @etiqueta])
    	    end
    	end
    	
    	context "Enumerable - Individuos" do
    	    it "Operador []" do
    	        expect(@listaIndividuos[0]).to eq(@listaIndividuos.cola)
    	        expect(@listaIndividuos[1]).to eq(@listaIndividuos.cola.siguiente)
    	        expect(@listaIndividuos[2]).to eq(@listaIndividuos.cabeza)
    	    end
    	    
    	    it "Métodos max, min" do
    	        expect(@listaIndividuos.max).to eq(@individuo)
    	        expect(@listaIndividuos.min).to eq(@individuo3)
    	    end
    	   
    	    it "Método sort" do
                expect(@listaIndividuos.sort).to eq([@individuo3, @individuo2, @individuo])
    	    end
    	    
    	    it "Método select" do
    	        expect(@listaIndividuos.select{|i| i.sexo == 0}).to eq([@individuo, @individuo3])
    	        expect(@listaIndividuos.select{|i| i.altura > 1.60}).to eq([@individuo, @individuo2])
    	        expect(@listaIndividuos.select{|i| i.peso == 75}).to eq([@individuo])
    	    end
    	    
    	    it "Método collect" do
    	        expect(@listaIndividuos.collect{|i| @individuo}).to eq([@individuo, @individuo, @individuo])
    	    end
    	end
    end
end