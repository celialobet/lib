# def get_name
#     puts "quel est ton prénom?"
#     print ">"
#     first_name = gets.chomp
#     return first_name
# end

# def hello(first_name)
#     puts "Hello #{first_name}"
# end

# def hello_name
#     first_name = get_name
#     hello(first_name)
# end

# hello_name

def ask_first_name
    puts "Quel est ton prénom ?"
    print "> "
    first_name = gets.chomp
    return first_name
end

def say_hello(first_name)
    puts "Bonjour, #{first_name}!"
end


def perform
    first_name = ask_first_name
    say_hello(first_name)
end
  
perform



