class Energia
    
    attr_accessor :id, :nombre, :apellido, :edad, :sexo, :ocupacion, :fumador
    
    def initialize(a,b,c,d,e,f,g)
        @id, @nombre, @apellido, @edad, @sexo, @ocupacion, @fumador = a, b, c, d, e, f, g
    end
end