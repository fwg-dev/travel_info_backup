My Appllication 



#User Stories
- 
User- Is a traveler who wants to plan their next trip and is curious about languages spoken around the world.As a User, I can specifically use this app to research about 4 main languages and where they are spoken in the world.

#Classes 
CLI 
 -attributes 
  -an api instance - instantiated in CLI#initialize



 -methods


API 
-constants


-Countries? 




#Relationships



#codes that worked: 


require "httparty"
BASE_URL = "https://restcountries.eu/rest/v2/lang/"
selected_language_code = "ar"
response = HTTParty.get(BASE_URL + selected_language_code)
countries =[]
 response.select {|i| countries.push(
   {name: i["name"], area: i["area"]}
   )}
   puts countries 

response.select {|i| puts i["name"]}

 Res[0]["name"]

selected_language_code = "ar"

def get_info(selected_language_code)
 response = HTTParty.get(BASE_URL + selected_language_code)
 countries = []
 response.select {|i| countries.push(i["name"])}
 return countries
end
if choice = 1 
   countries = api.get_info("en")
   puts countries
  end 
 - the above code(46 - 56) works because it spits out the list of countries  46-50 belongs to the api class and 52 - 55 belongs to the cli class 

notes from API 

class API 

  BASE_URL = "https://restcountries.eu/rest/v2/lang/"


def get_info(selected_language_code)

 response = HTTParty.get(BASE_URL + selected_language_code)
 countries=[]
 response.select {|i| countries.push(i["name"])}

 return countries
#  binding.pry

end

notes from CLI(assesment prep) 
 #self #what is self? in an class method, it's the class  the class used to call the method

#self # what is self? in an instance method, it is an instance- the instance used to call the method
    
 Is there any way I could have my user_input change dictate what is being pulled from my api? 


#provide the user interface - to get user input and puts
#this runs the show - this is the users session
require 'colorize'
 require 'pry'

Gem installation 
``ruby
gem 'travel_info'
```

And then execute:

    $ bundle install

Or install it yourself as:

 chmod go-w /usr/local/bin

how to set info for countries.rb to grab more attributes 

api class
countries =[]
  response.select {|i| countries.push(Country.new(i["name"], i["capital"]))}
  return countries

  







  --------------------------
  # class API 
#   # attr_accessor :response
#   BASE_URL = "https://restcountries.eu/rest/v2/lang/"

#   # def initialize
#   #   @response = []
#   # end

#   def get_info(selected_language_code)
#     #this argument is needed #get requests the server to return either a collection or a single item of collection 
#     response = HTTParty.get(BASE_URL + selected_language_code)  
#    #  binding.pry
#     countries =[]
#     response.select {|i| countries.push(Country.new(i["name"])}
#     return countries
#   end
#   end 
-------------------------------
# puts countries #this prints out the list of countries when called upon 


# print_countries =  response.select {|i| countries.push(i["name"])}

# get_info(selected_language_code)

#  response.select {|i| countries.push(
#    {name: i["name"], area: i["area"]}
#    )}
#selcted_language = "ar"




[branch "master"]
	remote = origin
	merge = refs/heads/master
  