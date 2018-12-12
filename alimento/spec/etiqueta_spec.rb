require "./spec/spec_helper"

describe Etiqueta do
    before :each do
        @etiqueta = Etiqueta.new("Leche normal", 5, 8, 32, 12, 7, 6)
        @etiqueta2 = Etiqueta.new("Leche con mucha sal", 5, 8, 32, 12, 7, 60)
        @etiqueta3 = Etiqueta.new("Leche sin sal", 5, 8, 32, 12, 7, 0)
        @etiqueta4 = Etiqueta.new("Leche 0% sal", 51, 81, 321, 121, 71, 0)
    end
    
    describe "Existe" do
        it "Nombre" do
            expect(@etiqueta.nombre).to eq("Leche normal")
        end
        
        it "Grasas" do
            expect(@etiqueta.grasas).to eq(5)
        end
        
        it "Grasas saturadas" do
            expect(@etiqueta.grasas_saturadas).to eq(8)
        end
        
        it "Hidratos" do
            expect(@etiqueta.hidratos).to eq(32)
        end
        
        it "Azúcares" do
            expect(@etiqueta.azucares).to eq(12)
        end
        
        it "Proteínas" do
            expect(@etiqueta.proteinas).to eq(7)
        end
        
        it "Sal" do
            expect(@etiqueta.sal).to eq(6)
        end
    end
    
    describe "Existe método para obtener" do
        it "Nombre" do
            expect(@etiqueta.getNombre).to eq("Leche normal")
        end
        
        it "Grasas" do
            expect(@etiqueta.getGrasas).to eq(5)
        end
        
        it "Grasas saturadas" do
            expect(@etiqueta.getGrasasSaturadas).to eq(8)
        end
        
        it "Hidratos" do
            expect(@etiqueta.getHidratos).to eq(32)
        end
        
        it "Azúcares" do
            expect(@etiqueta.getAzucares).to eq(12)
        end
        
        it "Proteínas" do
            expect(@etiqueta.getProteinas).to eq(7)
        end
        
        it "Sal" do
            expect(@etiqueta.getSal).to eq(6)
        end
    end
    
    describe "Existe método para calcular" do
        it "Valor energético en KJ" do
            expect(@etiqueta.calcular_valor_energetico_julios).to eq(1498)
        end
        
        it "Valor energético en KCal" do
            expect(@etiqueta.calcular_valor_energetico_cal).to eq(357)
        end
    end
    
    describe "Probando Comparable"do
        it "Mayor que" do
            expect(@etiqueta2 > @etiqueta).to eq(true)
            expect(@etiqueta > @etiqueta3).to eq(true)
            expect(@etiqueta2 > @etiqueta3).to eq(true)
        end
        
        it "Menor que" do
            expect(@etiqueta < @etiqueta2).to eq(true)
            expect(@etiqueta3 < @etiqueta).to eq(true)
            expect(@etiqueta3 < @etiqueta2).to eq(true)
        end
        
        it "Igual" do
            expect(@etiqueta3 == @etiqueta4).to eq(true)
        end
        
        # it "Between" do
        #     expect(@etiqueta.between?(etiqueta3, etiqueta2)).to eq(true)
        # end
    end
end