# @author Aranza Cabrera Castellano
# Clase Individuo
class Individuo
    
    attr_accessor :id, :nombre, :apellido, :edad, :sexo, :fecha, :ocupacion, :fumador
    
    include Comparable
    
    # Método que inicializa el objeto con los parámetros pasados
    # @param a ID del individuo
    # @param b Nombre del individuo
    # @param c Apellidºo del individuo
    # @param d Edad del individuo
    # @param e Sexo del individuo
    # @param f Fecha de nacimiento del individuo
    # @param g Ocupación/Empleo del individuo
    # @param h Fumador/No fumador 
    def initialize(a, b, c, d, e, f, g, h)
        @id, @nombre, @apellido, @edad, @sexo, @fecha, @ocupacion, @fumador = a, b, c, d, e, f, g, h
    end
    
    # Método que nos permite comparar objetos de Individuo
    # @param other Individuo a comparar
    def <=>(other)
       return nil unless other.kind_of? Individuo
       @edad <=> other.edad
    end
    
    # Método que muestra los individuos formateados
    def to_s
        @out = "\tID\tNombre\tApellido\tEdad\tSexo\tFecha\tOcupacion\tFumador\n"
        @out << @id.to_s
        @out << "\t"
        @out << @nombre
        @out << "\t"
        @out << @apellido
        @out << "\t"
        @out << @edad.to_s
        @out << "\t"
        @out << @sexo
        @out << "\t"
        @out << @fecha
        @out << "\t"
        @out << @ocupacion
        @out << "\t"
        @out << @fumador
        @out << "\t"
        @out
    end

end

# @author Aranza Cabrera Castellano
# Clase Paciente. Hija de la clase Individuo
class Paciente < Individuo

    attr_accessor :talla, :peso , :cintura, :cadera, :bicipital, :tricipital, :subescapular, :suprailiaco, :brazo, :peso_ideal, :gasto_energ, :factor_act, :efecto_termo, :gasto_energ_total
    
    # Método que inicializa el objeto con los parámetros pasados
    # a Talla del individuo
    # b Peso del individuo
    def initialize(a,b)
        @talla = a
        @peso = b
        @peso_ideal = peso_teorico_ideal
        @gasto_energ = gasto_energetico
        @efecto_termo = efecto_termogeno
        @gasto_energ_total
    end

    # Método que inicializa el objeto con los parámetros pasados
    # @param a ID del individuo
    # @param b Nombre del individuo
    # @param c Apellido del individuo
    # @param d Edad del individuo
    # @param e Sexo del individuo
    # @param f Fecha de nacimiento del individuo
    # @param g Ocupación/Empleo del individuo
    # @param h Fumador/No fumador del individuo
    # @param i Talla del individuo del individuo
    # @param j Peso del individuo del individuo
    # @param k Talla de cintura del individuo
    # @param l Talla de cadera del individuo
    # @param m Talla de bicipital del individuo
    # @param n Talla de tricipital del individuo
    # @param o Talla de subescapular del individuo
    # @param pp Talla de suprailiaco del individuo
    # @param q Talla de brazo del individuo
    def initialize(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, pp, q, r)
        super(a, b, c, d, e, f, g, h)
        @talla = i
        @peso = j
        @cintura = k
        @cadera = l
        @bicipital = m
        @tricipital = n
        @subescapular = o
        @suprailiaco = pp
        @brazo = q
        @factor_act = r
    end
    
    # Método que calcula el índice de masa corporal del individuo
    def imc 
        @peso / (@talla * @talla)
    end
    
    # Método que calcula el peso teórico ideal
    def peso_teorico_ideal
      @peso_ideal = ((@talla - 1.50)*100 * 0.75 + 50).round(2)
    end
    
    # Método que calcula el gasto energetico basal según hombres y mujeres
    def gasto_energetico
        if (@sexo == "Mujer")
            @gasto_energ = ((10 * @peso) + (6.25 * @talla * 100) - (5 * @edad) - 161).round(1)
        elsif(@sexo == "Hombre")
            @gasto_energ = ((10 * @peso) + (6.25 * @talla * 100) - (5 * @edad) + 5).round(1)
        end
    end
    
    # Método que calcula el efecto termógeno
    def efecto_termogeno
        @efecto_termo = (@gasto_energ * 0.10).round(1)
    end
    
    # Método que calcula el gasto de energía por actividad fisica
    def gasto_actividad_fisica
       @gasto_actividad = (@gasto_energ * @factor_act).round(1)
    end
    
    
    def gasto_energetico_total
        @gasto_energ_total = (@gasto_energ + @efecto_termo + @gasto_actividad).round(1)
    end
    
    # Muestra la etiqueta de los individuos formateada
    def to_s
        super
        @out << "\nTalla\tPeso\tCintura\tCadera\tBicipital\tTricipital\tSubescapular\tSuprailiaco\tBrazo\n"
        @out << @talla.to_s
        @out << "\t"
        @out << @peso.to_s
        @out << "\t"
        @out << @cintura.to_s
        @out << "\t"
        @out << @cadera.to_s
        @out << "\t"
        @out << @bicipital.to_s
        @out << "\t"
        @out << @tricipital.to_s
        @out << "\t"
        @out << @subescapular.to_s
        @out << "\t"
        @out << @suprailiaco.to_s
        @out << "\t"
        @out << @brazo.to_s
        @out << "\n"
        @out
    end
    
end
