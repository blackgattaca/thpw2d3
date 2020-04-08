def signup
  puts "Veuillez entrer un mot de passe"
  password = gets.chomp
  puts "mot de passe enregistré"
  return password
end

def login(password)
  puts "Merci de vous logger"
  re_pass = gets.chomp
  
  if re_pass == password
    welcome_screen
  else
    puts "mot de passe incorrect"
     login(password)
  end
end
def welcome_screen
  puts "Bienvenue chez Evil Corp"
end

def perform
  password = signup
  login(password)
end
perform
