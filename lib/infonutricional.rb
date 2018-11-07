require "infonutricional/version"

  class Etiqueta
    
    attr_accessor :nombre, :valorenergetico, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :tam_porcion
    
    def initialize(nombre,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,tam_porcion)
		@nombre, @valorenergetico, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal, @porciones, @tam_porcion = nombre, valorenergetico, grasas, saturadas, hidratos, azucares, proteinas, sal, porciones, tam_porcion
	end
	
	def get_valor_energetico_KJ
	    ((@grasas * 37) + (@hidratos * 17) + (@proteinas * 17) + (@sal * 25)).round(1)
	end
	
	def get_valor_energetico_Kcal
	    ((@grasas * 9) + (@hidratos * 4) + (@proteinas * 4) + (@sal * 6)).round(1)
	end
	
	def get_IR
	    (get_valor_energetico_KJ * tam_porcion / 8400).round
	end
  end
    