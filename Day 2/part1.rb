def get_round_score (opponent, player)
    opponent_encoding = opponent == "A" ? 1 : opponent == "B" ? 2 : opponent == "C" ? 3 : null
    player_encoding = player == "X" ? 1 : player == "Y" ? 2 : player == "Z" ? 3 : null
    if player_encoding - opponent_encoding == 0 # tie
        printf("%s : %s = %d -> %s, score: %d\n", opponent, player, player_encoding - opponent_encoding, "tie", player_encoding + 3)
        return player_encoding + 3
    elsif player_encoding - opponent_encoding == 1 || player_encoding - opponent_encoding == -2 # win
        printf("%s : %s = %d -> %s, score: %d\n", opponent, player, player_encoding - opponent_encoding, "win", player_encoding + 6)
        return player_encoding + 6
    else
        printf("%s : %s = %d -> %s, score: %d\n", opponent, player, player_encoding - opponent_encoding, "loss", player_encoding)
        return player_encoding # loss
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

