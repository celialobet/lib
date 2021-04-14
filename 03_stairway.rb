def menu 
  puts "======  WELCOME IN STAIR WAY  ======"
end 

def roll_dice 
  puts "Tapez sur enter pour lancer le dé"
  gets
  number = rand(1..6)
  puts number
  return number
end

def compare(stair, number) 
  if number == 5 || number == 6
    puts "Vous avez monté une marche !"
    stair +=1
  elsif number == 1
    if stair >= 1
      puts "Vous êtes descendu d'une marche !"
      stair -= 1
    end
  else 
    puts "Vous restez sur la même marche !"
  end
  puts "Vous êtes à la marche #{stair} !"
  return stair 
end

def verif(stair)
  if stair == 10
    return true
  else
    return false
  end
end

def perform (stair)
  win = false
  while win == false
    menu
    number = roll_dice
    stair = compare(stair, number)
    win = verif(stair)
    
  end
end
# ---------------------------------------------------------

stair = 0
perform(stair)

