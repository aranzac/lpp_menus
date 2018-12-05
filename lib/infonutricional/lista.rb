# @author Aranza Cabrera Castellano
#Nodo de la lista
Node = Struct.new(:value, :next, :prev)

# @author Aranza Cabrera Castellano
# Clase Lista
class Lista
    
    attr_accessor :head, :tail, :size

    # Método que inicializa el objeto con los parámetros pasados
    def initialize()
        @head = Node.new(nil,nil,nil)
        @tail = Node.new(nil,nil,nil)
        @size = 0
    end
    
    
    # Módulo Enumerable
    include Enumerable
    
    # Método que permite recorrer la lista
    def each
        i = @tail
        f = @size
        k = 0
        while (k < f) do
            yield i.value
            i = i.prev
            k = k+1
        end
    end
    
    # Método que comprueba si una lista está vacía
    # @return true si está vacía
    # @return false si no está vacía
    def empty()
        if (@size == 0)
            return true
        else
            return false
        end
    end

    #Método que inserta un valor en la cola de la lista
    # @param valor Elemento que se va a insertar
    def insertar_tail(valor)
        elemento = Node.new(valor,nil,@head)
        if (@size == 0)
          @tail = Node.new(valor,nil,nil)
          @head = @tail
          @size += 1
        elsif (@size == 1)
            @tail = elemento
            @tail.next = @head
            @head.prev = @tail
            @size += 1
        elsif (@size > 1)
            # @elemento.next = @tail
            @tail.prev = elemento
            @tail = elemento
            @size += 1
        end
    end
    
    # Método que extrae un elemento por la cabeza de la lista
    # @return Elemento que se extrae
    def extraer_head()
        if(@size==0)
            puts "La lista está vacía."
        elsif (@size == 1)
            saliente = Node.new(@head.value,nil,nil)
            @tail = Node.new(nil,nil,nil)
            @head = Node.new(nil,nil,nil)
            @size -= 1
            return saliente.value
        elsif (@size > 1)
            saliente = Node.new(@head.value,nil,nil)
            @head = @head.prev
            @head.next = nil
            @size -= 1
            return saliente.value
        end 
    end

end