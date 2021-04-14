def menu 
    puts "======  WELCOME IN STAIR WAY  ======"
  end 
  
  def roll_dice 
    number = rand(1..6)
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
    # puts "Vous êtes à la marche #{stair} !"
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
    count = 0 
    while win == false
      number = roll_dice
      stair = compare(stair, number)
      win = verif(stair)
      count += 1
    end
    return count
  end

  def average_finish_time (stair)
    total = 0
    100.times do
      total = total + perform(stair)
    end
    total = total / 100
    puts "Le nombre de tours moyen pour arriver à la 10ème marche est de #{total} lancés !"
  end

  # ---------------------------------------------------------
  stair = 0
  average_finish_time (stair)
  