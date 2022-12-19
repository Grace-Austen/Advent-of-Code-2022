file = File::open("input_5.txt")

lines = file.readlines

cargo = Array.new(9) {Array.new}

puts cargo.to_s

# 0 is top of cargo stack
0.upto(7){ |line|
    puts lines[line]
    start = 1
    for i in 0..8
        char = lines[line][start+(4*i)]
        next if char == " "
        cargo[i].push(char)
    end
}

instructions = lines[10..-1]

for line in instructions
    sep = line.split(" ")
    stack = cargo[sep[3].to_i-1].shift(sep[1].to_i)
    cargo[sep[5].to_i-1].unshift(stack).flatten!(1)
end

puts cargo.to_s

answer = []

for stack in cargo
    answer<<stack[0]
end

puts answer.join