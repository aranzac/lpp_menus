# @author Aranza Cabrera Castellano
# Clase Etiqueta de información nutricional
class Etiqueta
    
    attr_accessor :nombre, :valorenergetico, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :tam_porcion
    
    # Módulo Comparable
    include Comparable
    
    # Método que nos permite comparar objetos de Individuo
    # @param other Etiqueta a comparar
    def <=>(other)
    	return nil unless other.kind_of? Etiqueta
    	@valorenergetico <=> other.valorenergetico
    end
    
    # Método initialize
    # @param nombre Nombre del alimento 
    # @param grasas Cantidad en gramos de grasas del alimento 
    # @param saturadas Cantidad en gramos de grasas saturadas del alimento 
    # @param hidratos Cantidad en gramos de hidratos de carbono del alimento 
    # @param azucares Cantidad en gramos de azúcares del alimento 
    # @param proteinas Cantidad en gramos de proteínas del alimento 
    # @param sal Cantidad en gramos de sal del alimento 
    # @param porciones Número de porciones en las que se divide el alimento 
    # @param tam_porcion Cantidad en gramos de cada porción del alimento 
    def initialize(nombre, grasas, saturadas, hidratos, azucares, proteinas, sal, porciones, tam_porcion)
        @nombre, @valorenergetico, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal, @porciones, @tam_porcion = nombre, valorenergetico, grasas, saturadas, hidratos, azucares, proteinas, sal, porciones, tam_porcion
        @valorenergetico = get_valor_energetico_KJ
    end
	
	# Método que calcula y devuelve el valor energetico en kilojulios
	def get_valor_energetico_KJ
	    ((@grasas * 37) + (@hidratos * 17) + (@proteinas * 17) + (@sal * 25)).round(1)
	end
	
	# Método que calcula y devuelve el valor energetico
	def get_valor_energetico_Kcal
	    ((@grasas * 9) + (@hidratos * 4) + (@proteinas * 4) + (@sal * 6)).round(1)
	end
	
	# Método que calcula la IR
	def get_IR
	    (get_valor_energetico_KJ * tam_porcion / 8400).round
	end
	
	# Muestra la etiqueta de los alimentos formateada
	def to_s
	     "Nombre\tGrasas\tSaturadas\tHidratos\tAzucar\tProteinas\tSal\n#{@nombre}\t#{@grasas}\t#{@saturadas}\t#{@hidratos}\t#{@azucares}\t#{proteinas}\t#{@sal}"
	end
end
    