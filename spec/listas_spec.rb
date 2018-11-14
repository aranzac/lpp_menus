require "spec_helper"

RSpec.describe Lista do
  before :all do
    @lista = Lista.new()
    @crema_Chocolate = Etiqueta.new("Crema de chocolate", 30.9,10.6,57.5,56.3,6.3,0.107, 13.3,15)
    @galletas = Etiqueta.new("Galletas", 25.0,12.0,63.0,29.0,6.3,0.6, 4,40)
    @arroz = Etiqueta.new("Arroz",1.1,0.3,74.0,0.0,8.4,0.0, 0,0)
    @pan_molde = Etiqueta.new("Pan de molde",3.4,0.43,45.0,4.6,7.0,1.5, 14,25)
    @macarrones = Etiqueta.new("Macarrones", 1.9,0.8,71.8,3.5,11.5,0.08,0,0)
    @atun = Etiqueta.new("Atun", 31.0,4.6,0.9,0.5,19.0,0.9, 6,80)  
  end
  
  describe "Listas" do
    
    it "Existe una lista vacia con head y tail vacios" do 
      expect(@lista.empty).to eq(true)
      expect(@lista.head.value).to eq(nil)
      expect(@lista.tail.value).to eq(nil)
      expect(@lista.inicio.next).to eq(nil)
      expect(@lista.size).to eq(0)
    end
    
    it "Existe el nodo inicio con next y prev vacios" do
      expect(@lista.inicio.next).to eq(nil)
      expect(@lista.inicio.prev).to eq(nil)
    end
    
    it "Existe el nodo final con next y prev vacios" do
      expect(@lista.final.next).to eq(nil)
      expect(@lista.final.prev).to eq(nil)
    end
    
    it "Se pueden insertar elementos en la lista" do
      @lista.insertar(@chocolate)
      expect(@lista.size).to eq(1)
      @lista.insertar(@galletas)
      expect(@lista.size).to eq(2)
      @lista.insertar(@arroz)
      expect(@lista.size).to eq(3)
      @lista.insertar(@pan_molde)
      expect(@lista.size).to eq(4)
      @lista.insertar(@macarrones)
      expect(@lista.size).to eq(5)
    end
    
    it "La lista ya no es vacía" do
      expect(@lista.empty).to eq(false)
    end
    
    it "El head es el primer elemento insertado" do
      expect(@lista.head.prev).to eq(nil)
      expect(@lista.head.value).to eq(@chocolate)
    end
    
    it "El tail es el último elemento insertado" do
      expect(@lista.tail.next).to eq(nil)
      expect(@lista.tail.value).to eq(@macarrones)
    end

    it "Se puede extraer el primer elemento" do
      expect(@lista.extraer_head()).to eq(@chocolate)
      @lista.insertar(@chocolate)
    end
    
    it "Se puede extraer el último elemento" do
      @lista.insertar(@atun)
      expect(@lista.extraer_tail()).to eq(@atun)
    end
    
    it "Ver que el valor de sal es recomendado en todos los alimentos" do
        @elemento1 = @lista.extraer_tail
        expect(@elemento1.sal).to be <= 6
        @elemento2 = @lista.extraer_tail
        expect(@elemento2.sal).to be <= 6
        @elemento3 = @lista.extraer_tail()
        expect(@elemento3.sal).to be <= 6
        @elemento4 = @lista.extraer_tail
        expect(@elemento4.sal).to be <= 6
        @elemento5 = @lista.extraer_tail
        expect(@elemento5.sal).to be <= 6
        @elemento6 = @lista.extraer_tail
        expect(@elemento6.sal).to be <= 6
    end
  end
  
end