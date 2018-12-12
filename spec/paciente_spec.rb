require "spec_helper"
require './lib/infonutricional.rb'

RSpec.describe Paciente do
    before :all do
        @lista = Lista.new()
        @paciente1 = Paciente.new(1, "Natalia", "Gutierrez", 36, "Mujer", "10-12-86", "Cantante", "Si",  1.6, 100.5, 47.5, 56.6, 58.2, 33.7, 80.5, 25.6, 42.3,0)
        @paciente2 = Paciente.new(2, "Juan Carlos", "Ozuna", 26, "Hombre", "13-03-92", "Panadero", "No",  1.65, 175.5, 73.5, 21.5, 27.5, 13.6, 52.7, 26.8, 90.1,0.12)
        @paciente3 = Paciente.new(3, "Benito", "Martínez", 24, "Hombre", "10-03-94", "Agricultor", "Si",  1.80, 164.3, 64.0, 15.0, 28.5, 75.6, 68.6, 36.5, 48.7,0.27)
        @paciente4 = Paciente.new(4, "Rebeca ", "Gomez", 24, "Mujer", "02-03-97", "Pintor", "No",  1.75, 80.5, 37.5, 69.7, 43.3, 40.0, 38.5, 60.5, 33.5,0.54)
        @paciente5 = Paciente.new(5, "José", "Balvin", 33, "Hombre", "07-05-85", "Profesor", "Si",  1.50, 60.0, 79.4, 78.5, 63.5, 19.4, 50.5, 14.4, 16.2,0)
        @paciente6 = Paciente.new(6, "Carolina", "Navarro", 27, "Mujer", "14-02-91", "Actor", "No",  1.65, 74.0, 76.5, 65.6, 12.6, 31.4, 77.2, 18.6, 55.5,0.12)
    end 
    
    describe "Paciente" do
        
        it "Clase de los objetos" do
          expect(@paciente1.class).to eq(Paciente)
          expect(@paciente1.instance_of? Paciente).to eq(true)
          expect(@paciente1).to respond_to(:id, :nombre, :apellido, :edad, :sexo, :fecha, :ocupacion, :fumador,:talla, :peso , :cintura, :cadera, :bicipital, :tricipital, :subescapular, :suprailiaco, :brazo,)
          expect(@paciente1).to respond_to('imc')
          expect(@paciente1).to respond_to('to_s')
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
        
        it "Formateo de la información del individuo (to_s)" do
            expect(@paciente1.to_s).to eq("\tID\tNombre\tApellido\tEdad\tSexo\tFecha\tOcupacion\tFumador\n1\tNatalia\tGutierrez\t36\tMujer\t10-12-86\tCantante\tSi\t\nTalla\tPeso\tCintura\tCadera\tBicipital\tTricipital\tSubescapular\tSuprailiaco\tBrazo\n1.6\t100.5\t47.5\t56.6\t58.2\t33.7\t80.5\t25.6\t42.3\n")
        end
        
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
    
    describe "Listas" do
        before :all do
            @lista = Lista.new()
        end 
            
        it "Creación de la lista vacía" do 
            expect(@lista.empty).to eq(true)
            expect(@lista.head.value).to eq(nil)
            expect(@lista.tail.value).to eq(nil)
            expect(@lista.size).to eq(0)
        end        
        
        it "Clase de las listas" do
            expect(@lista.class).to eq(Lista)
            expect(@lista.instance_of? Lista).to eq(true)
            expect(@lista).to respond_to(:head, :tail, :size)
            expect(@lista).to respond_to('insertar_tail')
            expect(@lista).to respond_to('extraer_head')
            expect(@lista).to respond_to('empty')
        end
        
        it "Jerarquía de los objetos (is_a)" do
            expect(@lista.is_a? Lista).to eq(true)
        end
        
        it "Jerarquía de los objetos (kind_of)" do
            expect(@lista.kind_of? Lista).to eq(true)
            expect(@lista.kind_of? BasicObject).to eq(true)
            expect(@lista.kind_of? Object).to eq(true)
        end
    end
    
    describe "Etiquetas" do
        before :each do
            @crema_Chocolate = Etiqueta.new("Crema de chocolate", 30.9,10.6,57.5,56.3,6.3,0.107, 13.3,15)
        end 
        
        it "Clase de las etiquetas" do
            expect(@crema_Chocolate.class).to eq(Etiqueta)
            expect(@crema_Chocolate.instance_of? Etiqueta).to eq(true)
            expect(@crema_Chocolate).to respond_to(:nombre, :valorenergetico, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :tam_porcion)
            expect(@crema_Chocolate).to respond_to('get_valor_energetico_KJ')
            expect(@crema_Chocolate).to respond_to('get_valor_energetico_Kcal')
            expect(@crema_Chocolate).to respond_to('get_IR')
            expect(@crema_Chocolate).to respond_to('to_s')
        end
        
        it "Jerarquía de los objetos (is_a)" do
            expect(@crema_Chocolate.is_a? Etiqueta).to eq(true)
        end
        
        it "Jerarquía de los objetos (kind_of)" do
            expect(@crema_Chocolate.kind_of? Etiqueta).to eq(true)
            expect(@crema_Chocolate.kind_of? BasicObject).to eq(true)
            expect(@crema_Chocolate.kind_of? Object).to eq(true)
        end
    end    
    
    describe "Métodos de Menús Dietéticos" do
        it "Peso teórico ideal" do
            # (talla − 150) × 0,75 + 50
            expect(@paciente1.peso_teorico_ideal).to eq(57.5)
            expect(@paciente2.peso_teorico_ideal).to eq(61.25)
            expect(@paciente3.peso_teorico_ideal).to eq(72.5)
            expect(@paciente4.peso_teorico_ideal).to eq(68.75)
            expect(@paciente5.peso_teorico_ideal).to eq(50)
            expect(@paciente6.peso_teorico_ideal).to eq(61.25)
        end
        
        it "Gasto energético basal" do
            # gasto energetico basal
            # (10 × peso) + (6,25 × talla) − (5 × edad) − 161
            expect(@paciente1.gasto_energetico).to eq(1664)
            expect(@paciente2.gasto_energetico).to eq(2661.3)
            expect(@paciente3.gasto_energetico).to eq(2653)
            expect(@paciente4.gasto_energetico).to eq(1617.8)
            expect(@paciente5.gasto_energetico).to eq(1377.5)
            expect(@paciente6.gasto_energetico).to eq(1475.3)
        end
        
        it "Efecto termógeno de los alimentos" do
            # efecto termogeno = gasto energetico basal × 0,10
            expect(@paciente1.efecto_termogeno).to eq(166.4)
            expect(@paciente2.efecto_termogeno).to eq(266.1)
            expect(@paciente3.efecto_termogeno).to eq(265.3)
            expect(@paciente4.efecto_termogeno).to eq(161.8)
            expect(@paciente5.efecto_termogeno).to eq(137.8)
            expect(@paciente6.efecto_termogeno).to eq(147.5)
        end
        
        it "Gasto de Actividad Física" do
            # gasto actividad f isica = gasto energetico basal × f actor actividad f isica
            expect(@paciente1.gasto_actividad_fisica).to eq(0)
            expect(@paciente2.gasto_actividad_fisica).to eq(319.4)
            expect(@paciente3.gasto_actividad_fisica).to eq(716.3)
            expect(@paciente4.gasto_actividad_fisica).to eq(873.6)
            expect(@paciente5.gasto_actividad_fisica).to eq(0)
            expect(@paciente6.gasto_actividad_fisica).to eq(177.0)
        end
        
        it "Gasto Energético Total" do
            # gasto energetico total = gasto energetico basal + efecto termogeno + gasto actividad f isica
            expect(@paciente1.gasto_energetico_total).to eq(1830.4)
            expect(@paciente2.gasto_energetico_total).to eq(3246.8)
            expect(@paciente3.gasto_energetico_total).to eq(3634.6)
            expect(@paciente4.gasto_energetico_total).to eq(2653.2)
            expect(@paciente5.gasto_energetico_total).to eq(1515.3)
            expect(@paciente6.gasto_energetico_total).to eq(1799.8)
        end
    end
    
    describe "Valoraciones nutricionales de Pacientes" do
        
        before :all do
            @crema_chocolate = Etiqueta.new("Crema de chocolate", 30.9,10.6,57.5,56.3,6.3,0.107, 13.3,15)
            @galletas = Etiqueta.new("Galletas", 25.0,12.0,63.0,29.0,6.3,0.6, 4,40)
            @arroz = Etiqueta.new("Arroz",1.1,0.3,74.0,0.0,8.4,0.0, 0,0)
            @pan_molde = Etiqueta.new("Pan de molde",3.4,0.43,45.0,4.6,7.0,1.5, 14,25)
            @macarrones = Etiqueta.new("Macarrones", 1.9,0.8,71.8,3.5,11.5,0.08,0,0)
            @atun = Etiqueta.new("Atun", 31.0,4.6,0.9,0.5,19.0,0.9, 6,80)
            @ketchup = Etiqueta.new("Ketchup", 0.1,0.0,24.8,19.0,1.6,3.3,0,0)
            @menu1 = [@crema_chocolate,@galletas]
            @menu2 = [@arroz,@pan_molde,@atun]
            @menu3 = [@ketchup,@macarrones]
            @menu4 = [@atun,@macarrones,@crema_chocolate]
            @menu5 = [@atun,@pan_molde,@galletas]
        end
        
        it "El Menu 1 cumple las exigencias caloricas del Paciente" do
           kcal_menu = @menu1.map{ |i| i.get_valor_energetico_KJ}
           
           total_kcal = kcal_menu.reduce(:+)
           
           gasto_ener_paciente = @paciente1.gasto_energ
           gasto_ener_paciente = gasto_ener_paciente * 0.10
        #   expect(total_kcal).to eq(0)
           expect(total_kcal >= gasto_ener_paciente).to eq(true)
        end
        
        it "El Menu 2 cumple las exigencias caloricas del Paciente" do
           kcal_menu = @menu2.map{ |i| i.get_valor_energetico_KJ}
           
           total_kcal = kcal_menu.reduce(:+)
           
           gasto_ener_paciente = @paciente1.gasto_energetico_total
           gasto_ener_paciente = gasto_ener_paciente * 0.10
        #   expect(total_kcal).to eq(0)
           expect(total_kcal >= gasto_ener_paciente).to eq(true)
        end
        
        it "El Menu 3 cumple las exigencias caloricas del Paciente" do
           kcal_menu = @menu3.collect { |x| x.get_valor_energetico_KJ }
           
           total_kcal = kcal_menu.reduce(:+)
           
           gasto_ener_paciente = @paciente2.gasto_energetico_total
           gasto_ener_paciente = gasto_ener_paciente * 0.10
        #   expect(total_kcal).to eq(0)
           expect(total_kcal >= gasto_ener_paciente).to eq(true)
        end
        
        it "El Menu 4 cumple las exigencias caloricas del Paciente" do
           kcal_menu = @menu4.collect { |x| x.get_valor_energetico_KJ }
           
           total_kcal = kcal_menu.reduce(:+)
           
           gasto_ener_paciente = @paciente2.gasto_energetico_total
           gasto_ener_paciente = gasto_ener_paciente * 0.10
        #   expect(total_kcal).to eq(0)
           expect(total_kcal >= gasto_ener_paciente).to eq(true)
        end
        
        it "El Menu 5 cumple las exigencias caloricas del Paciente" do
            
           menu6 = @menu1.zip(@menu2)
           kcal_menu = menu6.collect { |x, index| x.get_valor_energetico_KJ }
           
           total_kcal = kcal_menu.reduce(:+)
           
           gasto_ener_paciente = @paciente2.gasto_energetico_total
           gasto_ener_paciente = gasto_ener_paciente * 0.10
        #   expect(total_kcal).to eq(0)
           expect(total_kcal >= gasto_ener_paciente).to eq(true)
        end
    end
end