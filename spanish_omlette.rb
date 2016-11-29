# 0. defining the methods
def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

 # 1. defining ingredients
NUM_POTATOES = 5 #constant - won't change the value
NUM_EGGS = 6 #constant - won't change the value

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]

# 2. Print out the ingredients
puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

# 3. Asking if we have all the ingredients
loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "You need to go shopping"
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input. Try again."
  end
end
