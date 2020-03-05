require 'bundler/setup'
Bundler.require

require_all 'lib'

require 'tty-prompt'
name = gets.chomp
def intro
    puts "   Hello, and welcome to Your Perfect Car!!!\n\n
    __---~~~~--__                      __--~~~~---__
    `\---~~~~~~~~\\                    //~~~~~~~~---/'  
      \/~~~~~~~~~\||                  ||/~~~~~~~~~\/ 
                  `\\                //'
                    `\\            //'
                      ||          ||      
            ______--~~~~~~~~~~~~~~~~~~--______              
       ___ // _-~                        ~-_ \\ ___  
      `\__)\/~                              ~\/(__/'          
       _--`-___                            ___-'--_        
     /~     `\ ~~~~~~~~------------~~~~~~~~ /'     ~\        
    /|        `\         ________         /'        |\     
   | `\   ______`\_      \------/      _/'______   /' |          
   |   `\_~-_____\ ~-________________-~ /_____-~_/'   |  
   `.     ~-__________________________________-~     .'       
    `.      [_______/------|~~|------\_______]      .'
     `\--___((____)(________\/________)(____))___--/'           
      |>>>>>>||                            ||<<<<<<|
    Your perfect car does....well exactly what it sounds like!!!\n
    it will find you the best car for all of your needs!!!\n\n\n "
end
def ready_check
    puts "   What is your name my friend?\n\n"
    name = gets.chomp
    prompt = TTY::Prompt.new(active_color: :red)
    r_check = prompt.select("\n\n     Are you ready to find the practical car of your dreams #{name}?!?\n\n", %w(YES  NO))
    if r_check == "YES"
        puts"\n\n\n     lets go find it!!\n\n\n"
    elsif r_check == "NO"
        puts "\n\n\n    THEN WALK BITCH!!!\n\n\n"  
          return if method == "NO"
        intro
    end
end
def hybrid_check
    prompt = TTY::Prompt.new(active_color: :red)
    hybrid = prompt.select("     Are you looking specifically for a hybrid?\n\n\n", %w(YES NO))
    if hybrid == "YES"
        puts "     Lost your balls huh?!?!\n\n\n"
    else hybrid == "NO"
        puts "     AWESOME YOU STILL HAVE YOUR BALLS!!!\n\n\n"
    end
end
def size_check
    prompt = TTY::Prompt.new(active_color: :red)
    choices = %w(Sub-compact--These-are-very-small-sedans-Hatchbacks-and-coupes 
                Compact--These-are-small-sedans-Hatchbacks-and-coupes 
                Midsize--These-are-great-family-cars-that-have-a-good-balance-between-size-and-efficiency 
                Fullsize--These-are-large-SUVs-that-typically-have-third-row-seating)
    size = prompt.select("     What size of car would you like to see??", choices)
end
def class_check
    prompt = TTY::Prompt.new(active_color: :red)
    choices = %w(Sedan Hatchback Crossover SUV Pickup Minivan Coupe)
    car_choice = prompt.select("     What class of car would you like to look into??\n\n", choices)
    if car_choice == "Sedan"
        puts "sedan works"
    elsif car_choice == "Hatchback"
        puts "Hatchback works"
    elsif car_choice == "Crossover"
        puts "Crossover works"
    elsif car_choice == "SUV"
        puts "SUV works"
    elsif car_choice == "Pickup"
        puts "Pickup works"
    elsif car_choice == "Minivan"
        puts "Minivan works"
    else car_choice == "Coupe"
        puts "Coupe works" 
    end
end
def price_check
    prompt = TTY::Prompt.new(active_color: :red)
    choices = %w(10,000-20,000 20,000-25,000 25,000-30,000 30,000-40,000 40,000-50,000 50,000+)
    pricing = prompt.select("     Whats your price range, you a big baller?!?", choices)
    if pricing == "10,000-20,000" 
        puts "10-20 works"
    elsif pricing == "20,000-25,000"
        puts "20-25 works"
    elsif pricing == "25,000-30,000"
        puts "25-30 works"
    elsif pricing == "30,000-40,000"
        puts "30-40 works"
    else pricing == "50,000+"
         puts "\n\n\nOh hey there big baller!!\n\n"
    end
end
def drivetrain_check
    prompt = TTY::Prompt.new(active_color: :red)
    choices = %w(All-wheel-drive Front-wheele-drive Rear-wheele-drive)
    drivetrain = prompt.select("     Which drivetrain would you like?", choices)
    if drivetrain == "All-wheel-drive"
        puts "Lets hit the mountains!!"
    elsif drivetrain == "Front-wheele-drive"
        puts "front-wheel-drive-works!!"
    else drivetrain == "Rear-wheel-drive"
        puts "Rear wheele works!!"
    end
end

binding.pry
0