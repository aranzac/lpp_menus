class Individuo
    
    attr_accessor :id, :nombre, :apellido, :edad, :sexo, :fecha, :ocupacion, :fumador
    
    def initialize(a, b, c, d, e, f, g, h)
        @id, @nombre, @apellido, @edad, @sexo, @fecha, @ocupacion, @fumador = a, b, c, d, e, f, g, h
    end

end

class Paciente < Individuo

    attr_accessor :talla, :peso , :cintura, :cadera, :bicipital, :tricipital, :subescapular, :suprailiaco, :brazo, 
    
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
    
end
