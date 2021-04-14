def signup
  puts "Create a password:"
  print "> "
  password = gets.chomp
  return password
end

def login (password)
  input = ""
  while input != password
    puts "Enter your password :"
    print "> "
    input = gets.chomp
    if input != password
      puts "Please try again, password false"
    end
  end
  return true
end

def welcome_screen 
  puts "====  WELCOME TO THE NSA ===="
  puts ""
  puts "-> Kennedy's files"
  puts "-> Wall Street Center's files"
end

def perform
  password = signup
  if login(password)
    welcome_screen
  end
end

# -------------------------


perform