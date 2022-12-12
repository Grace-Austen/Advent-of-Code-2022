
inFile = File::open("input_1.txt")

value = 0
elves = Array.new()

loop do
    nextLine = inFile.readline
    if nextLine != "\n"
        value += nextLine.to_i
    else
        elves.push(value)
        value = 0
    end
break if inFile.eof?
end

puts elves.max
