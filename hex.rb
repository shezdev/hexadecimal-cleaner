#ruby hex.rb hex_only.txt


# I want to iterate over each character in a text file,
# print the character if it is a number or letter
# if it is an '=' delete/strip it => This works for substuting vowels with *# puts code.gsub(/[aeiou]/, '*')
# and move on to the next character.

# 1) LTTLE TEST
# code = "=a54=e68=i65=o20="
#     #puts code
#
#     # code.each_char { |i|
#     #  # puts i
#     # }
#
#     # puts "=a54=e68=i65=o20=".gsub(/[aeiou]/, '*')
#     # puts code.gsub(/[aeiou]/, '*')
# puts code.gsub(/[=]/, '')


# 2. READ INPUT FILE AND PRINT EACH LINE OUT

# file='hex_only.txt'
# File.readlines(file).each do |line|
# puts lin e
# end
#
# 3.READ INPUT FILE AND PRINT EACH character out
# file='hex_only.txt'
# File.readlines(file).each do |line|
# # puts line
#   line.each_char { |i|
#        puts i
#       }
# end

# 4.READ INPUT FILE AND PRINT EACH character out on one line at a time
# file='hex_only.txt'
# File.readlines(file).each do |line|
# # puts line
#   line.each_char { |i|
#        puts i.gsub(/[=]/, '')
#       }
# end

# 5.Try and put all data into a list for each line
# TIS PRINTS OUT ARRAYS!
# file='hex_only.txt'
# File.readlines(file).each do |line|
#   ar = []
#     line.each_char { |i|
#       x = i.gsub(/[=]/, '')
#       # ar = []
#       ar.push(x)
#       # # ar.each {|y| puts "Element was: #{y}"}
#         }
#     puts " ar is #{ar}"
# end

# 6.Try and put all data into a STRING CALLED LINEOFHEX - WORKS!
# file='hex_only.txt'
# File.readlines(file).each do |line|
#   lineofhex = ""
#     line.each_char { |i|
#       x = i.gsub(/[=]/, '')
#       lineofhex = lineofhex + x
#     }
#     puts lineofhex
# end

# 7.PASS FILENAMES IN FROM COMMAND LINE :)

#Use "ruby hex.rb hex_only.txt" to run from prompt

filename = ARGV.first
File.readlines(filename).each do |line|
  lineofhex = ""
    line.each_char { |i|
      x = i.gsub(/[=]/, '')
      lineofhex = lineofhex + x
    }
    puts lineofhex
end
