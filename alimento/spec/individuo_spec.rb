require "./spec/spec_helper"


RSpec.describe Individuo do
	before :all do
	    @individuo = Individuo.new(26, 1, 74, 1.89)
	    @paciente = Paciente.new(26, 1, 74, 1.89)
	    @tratamientoObesidad = TratamientoObesidad.new(26, 1, 74, 1.89)
	    @tratamientoObesidad2 = TratamientoObesidad.new(26, 1, 100, 1.50)
	    @tratamientoObesidad3 = TratamientoObesidad.new(26, 1, 83, 1.95)
	    @tratamientoObesidad4 = TratamientoObesidad.new(26, 1, 61, 1.44)
	    @tratamientoObesidad5 = TratamientoObesidad.new(26, 1, 93, 2.10)
	    @listaPacientes = Lista.new()
	end
	describe "Individuo común" do
	    context "Existen" do
	        it "Existe la clase Lista" do
    		    expect(@individuo.class).to eq(Individuo)
    		    expect(@individuo).to have_attributes(:edad => 26, :sexo =>1, :peso =>74, :altura =>1.89)
    		    expect(@individuo).to be_an_instance_of(Individuo)
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
    end
end