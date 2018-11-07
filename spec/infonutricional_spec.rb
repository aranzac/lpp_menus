require "spec_helper"
require './lib/infonutricional.rb'

RSpec.describe Infonutricional do
  before :each do
    @Crema_Chocolate = Etiqueta.new("Crema de chocolate", 30.9,10.6,57.5,56.3,6.3,0.107, 13.3,15)
    @Galletas = Etiqueta.new("Galletas", 25.0,12.0,63.0,29.0,6.3,0.6, 4,40)
    @Arroz = Etiqueta.new("Arroz",1.1,0.3,74.0,0.0,8.4,0.0, 0,0)
    @Pan_molde = Etiqueta.new("Pan de molde",3.4,0.43,45.0,4.6,7.0,1.5, 14,25)
    @Macarrones = Etiqueta.new("Macarrones", 1.9,0.8,71.8,3.5,11.5,0.08,0,0)
    @Atun = Etiqueta.new("Atun", 31.0,4.6,0.9,0.5,19.0,0.9, 6,80)
    @Ketchup = Etiqueta.new("Ketchup", 0.1,0.0,24.8,19.0,1.6,3.3,0,0)
  end
  
  describe "expectativas" do
  
    it "Existe un nombre para la etiqueta" do
      expect(@Crema_Chocolate.nombre).not_to be nil
    end
    
    it "Existe la cantidad de grasas" do
      expect(@Crema_Chocolate.grasas).not_to be nil
      expect(@Galletas.grasas).not_to be nil
      expect(@Arroz.grasas).not_to be nil
      expect(@Pan_molde.grasas).not_to be nil
      expect(@Macarrones.grasas).not_to be nil
      expect(@Atun.grasas).not_to be nil
      expect(@Ketchup.grasas).not_to be nil
    end
  
    it "Existe la cantidad de grasas saturadas" do
      expect(@Crema_Chocolate.saturadas).not_to be nil
      expect(@Galletas.saturadas).not_to be nil
      expect(@Arroz.saturadas).not_to be nil
      expect(@Pan_molde.saturadas).not_to be nil
      expect(@Macarrones.saturadas).not_to be nil
      expect(@Atun.saturadas).not_to be nil
      expect(@Ketchup.saturadas).not_to be nil
      
    end
  
    it "Existe la cantidad de hidratos de carbono" do
      expect(@Crema_Chocolate.hidratos).not_to be nil
      expect(@Galletas.hidratos).not_to be nil
      expect(@Arroz.hidratos).not_to be nil
      expect(@Pan_molde.hidratos).not_to be nil
      expect(@Macarrones.hidratos).not_to be nil
      expect(@Atun.hidratos).not_to be nil
      expect(@Ketchup.hidratos).not_to be nil
    end
  
    it "Existe la cantidad de azúcares" do
      expect(@Crema_Chocolate.azucares).not_to be nil
      expect(@Galletas.azucares).not_to be nil
      expect(@Arroz.azucares).not_to be nil
      expect(@Pan_molde.azucares).not_to be nil
      expect(@Macarrones.azucares).not_to be nil
      expect(@Atun.azucares).not_to be nil
      expect(@Ketchup.azucares).not_to be nil
    end
    
    it "Existe la cantidad de proteínas" do
      expect(@Crema_Chocolate.proteinas).not_to be nil
      expect(@Galletas.proteinas).not_to be nil
      expect(@Arroz.proteinas).not_to be nil
      expect(@Pan_molde.proteinas).not_to be nil
      expect(@Macarrones.proteinas).not_to be nil
      expect(@Atun.proteinas).not_to be nil
      expect(@Ketchup.proteinas).not_to be nil
    end
  
    it "Existe la cantidad de sal" do
      expect(@Crema_Chocolate.sal).not_to be nil
      expect(@Galletas.sal).not_to be nil
      expect(@Arroz.sal).not_to be nil
      expect(@Pan_molde.sal).not_to be nil
      expect(@Macarrones.sal).not_to be nil
      expect(@Atun.sal).not_to be nil
      expect(@Ketchup.sal).not_to be nil
    end
    
    it "Existe un metodo para obtener el nombre" do
      expect(@Crema_Chocolate.nombre).to eq("Crema de chocolate")
      expect(@Galletas.nombre).to eq("Galletas")
      expect(@Arroz.nombre).to eq("Arroz")
      expect(@Pan_molde.nombre).to eq("Pan de molde")
      expect(@Macarrones.nombre).to eq("Macarrones")
      expect(@Atun.nombre).to eq("Atun")
      expect(@Ketchup.nombre).to eq("Ketchup")
    end
    
    it "Existe un metodo para obtener la cantidad de grasas" do
      expect(@Crema_Chocolate.grasas).to eq(30.9)
      expect(@Galletas.grasas).to eq(25.0)
      expect(@Arroz.grasas).to eq(1.1)
      expect(@Pan_molde.grasas).to eq(3.4)
      expect(@Macarrones.grasas).to eq(1.9)
      expect(@Atun.grasas).to eq(31.0)
      expect(@Ketchup.grasas).to eq(0.1)
    end
  
    it "Existe un metodo para obtener la cantidad de grasas saturadas" do
      expect(@Crema_Chocolate.saturadas).to eq(10.6)
      expect(@Galletas.saturadas).to eq(12.0)
      expect(@Arroz.saturadas).to eq(0.3)
      expect(@Pan_molde.saturadas).to eq(0.43)
      expect(@Macarrones.saturadas).to eq(0.8)
      expect(@Atun.saturadas).to eq(4.6)
      expect(@Ketchup.saturadas).to eq(0.0)
      
    end
  
    it "Existe un metodo para obtener la cantidad de hidratos de carbono" do
      expect(@Crema_Chocolate.hidratos).to eq(57.5)
      expect(@Galletas.hidratos).to eq(63.0)
      expect(@Arroz.hidratos).to eq(74.0)
      expect(@Pan_molde.hidratos).to eq(45.0)
      expect(@Macarrones.hidratos).to eq(71.8)
      expect(@Atun.hidratos).to eq(0.9)
      expect(@Ketchup.hidratos).to eq(24.8)
    end
  
    it "Existe un metodo para obtener la cantidad de azúcares" do
      expect(@Crema_Chocolate.azucares).to eq(56.3)
      expect(@Galletas.azucares).to eq(29.0)
      expect(@Arroz.azucares).to eq(0.0)
      expect(@Pan_molde.azucares).to eq(4.6)
      expect(@Macarrones.azucares).to eq(3.5)
      expect(@Atun.azucares).to eq(0.5)
      expect(@Ketchup.azucares).to eq(19)
    end
    
    it "Existe un metodo para obtener la cantidad de proteínas" do
      expect(@Crema_Chocolate.proteinas).to eq(6.3)
      expect(@Galletas.proteinas).to eq(6.3)
      expect(@Arroz.proteinas).to eq(8.4)
      expect(@Pan_molde.proteinas).to eq(7)
      expect(@Macarrones.proteinas).to eq(11.5)
      expect(@Atun.proteinas).to eq(19)
      expect(@Ketchup.proteinas).to eq(1.6)
    end
  
    it "Existe un metodo para obtener la cantidad de sal" do
      expect(@Crema_Chocolate.sal).to eq(0.107)
      expect(@Galletas.sal).to eq(0.6)
      expect(@Arroz.sal).to eq(0.0)
      expect(@Pan_molde.sal).to eq(1.5)
      expect(@Macarrones.sal).to eq(0.08)
      expect(@Atun.sal).to eq(0.9)
      expect(@Ketchup.sal).to eq(3.3)
    end
    
    # Valores energéticos en KJ de 4 de los alimentos 
    it "Existe un metodo para obtener el valor energetico en Kj" do
      expect(@Crema_Chocolate.get_valor_energetico_KJ).to eq(2230.6)
      expect(@Galletas.get_valor_energetico_KJ).to eq(2118.1)
      expect(@Arroz.get_valor_energetico_KJ).to eq(1441.5)
      expect(@Pan_molde.get_valor_energetico_KJ).to eq(1047.3)
      expect(@Macarrones.get_valor_energetico_KJ).to eq(1488.4)
      expect(@Atun.get_valor_energetico_KJ).to eq(1507.8)
      expect(@Ketchup.get_valor_energetico_KJ).to eq(535)
    end
    
    # Valores energéticos en Kcal de 3 de los alimentos
    it "Existe un metodo para obtener el valor energetico en Kcal" do
      expect(@Crema_Chocolate.get_valor_energetico_Kcal).to eq(533.9)
      expect(@Galletas.get_valor_energetico_Kcal).to eq(505.8)
      expect(@Arroz.get_valor_energetico_Kcal).to eq(339.5)
      expect(@Pan_molde.get_valor_energetico_Kcal).to eq(247.6)
      expect(@Macarrones.get_valor_energetico_Kcal).to eq(350.8)
      expect(@Atun.get_valor_energetico_Kcal).to eq(364)
      expect(@Ketchup.get_valor_energetico_Kcal).to eq(126.3)
    end

    # Ingesta de referencia IR en aquellos alimentos divididos en porciones
    it "Existe un metodo para obtener el valor de IR por alimento (dividido en porciones)" do
      expect(@Crema_Chocolate.get_IR).to eq(4)
      expect(@Galletas.get_IR).to eq(10)
      expect(@Pan_molde.get_IR).to eq(3)
      expect(@Atun.get_IR).to eq(14)
    end
    
    # Etiqueta formateada del alimento chocolate
    it "Existe un metodo para obtener la etiqueta formateada del chocolate" do
      expect(@Crema_Chocolate.to_s).to eq("Nombre\tGrasas\tSaturadas\tHidratos\tAzucar\tProteinas\tSal\nCrema de chocolate\t30.9\t10.6\t57.5\t56.3\t6.3\t0.107")
    end
  end
  
end
