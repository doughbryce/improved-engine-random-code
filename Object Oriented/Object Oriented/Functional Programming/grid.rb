grid = [["a", "b", "c"], 
		["d", "e", "f"], 
		["g", "h", "i"]]

def print_grid(grid)
	index = 0
	while index < grid.length
		grid[index]
		index1 = 0
		while index1 < grid[index].length
			p grid[index][index1]
			index1 += 1
		end
		index += 1
	end
end

print_grid(grid)