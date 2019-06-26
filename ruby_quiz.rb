class String
  def initial
    self[0,1]
  end
end

# Prompts for name and capitalizes the first letter of the input
puts 'Welcome to the quiz! What is your first name?'
name = gets.chomp.downcase.capitalize

puts 'What is your last name?'
last_initial = gets.chomp.initial.upcase

# Create array to store responses
$responses = []

# Prompt for the questions and provides responses
def question1
    puts "ONE: What hours of the day do you work best?\n1: When the sunlight is perfect.\n2: All day errday.\n3: 9-5\n4: Briefly in the early afternoon."
    # Gets answer input
    q1 = gets.chomp
    # Shovel into array only if "1", "2", "3", or "4"
        if (q1 == "1" or q1 == "2" or q1 == "3" or q1 == "4")
            $responses << q1
        # If not 1, 2, 3 or 4, gives a message and re-do the question
        else
            p 'Please input only 1, 2, 3, or 4'
            question1
        end
end

question1

def question2
    puts "TWO: How fit are you?\n1: I could climb a mountain\n2: Dost thou even hoist, brethren?\n3: Crossfit is a lifestyle\n4: I like to eat\n"
    q2 = gets.chomp.upcase
        if (q2 == "1" or q2 == "2" or q2 == "3" or q2 == "4")
            $responses << q2
        else    
            p 'Please input only 1, 2, 3, or 4'
            question2
        end
end

question2

def question3
    puts "THREE: How do you act when upset?\n1: I'm above such `emotion`\n2: Throw\n3: Start a war\n4: Take solace in an extra treat\n"
    q3 = gets.chomp.upcase
    if(q3 == "1" or  q3 == "2" or q3 == "3" or q3 == "4")
        $responses << q3
    else 
        p 'Please input only 1, 2, 3, or 4'
        question3
    end
end

question3

def question4
    puts "FOUR: How would your friends describe you?\n1: You like to sing\n2: You tend to be a hoarder\n3: You are ambitious\n4: You are short and loyal\n"
    q4 = gets.chomp.upcase
    if(q4 == "1" or  q4 == "2" or q4 == "3" or q4 == "4")
        $responses << q4
    else 
        p 'Please input only 1, 2, 3, 4'
        question4
    end
end

question4

def question5
    puts "FIVE: Favorite date?\n1: Sunset horseback ride\n2: Visit a brewery\n3: Play Call of Duty\n4: Brunch!!!\n"
    q5 = gets.chomp.upcase
    if(q5 == "1" or q5 == "2" or q5 == "3" or q5 == "4")
        $responses << q5
    else 
        p 'Please input only 1, 2, 3, 4'
        question5
    end
end

question5

def question6
    puts "SIX: What was your favorite subject in high school?\n1: Astronomy\n2: Woodshop\n3: Lunch\n4: Home Economics\n"
    q6 = gets.chomp.upcase
    if(q6 == "1" or q6 == "2" or q6 =="3" or q6 == "4")
    $responses << q6
    else
        p 'Please input only 1, 2, 3, 4'
        question6
    end
end

question6


def question7 
    puts "SEVEN: What is your favorite animal?\n1: Horse\n2: Boar\n3: Dog\n4: Cat\n"
    q7 = gets.chomp.upcase
    if(q7 == "1" or q7 == "2" or q7 =="3" or q7 == "4")
    $responses << q7
    else
        p 'Please input only 1, 2, 3, 4'
        question7
    end
end

question7

def question8
    puts "EIGHT: What's your IQ?\n1: I know enough\n2: Smarter than the average bear\n3: Really high. Can't even measure how high\n4: I don't know\n"
    q8 = gets.chomp.upcase
    if(q8 == "1" or q8 == "2" or q8 =="3" or q8 == "4")
    $responses << q8
    else
        p 'Please input 1, 2, 3, 4'
        question8
    end
end

question8 

def question9
    puts "NINE: What is your favorite landscape?\n1: Forest\n2: Mountains\n3: Beach\n4: Meadows\n"
    q9 = gets.chomp.upcase
    if(q9 == "1" or q9 == "2" or q9 =="3" or q9 == "4")
    $responses << q9
    else
        p 'Please input 1, 2, 3, 4'
        question9
    end
end

question9

# count how many of A, B, C, D
# find most common-occuring selection
p $responses
count_1 = $responses.count("1")
count_2 = $responses.count("2")
count_3 = $responses.count("3")
count_4 = $responses.count("4")

# Add names
elf_profile = "#{name}wë #{last_initial}inuviël, you are an elf! You are really competent and do everything gracefully and beautifully. You love nature, singing, and being better-looking than everyone else, but these attributes can lead you to being snobbish and too proud."
dwarf_profile = "#{name}ïn #{last_initial}oldbeard, you are a dwarf! You are honorable, serious, strongly opinionated and extremely confident in who you are. You love hiking and dirt. However, you are a little bit of a hoarder, and can come on a little too strong."
human_profile = "#{name}gorn, son/daughter of #{last_initial}arathorn, you are a Middle-earth human! You are adaptable, dynamic, and able to get things done. You have a strong ambition for yourself and your friends, and are susceptible to disease and old age :("
hobbit_profile = "#{name}bo #{last_initial}obbins, you are a hobbit! You are short, love to eat many meals and have huge, hairy feet. You are a simple, fun-loving individual. In trying circumstances, you try to be positive and prove yourself to be quite brave. You have strong ties to your family and to tradition."
wizard_profile = "You are a magical wizard named #{name}dalf the Chartreuse. You are beautiful, noble, adapatable, and short. You were born as an old person like Benjamin Button and that means you're wise!"

# return something if there are two frontrunners
new_frontrunner = ""
if (count_1 > count_2 && count_1 > count_3 && count_1 > count_4) 
    puts elf_profile
elsif (count_2 > count_1 && count_2 > count_3 && count_2 > count_4) 
    puts dwarf_profile
elsif (count_3 > count_1 && count_3 > count_2 && count_3 > count_4) 
    puts human_profile
elsif (count_4 > count_1 && count_4 > count_2 && count_4 > count_3) 
    puts hobbit_profile
else
    puts wizard_profile
end


# return that profile to user
# create an appropriate name based on the user's given name
