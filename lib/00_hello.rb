def ask_first_name
  puts "Quel est ton prénom ?"
  first_name = gets.chomp
  return first_name
end

def say_hello
  puts "Hello #{ask_first_name.capitalize} !?"
end
say_hello
