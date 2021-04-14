def ask_floor
    floor = 0 
   while floor < 1 || floor > 25
     puts "combien d'étage ?"
     print ">"
     floor = gets.chomp.to_i
     return floor
   end
end

def full_pyramid (floor)
    space = floor - 1
    hashtag = floor - space
    floor.times do 
      space.times do
        print " "
      end
      hashtag.times do
        print "#"
      end
    print hashtag
    print space
    puts ""
    
    space -= 1
    hashtag += 2
    end
  end

def wtf_pyramid (floor)
    reset = floor - 1
    space = floor - 1
    hashtag = floor - space
  
    floor.times do 
      space.times do
        print " "
      end
      hashtag.times do
        print "#"
      end
      puts ""
  
      if space == 0
        reset.times do
          space += 1
          hashtag -=2
          space.times do
            print " "
          end
          hashtag.times do
            print "#"
          end
          puts ""
        end
      end
      space -= 1
      hashtag += 2
    end
end  

# ---------------------------------------------



  
# def half_pyramid_1(floor)
#     i = 1

#     do
#      print " " * (floor - i)
#      puts "#" * i
#      i+=1
#     end

# end

# def half_pyramid_2(floor)
    
#     i=1  
    
#     floor.times do
#         if i==1
#             puts " "
#         else
#             puts "#" * i
#         end
#         i+=1
#     end
# end

# def full_pyramid
#   floor=ask_floor
#   i=1
#   floor.times do
#   print half_pyramid_1(i)
#   half_pyramid_2 (i)
# end

# full_pyramid  