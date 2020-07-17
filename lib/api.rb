# get data from the internet using scraping or hitting an api

class API 
  BASE_URL = "https://restcountries.eu/rest/v2/lang/"

  def get_info(selected_language_code)
  #this argument is needed #get requests the server to return either a collection or a single item of collection 
    response = HTTParty.get(BASE_URL + selected_language_code)  
#  binding.pry

    response.each do |names_hash|
      Country.new(names_hash["name"])
    end 
  end
end 

