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
    puts "TWO: How fit are you?\n1: I could climb a mountain\n2: Dost thou even hoist, brethren?\n3: Crossfit is a lifestyle\n4: I run... to the fridge\n"
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
    puts "THREE: How do you act when upset?\n1: I'm above such `emotion`\n2: I might throw a tantrum or a chair\n3: I go to war\n4: I stay home and eat ice cream\n"
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
    puts "FOUR: How would your friends describe you?\n1: You like to sing\n2: You have a lot of stuff in your house\n3: You are ambitious\n4: You are short and loyal\n"
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
    puts "FIVE: What is your favorite date?\n1: Sunset horseback ride\n2: Visit a brewery\n3: Play Call of Duty\n4: Brunch!!!\n"
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
    puts "SEVEN: What is your favorite animal?\n1: Unicorn\n2: Boar\n3: Dog\n4: Cat\n"
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
    puts "NINE: What is your favorite landscape?\n1: Forests\n2: Mountains\n3: Beaches\n4: Meadows\n"
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
elf_profile = "#{name}wë #{last_initial}inuviël, you are an elf! You are very competent and do everything gracefully and beautifully. You love nature, singing, and being better-looking than everyone else, but these attributes can lead you to being snobbish and arrogant."
dwarf_profile = "#{name}ïn #{last_initial}oldbeard, you are a dwarf! You are honorable, serious, strongly opinionated and extremely confident in who you are. You love hiking and dirt. However, you are a little bit of a hoarder, and can come on a little too strong."
human_profile = "#{name}gorn, son/daughter of #{last_initial}arathorn, you are a Middle-earth human! You are adaptable, dynamic, and able to get things done. You have a strong drive for yourself and your friends, and are susceptible to disease and old age :("
hobbit_profile = "#{name}bo #{last_initial}obbins, you are a hobbit! You are short, love to eat many meals and have huge, hairy feet. You are a simple, fun-loving, and loyal friend. In trying circumstances, you try to be positive and prove yourself to be quite brave. You have strong ties to your family and to tradition."
wizard_profile = "You are a magical wizard named #{name}dalf the Chartreuse. You are beautiful, noble, adapatable, and short. You were born as an old person like Benjamin Button and that means you're wise!"

if (count_1 > count_2 && count_1 > count_3 && count_1 > count_4) 
    puts elf_profile
    puts "                  .;;,.
                  ; ' ;\ \//
                 \|o (o|7 \//
                 j| ..  | ||/
                //'.--.')\-,/
              .-||- '' ||/  `-.
             ;  | \ |/ |/ L.  ,|
             f\ |\| Y  || \ '._|
            j | \|     (| |   | |
           |  L_\         L.__: |
            \(  '-.,-,    |   ; |
             |'-.'.L_rr>  f--f  |
.-=,,______,--------- J-. ;  ;__ 
   ``-,__   |  |      h  |  f  '--.__
       `--;;--,_       h  f-j   |   __;==-.
            / `-''-,,__J,'  \_..--:'-'     '
            | |    `' --L7//'-'`|
            | ,     ||  h    |  (
            | ;     | \ J    j   |
            | L__   | |  L_.'    |
            |   |'-.| L.'h  |  : |
            |;  \     |  J ; : : |
            | :  (    \  'L| : : |
            | ;   |'.--|    \  : |
            | | : \    \-, /`\ : |
            L-'-;__\   \| '  | | |
                    ;   \|   |'L_j
                    _>  _|   |
             snd   <___/ /-  |
                        /    /
                        '---'"
elsif (count_2 > count_1 && count_2 > count_3 && count_2 > count_4) 
    puts dwarf_profile
    puts "             _.-;-._
            ;_.JL___; 
            F-/\_-7L
            | o/ o | |
           ,L,c;,.='/;,
        _,-;;S:;:S;;:' '--._
       ;. \;;s:::s;;: .'   /|
      /  \  ;::::;;  /    /  |
     / ,  k ;S';;'S.'    j __,l
  ,---/| /  /S   /S '.   |'   ;
 ,Ljjj |/|.' s .' s   \  L    |
 LL,_ ]( \    /    '.  '.||   ;
 ||\ > /  ;-.'_.-.___\.-'(|==(
 JJ, /   |_  [   ]     _]|   /
  LL\/   ,' '--'-'-----'  \  ( 
  ||     ;      |          |  >
  JJ     |      |\         |,|
   LL    |      ||       ' | 
   ||    |      ||       . |
   JJ    /_     ||       ;_|
    LL   L ==='|i======='_|
    ||    i----' '-------';
    JJ    ';-----.------,-'
     LL     L_.__J,'---;'
     ||      |   ,|    (
     JJ     .'=  (|  ,_|
      LL   /    .'L_    |
snd   ||   '---'    '.___>"
elsif (count_3 > count_1 && count_3 > count_2 && count_3 > count_4) 
    puts human_profile
    puts "                    (.
                   / |
                  _\ /_
        .     .  (,'v`.)  .     .
        \)   ( )  ,' `.  ( )   (|
         \`. / `-'     `-' \ ,'|
          : '    _______    ' :
          |  _,-'  ,-.  `-._  |
          |,' ( )__`-'__( ) `.|
          (|,-,'-._   _.-`.-.|)
          /  /<( o)> <( o)>\  |
          :  :     | |     :  :
          |  |     ; :     |  |
          |  |    (.-.)    |  |
          |  |  ,' ___ `.  |  |
          ;  |)/ ,'---'. \(|  :
      _,-/   |/\(       )/\|   \-._
_..--'.-(    |   `-'''-'   |    )-.`--.._
         `.  ;`._________,':  ,'
        ,' `/               \'`.
             `------.------'          SSt
                    '"
elsif (count_4 > count_1 && count_4 > count_2 && count_4 > count_3) 
    puts hobbit_profile
    puts "                       \ : /
                    '-: __ :-'
                    -:  )(_ :--
                    -' |r-_i'-
            ,sSSSSs,   (2-,7
            sS';:'`Ss   )-j
           ;K e (e s7  /  (
            S, ''  SJ (  ;/
            sL_~~_;(S_)  _7
|,          'J)_.-' />'-' `Z
j J         /-;-A'-'|'--'-j|
 L L        )  |/   :    /  |
  | |       | | |    '._.'|  L
   | |      | | |       | \  J
    | |    _/ | |       |  ',|
     | L.,' | | |       |   |/
    _;-r-<_.| \=\    __.;  _/
      {_}  L-'  '--'   / /|
            |   ,      |  \|
            |   |      |   )
            L   ;|     |   /|
           /|    ;     |  / |
          | |    ;     |  ) |
         |  |    ;|    | /  |
         | ;|    ||    | |  |
         L-'|____||    )/   |
             % %/ '-,- /    /
     snd     |% |   \%/_    |
          ___%  (   )% |'-; |
        C;.---..'   >%,(   '
                   /%% /
                  Cccc'"
else
    puts wizard_profile
    puts "                              /|
                            /  \|
                           |    |
                         --:'''':--
                           :'_' :
                           _:"":\___
            ' '      ____.' :::     '._
           . *=====<<=)           \    :
            .  '      '-'-'\_      /'._.'
                             \====:_ ""
                            .'     ||
                           :       :
                          /   :    |
                         :   .      '.
         ,. _        snd :  : :      :
      '-'    ).          :__:-:__.;--'
    (        '  )        '-'   '-'
 ( -   .00.   - _
(    .'  _ )     )
'-  ()_.\,\,   -"
end


# return that profile to user
# create an appropriate name based on the user's given name
