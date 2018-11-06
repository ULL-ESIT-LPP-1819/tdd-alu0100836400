require "../spec/spec_helper"
require 'benchmark'
require "./lib/alimento/etiqueta.rb"

describe Etiqueta do
    before :each do
        @etiqueta = Etiqueta.new("Leche", 5, 8, 32, 12, 7, 6)
    end
    
    describe "Existe" do
        it "Nombre" do
            expect(@etiqueta.nombre).to eq("Leche")
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
            expect(@etiqueta.getNombre).to eq("Leche")
        end
        
        it "Grasas" do
            expect(@etiqueta.getGrasas).to eq(5)
        end
        
        it "Grasas saturadas" do
            expect(@etiqueta.getGrasas_saturadas).to eq(8)
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
end