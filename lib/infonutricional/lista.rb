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

end