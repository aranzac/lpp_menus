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

end