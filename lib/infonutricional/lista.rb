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
    
    def insertar_head(valor)
        elemento = Node.new(valor,nil,@head)
        if (@size == 0)
          @head = Node.new(valor,nil,nil)
          @tail = @head
          @size += 1
        elsif (@size == 1)
            @head = elemento
            @tail.next = @head
            @head.prev = @tail
            @size += 1
        elsif (@size > 1)
            aux = Node.new(@head.value,elemento,@head.prev)
            aux.prev.next = aux
            @head = elemento
            @head.prev.next = @head
            @size += 1
        end
    end
    
    def extraer_head()
        if(@size==0)
            puts "La lista está vacía."
        elsif (@size == 1)
            saliente = Node.new(@head.value,nil,nil)
            @head = Node.new(nil,nil,nil)
            @tail = Node.new(nil,nil,nil)
            @size -= 1
            "#{saliente.value}"
        elsif (@size > 1)
            saliente = Node.new(@head.value,nil,nil)
            @head.prev.next = nil
            @head = @head.prev
            @size -= 1
            return saliente.value
        end 
    end

end