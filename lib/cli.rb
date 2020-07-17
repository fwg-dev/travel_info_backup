# primary job of the CLI class is to provide the user interface - ‘gets’ and ‘puts’
class CLI 
 attr_reader :api, :country

  def start
    @api = API.new
    user_interaction
  end 
    
  def user_interaction
    space 
    print "Welcome to your travel guide.".yellow 
    space
    print "When you select a language from the menu below, the program will display a list of countries that speak that language.".yellow
    space
  while(true)
    puts "\nWhat language would you like to learn about? Please select a number from the menu and press enter"
      print " \n 1.Arabic \n 2.English\n 3.French \n 4.Spanish\n\n".cyan
    user_input = gets.strip
 
    if user_input == "1"
      countries = @api.get_info("ar")
      return countries_list#for each country print country.name
    elsif user_input == "2"
      countries = @api.get_info("en")
      return countries_list
    elsif user_input == "3"
      countries = @api.get_info("fr")
      return countries_list
    elsif user_input == "4"
      countries = @api.get_info("es")
       return countries_list
    else 
  
    puts "Wrong input, please try again!".red
    next #equivalent of 'continue' in java? 
    end
   
    puts "\nCurious about a different language? press 'y' to continue press any key to exit".magenta
    user_input = gets.strip.to_s.downcase
    if user_input == "y"
     next
    else 

    puts "Thank you, See you later!". yellow 
      break
    end  
    end 
  end 
   
  def space 
    puts ""
  end 
  end 
