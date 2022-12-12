require 'set'

#alpha table code from ruby forum 
#https://www.ruby-forum.com/t/how-to-replace-a-letter-with-a-corresponding-number/219968
alpha_table = {}
(('a'..'z').zip(1..26)).each { |x| alpha_table[x[0]] = x[1] }
(('A'..'Z').zip(27..52)).each { |x| alpha_table[x[0]] = x[1] }

puts alpha_table["C"]

file = File::open("input_3.txt")
sum = 0
loop do
    elf1 = file.readline
    elf2 = file.readline
    elf3 = file.readline
    commonItem = elf1.split("").intersection(elf2.split("")).intersection(elf3.split(""))
    puts commonItem
    sum += alpha_table[commonItem[0]]

break if file.eof?
end

puts sum

