require "spec_helper"
require './lib/infonutricional.rb'

RSpec.describe Lista do
    
    describe "Enumerable en Lista" do
        it "Lista incluye Enumerable" do
            expect(Lista.ancestors).to include(Enumerable)
        end
    end
    
    describe "Enumerable en Lista de Etiquetas" do
        before :each do
            @Crema_Chocolate = Etiqueta.new("Crema de chocolate", 30.9,10.6,57.5,56.3,6.3,0.107, 13.3,15)
            @Arroz = Etiqueta.new("Arroz",1.1,0.3,74.0,0.0,8.4,0.0, 0,0)
            @Galletas = Etiqueta.new("Galletas", 25.0,12.0,63.0,29.0,6.3,0.6, 4,40)
            @lista = Lista.new()
        end
        
        it "collect de Enumerable" do
            @lista.insertar_tail(@Crema_Chocolate)
            @lista.insertar_tail(@Galletas)
            @lista.insertar_tail(@Arroz)
            expect(@lista.collect{|i| i.valorenergetico * 2}).to eq([2883.0, 4461.2, 4236.2])
        end
        
        it "select de Enumerable" do
            @lista.insertar_tail(@Crema_Chocolate)
            @lista.insertar_tail(@Galletas)
            @lista.insertar_tail(@Arroz)
            expect(@lista.select{|i| i.valorenergetico.round % 2 ==0}).to eq([@Arroz, @Galletas])
        end
        
        it "max de Enumerable" do
            @lista.insertar_tail(@Crema_Chocolate)
            @lista.insertar_tail(@Galletas)
            
            @lista.insertar_tail(@Arroz)
            expect(@lista.max).to eq(@Crema_Chocolate)
        end
        
        it "min de Enumerable" do
            @lista.insertar_tail(@Crema_Chocolate)
            @lista.insertar_tail(@Galletas)
            @lista.insertar_tail(@Arroz)
            expect(@lista.min).to eq(@Arroz) 
        end
        
        it "sort de Enumerable" do
            @lista.insertar_tail(@Crema_Chocolate)
            @lista.insertar_tail(@Galletas)
            @lista.insertar_tail(@Arroz)
            expect(@lista.sort).to eq([@Arroz, @Galletas, @Crema_Chocolate]) 
        end
    end
    
    
    describe "Enumerable en Lista de Individuo" do
        before :each do
            @Natalia = Individuo.new(1, "Natalia", "Gutierrez", 36, "Mujer", "10-12-86", "Cantante", "Si")
            @JuanCarlos = Individuo.new(2, "Juan Carlos", "Ozuna", 26, "Hombre", "13-03-92", "Panadero", "No")
            @Carolina = Individuo.new(6, "Carolina", "Navarro", 27, "Mujer", "14-02-91", "Actor", "No")
            @lista = Lista.new()
        end
        
        it "collect de Enumerable" do
            @lista.insertar_tail(@Natalia.edad)
            @lista.insertar_tail(@JuanCarlos.edad)
            @lista.insertar_tail(@Carolina.edad)
            expect(@lista.collect{|i| i*2}).to eq([54, 72, 52])
        end
        
        it "select de Enumerable" do
            @lista.insertar_tail(@Natalia.edad)
            @lista.insertar_tail(@JuanCarlos.edad)
            @lista.insertar_tail(@Carolina.edad)
            expect(@lista.find_all{|i| i%2==0}).to eq([36,26])
        end
        
        it "max de Enumerable" do
            @lista.insertar_tail(@Natalia.edad)
            @lista.insertar_tail(@JuanCarlos.edad)
            @lista.insertar_tail(@Carolina.edad)
            expect(@lista.max).to eq(36)
        end
        
        it "min de Enumerable" do
            @lista.insertar_tail(@Natalia.edad)
            @lista.insertar_tail(@JuanCarlos.edad)
            @lista.insertar_tail(@Carolina.edad)
            expect(@lista.min).to eq(26) 
        end
        
        it "sort de Enumerable" do
            @lista.insertar_tail(@Natalia.edad)
            @lista.insertar_tail(@JuanCarlos.edad)
            @lista.insertar_tail(@Carolina.edad)
            expect(@lista.sort).to eq([26,27,36]) 
        end
    end

end
