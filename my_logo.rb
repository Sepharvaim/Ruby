
# hash = 2
# space = 3

# 2.times do 

#   4.times do
#   print " " * space.abs
#   print "#" * hash.abs
#   print " " * space.abs
#   puts 
#   space = space - 1 
#   hash = hash + 2
# end
# space = space + 1
# hash = (hash * -1)+2
# end


# 5.times do
# hash = 1
# space = 12
# ext_space = 0
# 2.times do
# 4.times do 
#     print " " * ext_space.abs
#     print "#" * hash.abs
#     print " " * space.abs
#     print "#" * hash.abs
#     puts 
#     hash = hash + 1
#     space = space -4
#     ext_space = ext_space + 1
# end
# ext_space = (ext_space * -1)+1
# space = space + 4
# hash = (hash * -1)+1
# end
# end

#  ########  ##
##  ######  # #
# #  ####  #  #
#  #  ##  #   #
# #   ##   #  #
# #  ####   # #
##  ######   ##
#  ########   #


#  .  ###########  .  #
# #  . ######### .  # #
# # #  . #####  . # # #
# # # #  . #  . # # # #
# # # # #  .  # # # # #
# # # # .  # .  # # # #
# # # .  ##### .  # # #
# # .  ######### .  # #
# .   ###########  .  #
 

########################
##  . ############ .  ##
###  . ########## .  ###
####  . ######## .  ####
#####  . ###### .  #####
######  . #### .  ######
#######  . ## .  #######
########  .  .  ########
########################
def my_logo
  print "_" * 24
  outer_hash = 2
  inner_hash = 12
  puts
  7.times do
    print "|" * outer_hash
    print "  ", " ", " ", "+" * inner_hash , " ", " ", "  "
    print "|" * outer_hash
    puts
    inner_hash -= 2
    outer_hash = outer_hash + 1
  end
  print "#" * 24
end
