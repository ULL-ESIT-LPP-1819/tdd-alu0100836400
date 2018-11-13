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
            
        end
    end
end