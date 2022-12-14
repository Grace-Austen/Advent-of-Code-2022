file = File::open("input_4.txt")

lines = file.readlines
count = 0
for line in lines
    groups = line.split(",")
    g1 = groups[0].split("-")
    g2 = groups[1].split("-")
    g1_begin = g1[0].to_i
    g1_end = g1[1].to_i
    g2_begin = g2[0].to_i
    g2_end = g2[1].to_i
    if ((g1_begin <= g2_begin && g2_end <= g1_end) || (g2_begin <= g1_begin && g1_end <= g2_end))
        count += 1
    end
    # printf("g1[0]: %2d, g1[1]: %d\ng2[0]: %2d, g2[1], %d\nContained?: %s, Count: %d\n", g1[0], g1[1], g2[0], g2[1], (g1_begin <= g2_begin && g2_end <= g1_end) || (g2_begin <= g1_begin && g1_end <= g2_end), count)
end
puts count
