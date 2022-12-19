file = File::open("input_5.txt")

lines = file.readlines

cargo = Array.new(9) {Array.new}

puts cargo.to_s

7.downto(0){ |line|
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
    sep[1].to_i.times{
        crate = cargo[sep[3].to_i-1].pop
        cargo[sep[5].to_i-1].push(crate)
    }
end

puts cargo.to_s

answer = []

for stack in cargo
    answer<<stack[-1]
end

puts answer.join