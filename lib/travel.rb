class Travel
   attr_accessor  :all
    @@all = []
   def initialize
  @all = []
   end
   
  def get_data(input)
    input.select do |i|
      @all << i["name"]
    end
  end
  
  def self.all 
    @@all 
  end 

end 


