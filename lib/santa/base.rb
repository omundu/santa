module Santa
  
  class Base
    
    attr_reader :participants
    
    def initialize(*participants)
      @participants = Array(participants)
    end
    
  end
  
end