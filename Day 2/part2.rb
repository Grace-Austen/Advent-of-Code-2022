def get_round_score (opponent, outcome)
    opponent_encoding = opponent == "A" ? 1 : opponent == "B" ? 2 : opponent == "C" ? 3 : null
    outcome_encoding = outcome == "X" ? -1 : outcome == "Y" ? 0 : outcome == "Z" ? 1 : null
    player_encoding = (opponent_encoding + outcome_encoding) % 3
    player_encoding = player_encoding == 0 ? 3 : player_encoding
    if outcome_encoding == 0 # tie
        printf("%s : %s = %d -> %s, score: %d\n", opponent, outcome, player_encoding, "tie", player_encoding + 3)
        return player_encoding + 3
    elsif outcome_encoding == 1 # win
        printf("%s : %s = %d -> %s, score: %d\n", opponent, outcome, player_encoding, "win", player_encoding + 6)
        return player_encoding + 6
    else # loss
        printf("%s : %s = %d -> %s, score: %d\n", opponent, outcome, player_encoding, "loss", player_encoding)
        return player_encoding 
    end
end

file = File::open("input_2.txt")
sum = 0
loop do
    nextLine = file.readline.split(" ")
    sum += get_round_score(nextLine[0], nextLine[1])
break if file.eof?
end

puts sum

