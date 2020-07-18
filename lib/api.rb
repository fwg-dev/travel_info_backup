# get data from the internet using scraping or hitting an api

class API 
  BASE_URL = "https://restcountries.eu/rest/v2/lang/"

  def get_info(selected_language_code)#this argument/parameter is needed to populate the country by language (user_input is being called in the cli) 
 # eg. get_info("ar") = "https://restcountries.eu/rest/v2/lang/ar" : this prints countries that speak arabic 
    response = HTTParty.get(BASE_URL + selected_language_code) 
#  binding.pry
  
    response.each do |names_hash|#returns the value one by one 
      Country.new(names_hash["name"]) #a new instance of Country class = name of country 
    end 
  end
end 

