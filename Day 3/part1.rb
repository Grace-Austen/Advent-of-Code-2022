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
    newLine = file.readline.strip
    compartment1 = newLine[0,newLine.length/2]
    compartment2 = newLine[newLine.length/2,newLine.length/2]
    # puts compartment1 + " " + compartment2
    commonItem = compartment1.split("").to_set.intersection(compartment2.split(""))
    sum += alpha_table[commonItem.to_a[0]]

break if file.eof?
end

puts sum

