require "spec_helper"
require './lib/infonutricional.rb'

RSpec.describe Etiqueta do
    
    describe "Comparable en Etiqueta" do
        it "Etiqueta incluye Comparable" do
            expect(Etiqueta.ancestors).to include(Comparable)
        end
                
        it "Existe el método <=>" do
            expect(Etiqueta).to respond_to(:<=>)
        end
    end
    
    describe "Comparacion de dos etiquetas" do
        before :all do
            @Crema_Chocolate = Etiqueta.new("Crema de chocolate", 30.9,10.6,57.5,56.3,6.3,0.107, 13.3,15)
            @Galletas = Etiqueta.new("Galletas", 25.0,12.0,63.0,29.0,6.3,0.6, 4,40)
            @Arroz = Etiqueta.new("Arroz",1.1,0.3,74.0,0.0,8.4,0.0, 0,0)
        end
        
        it "< de Comparable" do
            expect(@Crema_Chocolate < @Galletas).to eq(false)
            expect(@Galletas < @Crema_Chocolate).to eq(true)
        end
        
        it "> de Comparable" do
            expect(@Crema_Chocolate > @Galletas).to eq(true)
            expect(@Galletas > @Crema_Chocolate).to eq(false)
        end
        
        it "<= de Comparable" do
            expect(@Crema_Chocolate <= @Crema_Chocolate).to eq(true)
            expect(@Galletas <= @Galletas).to eq(true)
            expect(@Crema_Chocolate <= @Galletas).to eq(false)
            expect(@Galletas <= @Crema_Chocolate).to eq(true)
        end
        
        it ">= de Comparable" do
            expect(@Crema_Chocolate >= @Crema_Chocolate).to eq(true)
            expect(@Galletas >= @Galletas).to eq(true)
            expect(@Crema_Chocolate >= @Galletas).to eq(true)
            expect(@Galletas >= @Crema_Chocolate).to eq(false)
        end
        
        it "== de Comparable" do
            expect(@Crema_Chocolate == @Crema_Chocolate).to eq(true)
            expect(@Galletas == @Galletas).to eq(true)
            expect(@Crema_Chocolate == @Galletas).to eq(false)
            expect(@Galletas == @Crema_Chocolate).to eq(false)
        end
        
        it "between de Comparable" do
            expect(@Galletas.between?(@Arroz, @Crema_Chocolate)).to eq(true)
            expect(@Galletas == @Galletas).to eq(true)
            expect(@Crema_Chocolate == @Galletas).to eq(false)
            expect(@Galletas == @Crema_Chocolate).to eq(false)
        end
    end
    
end

RSpec.describe Individuo do
    
    describe "Comparable en Individuo" do
        it "Individuo incluye Comparable" do
            expect(Individuo.ancestors).to include(Comparable)
        end
        
        it "Existe el método <=>" do
            expect(Individuo).to respond_to(:<=>)
        end
    end
                
    describe "Comparacion de dos indiviuos" do
        before :all do
            @Natalia = Individuo.new(1, "Natalia", "Gutierrez", 36, "Mujer", "10-12-86", "Cantante", "Si")
            @JuanCarlos = Individuo.new(2, "Juan Carlos", "Ozuna", 26, "Hombre", "13-03-92", "Panadero", "No")
            @Carolina = Individuo.new(6, "Carolina", "Navarro", 27, "Mujer", "14-02-91", "Actor", "No")

        end
        
        it "< de Comparable" do
            expect(@Natalia < @JuanCarlos).to eq(false)
            expect(@JuanCarlos < @Natalia).to eq(true)
        end
        
        it "> de Comparable" do
            expect(@Natalia > @JuanCarlos).to eq(true)
            expect(@JuanCarlos > @Natalia).to eq(false)
        end
        
        it "<= de Comparable" do
            expect(@Natalia <= @Natalia).to eq(true)
            expect(@JuanCarlos <= @JuanCarlos).to eq(true)
            expect(@Natalia <= @JuanCarlos).to eq(false)
            expect(@JuanCarlos <= @Natalia).to eq(true)
        end
        
        it ">= de Comparable" do
            expect(@Natalia >= @Natalia).to eq(true)
            expect(@JuanCarlos >= @JuanCarlos).to eq(true)
            expect(@Natalia >= @JuanCarlos).to eq(true)
            expect(@JuanCarlos >= @Natalia).to eq(false)
        end
        
        it "== de Comparable" do
            expect(@Natalia == @Natalia).to eq(true)
            expect(@JuanCarlos == @JuanCarlos).to eq(true)
            expect(@Natalia == @JuanCarlos).to eq(false)
            expect(@JuanCarlos == @Natalia).to eq(false)
        end
        
        it "between de Comparable" do
            expect(@Carolina.between?(@JuanCarlos, @Natalia)).to eq(true)
            expect(@JuanCarlos == @JuanCarlos).to eq(true)
            expect(@Natalia == @JuanCarlos).to eq(false)
            expect(@JuanCarlos == @Natalia).to eq(false)
        end        
    end
end

