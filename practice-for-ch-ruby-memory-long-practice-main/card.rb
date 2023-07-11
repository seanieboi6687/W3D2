class Card

    attr_reader :face_value, :current_state, :hidden_state

    def initialize(letter)
        @face_value = letter
        @hidden_state = " "
        @current_state = @hidden_state
    end

    def hidden?
       if @current_state == @hidden_state
            return true
       end

       return false
    end

    def face_up?
        if @current_state == @face_value
            return true
        end
        
        return false
    end

    def reveal
        if self.hidden?
            @current_state = @face_value
            return true
        end
    end

    def hide
        if self.face_up?
            @current_state = @hidden_state
        end
    end

    def switch_side!
        if @current_state == @hidden_state
            @current_state = @face_value
        else 
            @current_state = @hidden_state
        end
    end

end