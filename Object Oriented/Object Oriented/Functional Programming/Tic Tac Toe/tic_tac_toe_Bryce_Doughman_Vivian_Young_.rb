# Tic Tac Toe
# Period 3
# Bryce Doughman
# Vivian Young

# Method Prints out Board
ray = [["X", "O", "X"], ["X", "-", "-"], ["X", "-", "O"]]

def board_state(ray = [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]])
	ray_abc = [" ","A","B","C"]
	index_abc = 0
	while index_abc < ray_abc.length
		print ray_abc[index_abc] + " "
	index_abc += 1
	end
	print "\n"

	index = 0
	row_num = 1
	while index < ray.length
		ray[index].unshift(row_num)
		index1 = 0
		while index1 < ray[index].length
			if index1 < 3
				print ray[index][index1].to_s + " "
			else
			puts ray[index][index1]
			end
			index1 += 1
		end
		index += 1
		row_num += 1
	end
end

ray = [["O", "O", "O"], 
	   ["-", "-", "-"], 
	   ["X", "-", "O"]]


# Method that Checks for Winner
def check_for_winner(ray)
	if vertical_check(ray) == ["X", "vertically"] || ["O", "vertically"]
		print vertical_check(ray)
	elsif horizontal_check(ray) == ["X", "horizontally"] || ["O", "horizontally"]
		print horizontal_check(ray)
	else 
		p nil
	end
end

def vertical_check(ray)
# Return array
result_win = [["X","O"], ["horizontally", "vertically"]]
# Possible X wins
	if ray[0][0]=="X" && ray[1][0]=="X" && ray[2][0]=="X"
		print [result_win[0][0], result_win[1][1]]
	elsif ray[0][1]== "X" && ray[1][1]=="X" && ray[2][1]=="X"
		print [result_win[0][0], result_win[1][1]]
	elsif ray[0][2]== "X" && ray[1][2]=="X" && ray[2][2]=="X"
		print [result_win[0][0], result_win[1][1]]
# Possible O wins
	elsif ray[0][0]== "O" && ray[1][0]=="O" && ray[2][0]=="O"
		print [result_win[0][1], result_win[1][1]]
	elsif ray[0][1]== "O" && ray[1][1]=="O" && ray[2][1]=="O"
		print [result_win[0][1], result_win[1][1]]
	elsif ray[0][2]== "O" && ray[1][2]=="O" && ray[2][2]=="O"
		print [result_win[0][1], result_win[1][1]]
	else
		print nil
	end
end


def horizontal_check(ray)
# Return array
result_win = [["X","O"], ["horizontally", "vertically"]]

# Possible X wins
	if ray[0][0]=="X" && ray[0][1]=="X" && ray[0][2]=="X"
		print [result_win[0][0], result_win[1][0]]
	elsif ray[1][0]== "X" && ray[1][1]=="X" && ray[1][2]=="X"
		print [result_win[0][0], result_win[1][0]]
	elsif ray[2][0]== "X" && ray[2][1]=="X" && ray[2][2]=="X"
		print [result_win[0][0], result_win[1][0]]
# Possible O wins
	elsif ray[0][0]=="O" && ray[0][1]=="O" && ray[0][2]=="O"
		print [result_win[0][1], result_win[1][0]]
	elsif ray[1][0]== "O" && ray[1][1]=="O" && ray[1][2]=="O"
		print [result_win[0][1], result_win[1][0]]
	elsif ray[2][0]== "O" && ray[2][1]=="O" && ray[2][2]=="O"
		print [result_win[0][1], result_win[1][0]]
	else
		print nil
	end
end


check_for_winner(ray)



