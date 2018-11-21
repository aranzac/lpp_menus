class Individuo
    
    attr_accessor :id, :nombre, :apellido, :edad, :sexo, :fecha, :ocupacion, :fumador
    
    def initialize(a, b, c, d, e, f, g, h)
        @id, @nombre, @apellido, @edad, @sexo, @fecha, @ocupacion, @fumador = a, b, c, d, e, f, g, h
    end
    
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

class Paciente < Individuo

    attr_accessor :talla, :peso , :cintura, :cadera, :bicipital, :tricipital, :subescapular, :suprailiaco, :brazo 
    
    def initialize(a,b)
        @talla = a
        @peso = b
    end
    def initialize(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, pp, q)
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
    end
    
    def imc 
        @peso / (@talla * @talla)
    end
    
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
