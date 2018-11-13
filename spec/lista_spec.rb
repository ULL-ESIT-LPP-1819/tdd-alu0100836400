require "../spec/spec_helper"


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
        
	end
	describe "Lista" do
	    context "LISTA DOBLEMENTE ENLAZADA" do	
	        
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
            end
    	end
    end
end