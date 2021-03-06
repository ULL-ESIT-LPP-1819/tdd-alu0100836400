require "./spec/spec_helper"


RSpec.describe Individuo do
	before :all do
	    @individuo = Individuo.new(26, 1, 74, 1.89)
	    @individuo2 = Individuo.new(15, 0, 80, 1.90)
	    @individuo3 = Individuo.new(36, 0, 63, 1.88)
	    @individuo4 = Individuo.new(40, 1, 79, 1.88)
	    @paciente = Paciente.new(26, 1, 74, 1.89)
	    @tratamientoObesidad = TratamientoObesidad.new(26, 1, 74, 1.89, 0.0)
	    @tratamientoObesidad2 = TratamientoObesidad.new(26, 1, 100, 1.50, 0.12) #0.0 0.12 0.27 0.54
	    @tratamientoObesidad3 = TratamientoObesidad.new(26, 1, 83, 1.95, 0.27)
	    @tratamientoObesidad4 = TratamientoObesidad.new(26, 1, 61, 1.44, 0.54)
	    @tratamientoObesidad5 = TratamientoObesidad.new(26, 1, 93, 2.10, 0.54)
	    @listaPacientes = Lista.new()
	    
	    @listaEtiquetas = Lista.new()
        @etiqueta = Etiqueta.new("Yatekomo", 10, 4.7, 28, 3.7, 4.2, 1.2)
        @etiqueta2 = Etiqueta.new("ColaCao", 3.6, 2.4, 21, 20, 7.8, 0.27)
        @etiqueta3 = Etiqueta.new("Bimbo", 2.6, 0.7, 41, 3.3, 9.3, 0.91)
        @etiqueta4 = Etiqueta.new("Turrón", 28, 12, 56, 45, 8.4, 0.7)
        @etiqueta5 = Etiqueta.new("Croissant", 30, 12, 47, 23, 7, 0.68)
        
        @listaEtiquetas.insertar_cabeza(@etiqueta)
        @listaEtiquetas.insertar_cabeza(@etiqueta2)
        @listaEtiquetas.insertar_cabeza(@etiqueta3)
        @listaEtiquetas.insertar_cabeza(@etiqueta4)
        @listaEtiquetas.insertar_cabeza(@etiqueta5)
        @menu = Menu.new(@listaEtiquetas)
        @tratamientoObesidad.asignar_menu(@menu)
        @tratamientoObesidad2.asignar_menu(@menu)
        @tratamientoObesidad3.asignar_menu(@menu)
        @tratamientoObesidad4.asignar_menu(@menu)
        @tratamientoObesidad5.asignar_menu(@menu)
	end
	describe "Individuo común" do
	    context "Existen" do
	        it "Existe la clase Lista" do
    		    expect(@individuo.class).to eq(Individuo)
    		    expect(@individuo).to have_attributes(:edad => 26, :sexo =>1, :peso =>74, :altura =>1.89)
    		    expect(@individuo).to be_an_instance_of(Individuo)
    		end
        end
        
        describe "Probando Comparable"do
            it "Mayor que" do
                expect(@individuo2 > @individuo).to eq(true)
                expect(@individuo > @individuo3).to eq(true)
            end
            
            it "Menor que" do
                expect(@individuo < @individuo2).to eq(true)
                expect(@individuo3 < @individuo).to eq(true)
            end
            
            it "Igual" do
                expect(@individuo3 == @individuo4).to eq(true)
            end
        end
    end
    
    describe "Paciente" do
        context "Existen" do
            it "Existe paciente" do
                expect(@paciente.class).to eq(Paciente)
                expect(@paciente).to have_attributes(:edad => 26, :sexo =>1, :peso =>74, :altura =>1.89)
                expect(@paciente).to be_an_instance_of(Paciente)
            end
        end
        
        context "Herencias" do
            it "Paciente es un BasicObject" do
                expect(@paciente).to be_a_kind_of(BasicObject)
            end
            it "Paciente es un Object" do
                expect(@paciente).to be_a_kind_of(Object)
            end
            it "Paciente es un Individuo" do
                expect(@paciente).to be_a_kind_of(Individuo)
            end
            it "Paciente es un Paciente" do
                expect(@paciente).to be_a_kind_of(Paciente)
            end
        end
    end
    
    describe "TratamientoObesidad" do
        context "Existen" do
            it "Existe TratamientoObesidad" do
                expect(@tratamientoObesidad.class).to eq(TratamientoObesidad)
                expect(@tratamientoObesidad).to have_attributes(:edad => 26, :sexo =>1, :peso =>74, :altura =>1.89)
                expect(@tratamientoObesidad).to be_an_instance_of(TratamientoObesidad)
            end
        end
        
        context "Herencias" do
            it "TratamientoObesidad es un BasicObject" do
                expect(@tratamientoObesidad).to be_a_kind_of(BasicObject)
            end
            it "TratamientoObesidad es un Object" do
                expect(@tratamientoObesidad).to be_a_kind_of(Object)
            end
            it "TratamientoObesidad es un Individuo" do
                expect(@tratamientoObesidad).to be_a_kind_of(Individuo)
            end
            it "TratamientoObesidad es un Paciente" do
                expect(@tratamientoObesidad).to be_a_kind_of(Paciente)
            end
            it "TratamientoObesidad es un TratamientoObesidad" do
                expect(@tratamientoObesidad).to be_a_kind_of(TratamientoObesidad)
            end
        end
        
        context "Métodos" do
            it "IMC" do
                expect(@tratamientoObesidad.calcularIMC).to eq(20.72)
            end
            
            it "Grasa" do
                expect(@tratamientoObesidad.calcularGrasa).to eq(14.64)
            end
        end
        
        context "Lista de pacientes en tratamiento de obesidad" do
            it "Comparando pacientes por IMC" do
                @listaPacientes.insertar_cabeza(@tratamientoObesidad)
                @listaPacientes.insertar_cabeza(@tratamientoObesidad2)
                @listaPacientes.insertar_cabeza(@tratamientoObesidad3)
                @listaPacientes.insertar_cabeza(@tratamientoObesidad4)
                @listaPacientes.insertar_cabeza(@tratamientoObesidad5)
                
                expect(@listaPacientes.cabeza.valor < @listaPacientes.cabeza.anterior.valor).to eq(true)
                expect(@listaPacientes.cola.valor < @listaPacientes.cola.siguiente.valor).to eq(true)
                expect(@listaPacientes.cabeza.valor < @listaPacientes.cabeza.anterior.anterior.valor).to eq(true)
                expect(@listaPacientes.cola.siguiente.valor > @listaPacientes.cola.siguiente.siguiente.valor).to eq(true)
            end
        end
        
        context "Valorar menú" do
            it "Paciente 1" do
                expect(@tratamientoObesidad.alimentacion_suficiente).to eq("Suficiente")
            end
            
            it "Paciente 2" do
                expect(@tratamientoObesidad2.alimentacion_suficiente).to eq("Suficiente")
            end
            
            it "Paciente 3" do
                expect(@tratamientoObesidad3.alimentacion_suficiente).to eq("Suficiente")
            end
            
            it "Paciente 4" do
                expect(@tratamientoObesidad4.alimentacion_suficiente).to eq("Suficiente")
            end
            
            it "Paciente 5" do
                @tratamientoObesidad5.menu.listaComidas.extraer_cabeza
                @tratamientoObesidad5.menu.listaComidas.extraer_cabeza
                @tratamientoObesidad5.menu.cantidad_calorica
                expect(@tratamientoObesidad5.alimentacion_suficiente).to eq("No suficiente")
            end
        end
    end
end