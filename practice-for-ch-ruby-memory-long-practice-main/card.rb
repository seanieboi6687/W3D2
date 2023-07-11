class Card

    attr_reader :face_val, :current_state, :hidden_state

    def initialize(letter)
        @face_val = letter
        @hidden_state = true
        @current_state = @hidden_state
    end

    def hidden?
       if @current_state == @hidden_state
            return true
       end

       return false
    end

    def face_up?
        if @current_state == face_val
            return true
        end
        
        return false
    end

    def switch_side!
        if @current_state == @hidden_state
            @current_state = @face_val
        else 
            @current_state = @hidden_state
        end
    end

end