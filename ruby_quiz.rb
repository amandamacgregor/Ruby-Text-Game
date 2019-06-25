# Prompts for name and capitalizes the first letter of the input
puts 'Welcome to the quiz! What is your name?'
name = gets.chomp.capitalize

# Create array to store responses
responses = []

# Prompt for the questions and provides responses
puts "1. What hours of the day do you work best?\nA: When the sunlight is perfect.\nB: All day errday.\nC: 9-5\nD: Briefly in the early afternoon."
# Gets answer input
q1 = gets.chomp.upcase
# Put into array
responses << q1

puts "2. How fit are you?\nA:I could climb a mountain.\nB: Dost thou even hoist, brethren?\nC: Crossfit is a lifestyle.\nD: I like to eat."
q2 = gets.chomp.upcase
responses << q2

puts "3. How do you act when upset?\nA: I'm above such `emotion`\nB:Throw\nC:Start a war\nD:Take solace in an extra treat."
q3 = gets.chomp.upcase
responses << q3

puts "4. How would your friends describe you?\nA: They like to sing\nB:They like to collect(hoarders)\nC: Ambitious\n:Short and loyal"
q4 = gets.chomp.upcase
responses << q4

puts "5. Favorite date?\nA: Sunset horseback ride\nB: Visit a brewery\nC: Play Call of Duty\nD: Brunch!!!"
q5 = gets.chomp.upcase
responses << q5

puts "6. What was your favorite subject in high school?\nA: Astronomy\nB: Woodshop\nC: Lunch\nD: Home Economics"
q6 = gets.chomp.upcase
responses << q6

puts "7. What is your favorite animal?\nA: Horse\nB: Boar\nC: Dog\nD: Cat"
q7 = gets.chomp.upcase
responses << q7

puts "8. What's your IQ?\nA: I know enough.\nB: Smarter than the average bear.\nC: Really high. Can't even measure how high.\nD: I don't know."
q8 = gets.chomp.upcase
responses << q8

puts "9. What is your favorite landscape?\nA: Forest\nB: Mountains\nC: Beach\nD: Meadows"
q9 = gets.chomp.upcase
responses << q9

# count how many of A, B, C, D
# find most common-occuring selection
p responses
count_a = responses.count("A")
count_b = responses.count("B")
count_c = responses.count("C")
count_d = responses.count("D")

elf_name = name.new_function
elf_profile = "You are an elf named #{elf_name}!"

new_frontrunner = ""
if (count_a > count_b && count_a > count_c && count_a > count_d) {
    new_frontrunner = "Elf"
    puts elf_profile
}elsif (count_b > count_a && count_b > count_c && count_b > count_d) {
    new_frontrunner = "Dwarf"
}elsif (count_c > count_a && count_c > count_b && count_c > count_d) {
    new_frontrunner = "Man"
}elsif (count_d > count_a && count_d > count_b && count_d > count_c) {
    new_frontrunner = "Hobbit"
}


# return that profile to user
# create an appropriate name based on the user's given name
