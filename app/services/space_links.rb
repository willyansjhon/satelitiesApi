class SpaceLinks

    include HTTParty
    base_uri  'https://api.spacexdata.com'
       
    
    def initialize
        @options = {}
    end
    
    def general
        self.class.get('/v4/starlink')
    end 

    
    
  
    
end