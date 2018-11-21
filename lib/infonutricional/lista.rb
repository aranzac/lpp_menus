Node = Struct.new(:value, :next, :prev)

class Lista
    
    attr_accessor :head, :tail, :size
    
    def initialize()
        @head = Node.new(nil,nil,nil)
        @tail = Node.new(nil,nil,nil)
        @size = 0
    end
    
    def empty()
        if (@size == 0)
            return true
        else
            return false
        end
    end
    
    def insertar_tail(valor)
        elemento = Node.new(valor,nil,nil)
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