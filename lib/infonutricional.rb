require "infonutricional/version"

  class Etiqueta
    
    attr_accessor :nombre, :valorenergetico, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :tam_porcion
    
    def initialize(nombre,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,tam_porcion)
		@nombre, @valorenergetico, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal, @porciones, @tam_porcion = nombre, valorenergetico, grasas, saturadas, hidratos, azucares, proteinas, sal, porciones, tam_porcion
	end
	
  end
    