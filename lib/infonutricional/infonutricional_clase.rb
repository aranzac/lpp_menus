class Etiqueta
    
    attr_accessor :nombre, :valorenergetico, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :tam_porcion
    
    include Comparable
    
    def <=>(other)
    	return nil unless other.kind_of? Etiqueta
    	@valorenergetico <=> other.valorenergetico
    end
    
    def initialize(nombre,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,tam_porcion)
        @nombre, @valorenergetico, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal, @porciones, @tam_porcion = nombre, valorenergetico, grasas, saturadas, hidratos, azucares, proteinas, sal, porciones, tam_porcion
        @valorenergetico = get_valor_energetico_KJ
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
	
	def to_s
	     "Nombre\tGrasas\tSaturadas\tHidratos\tAzucar\tProteinas\tSal\n#{@nombre}\t#{@grasas}\t#{@saturadas}\t#{@hidratos}\t#{@azucares}\t#{proteinas}\t#{@sal}"
	end
end
    