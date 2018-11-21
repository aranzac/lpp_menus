require "spec_helper"
require './lib/infonutricional.rb'

RSpec.describe Paciente do
    before :all do
        @lista = Lista.new()
        @paciente1 = Paciente.new(1, "Natalia ", "Gutiérrez  ", 36, "Mujer", "10-12-86", "Cantante", "Si",  1.60, 100.5, 47.5, 56.6, 58.2, 33.7, 80.5, 25.6, 42.3)
        @paciente2 = Paciente.new(2, "Juan Carlos", " Ozuna", 26, "Hombre", "13-03-92", "Panadero", "No",  1.65, 175.5, 73.5, 21.5, 27.5, 13.6, 52.7, 26.8, 90.1)
        @paciente3 = Paciente.new(3, "Benito", "Martínez", 24, "Hombre", "10-03-94", "Agricultor", "Si",  1.80, 164.3, 64.0, 15.0, 28.5, 75.6, 68.6, 36.5, 48.7)
        @paciente4 = Paciente.new(4, "Rebeca ", "Gomez", 24, "Mujer", "02-03-97", "Pintor", "No",  1.75, 80.5, 37.5, 69.7, 43.3, 40.0, 38.5, 60.5, 33.5)
        @paciente5 = Paciente.new(5, "José", "Balvin", 33, "Hombre", "07-05-85", "Profesor", "Si",  1.50, 60.0, 79.4, 78.5, 63.5, 19.4, 50.5, 14.4, 16.2)
        @paciente6 = Paciente.new(6, "Carolina", "Navarro", 27, "Mujer", "14-02-91", "Actor", "No",  1.65, 74.0, 76.5, 65.6, 12.6, 31.4, 77.2, 18.6, 55.5)
    end 
    
    describe "Expectativas" do
        
        it "Creación de la lista vacía" do 
            expect(@lista.empty).to eq(true)
            expect(@lista.head.value).to eq(nil)
            expect(@lista.tail.value).to eq(nil)
            expect(@lista.size).to eq(0)
        end
        
        it "Clase de los objetos" do
          expect(@paciente1.class).to eq(Paciente)
          expect(@paciente1.instance_of? Paciente).to eq(true)
          expect(@paciente2.class).to eq(Paciente)
          expect(@paciente2.instance_of? Paciente).to eq(true)
          expect(@paciente3.class).to eq(Paciente)
          expect(@paciente3.instance_of? Paciente).to eq(true)
          expect(@paciente4.class).to eq(Paciente)
          expect(@paciente4.instance_of? Paciente).to eq(true)
          expect(@paciente5.class).to eq(Paciente)
          expect(@paciente5.instance_of? Paciente).to eq(true)
          expect(@paciente6.class).to eq(Paciente)
          expect(@paciente6.instance_of? Paciente).to eq(true)
        end
        
        it "Jerarquía de los objetos (is_a)" do
            expect(@paciente1.is_a? Individuo).to eq(true)
            expect(@paciente1.is_a? Paciente).to eq(true)
            expect(@paciente2.is_a? Individuo).to eq(true)
            expect(@paciente2.is_a? Paciente).to eq(true)
            expect(@paciente3.is_a? Individuo).to eq(true)
            expect(@paciente3.is_a? Paciente).to eq(true)
            expect(@paciente4.is_a? Individuo).to eq(true)
            expect(@paciente4.is_a? Paciente).to eq(true)
            expect(@paciente5.is_a? Individuo).to eq(true)
            expect(@paciente5.is_a? Paciente).to eq(true)
            expect(@paciente6.is_a? Individuo).to eq(true)
            expect(@paciente6.is_a? Paciente).to eq(true)
        end
         
        it "Jerarquía de los objetos (kind_of)" do
            expect(@paciente1.kind_of? Individuo).to eq(true)
            expect(@paciente1.kind_of? Paciente).to eq(true)
            expect(@paciente1.kind_of? BasicObject).to eq(true)
            expect(@paciente1.kind_of? Object).to eq(true)
            
            expect(@paciente2.kind_of? Individuo).to eq(true)
            expect(@paciente2.kind_of? Paciente).to eq(true)
            expect(@paciente2.kind_of? BasicObject).to eq(true)
            expect(@paciente2.kind_of? Object).to eq(true)
            
            expect(@paciente3.kind_of? Individuo).to eq(true)
            expect(@paciente3.kind_of? Paciente).to eq(true)
            expect(@paciente3.kind_of? BasicObject).to eq(true)
            expect(@paciente3.kind_of? Object).to eq(true)
            
            expect(@paciente4.kind_of? Individuo).to eq(true)
            expect(@paciente4.kind_of? Paciente).to eq(true)
            expect(@paciente4.kind_of? BasicObject).to eq(true)
            expect(@paciente4.kind_of? Object).to eq(true)
            
            expect(@paciente5.kind_of? Individuo).to eq(true)
            expect(@paciente5.kind_of? Paciente).to eq(true)
            expect(@paciente5.kind_of? BasicObject).to eq(true)
            expect(@paciente5.kind_of? Object).to eq(true)
            
            expect(@paciente6.kind_of? Individuo).to eq(true)
            expect(@paciente6.kind_of? Paciente).to eq(true)
            expect(@paciente6.kind_of? BasicObject).to eq(true)
            expect(@paciente6.kind_of? Object).to eq(true)
        end

        it "Jerarquía de los objetos (be_a_kind_of)" do
            expect(@paciente1).to be_a_kind_of(Object)
            expect(@paciente1).to be_a_kind_of(BasicObject)
            expect(@paciente2).to be_a_kind_of(Object)
            expect(@paciente2).to be_a_kind_of(BasicObject)
            expect(@paciente3).to be_a_kind_of(Object)
            expect(@paciente3).to be_a_kind_of(BasicObject)
            expect(@paciente4).to be_a_kind_of(Object)
            expect(@paciente4).to be_a_kind_of(BasicObject)
            expect(@paciente5).to be_a_kind_of(Object)
            expect(@paciente5).to be_a_kind_of(BasicObject)
            expect(@paciente6).to be_a_kind_of(Object)
            expect(@paciente6).to be_a_kind_of(BasicObject)
        end
        
        # it "Formateo de la información del individuo (to_s)" do
        #     # expect(@paciente1.to_s).to eq("[Id=#{@paciete1.id}]")
        #     expect(@paciente1.to_s).to eq("ID\Nombre\tApellido\tEdad\tSexo\tOcupación\tFumador\tF. Nacimiento\tTalla\tPeso\tCintura\tCadera\tBicipital\tTricipital\tSubescapular\tSuprailiaco\tBrazo\n
        #         \t1\tNatalia\tGutiérrez\t36\tMujer\t10-12-86\tCantante\tSi\t1.60\t50.5\t47.5\t56.6\t58.2\t33.7\t80.5\t25.6\t42.3")
        # end
        
        it "Insertar elementos en la lista" do
            @lista.insertar_tail(@paciente1)
            expect(@lista.size).to eq(1)
            @lista.insertar_tail(@paciente2)
            expect(@lista.size).to eq(2)
            @lista.insertar_tail(@paciente3)
            expect(@lista.size).to eq(3)
            @lista.insertar_tail(@paciente4)
            expect(@lista.size).to eq(4)
            @lista.insertar_tail(@paciente5)
            expect(@lista.size).to eq(5)
            @lista.insertar_tail(@paciente6)
            expect(@lista.size).to eq(6)
        end
        
        it "El paciente se encuentra en el tratamiento para la obesidad" do
            @elemento1 = @lista.extraer_head
            @elemento2 = @lista.extraer_head
            @elemento3 = @lista.extraer_head
            expect(@elemento1.imc).to be >= 25.0
            expect(@elemento2.imc).to be >= 25.0
            expect(@elemento3.imc).to be >= 25.0
        end
        
        it "Los pacientes no tienen obesidad" do
            @elemento4 = @lista.extraer_head
            @elemento5 = @lista.extraer_head
            @elemento6 = @lista.extraer_head
            expect(@elemento4.imc).to be > 25.0
            expect(@elemento5.imc).to be > 25.0
            expect(@elemento6.imc).to be > 25.0
        end
        
    end
end