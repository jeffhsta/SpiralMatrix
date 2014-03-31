class SpiralMatrix
	
	def spiral(columns, lines)
		return [] if invalid_values? columns, lines
		@columns = columns
		@lines = lines
		@matrix = []
		@current_number = 1
		@last_number = @lines * @columns
		current_line = 0
		current_column = 0

		define_matrix_nil
		
		if @lines > 1
			while @current_number < @last_number do
				set_values_from_left_to_right current_line
				set_values_from_up_to_down ((@columns - 1) - current_column)
				set_values_from_right_to_left ((@lines - 1) - current_line)
				set_values_from_down_to_up current_column
				
				current_column += 1
				current_line += 1
			end
		else
			set_values_from_left_to_right 0
		end

		# RETURN
		@matrix
	end

	private

	def invalid_values?(columns, lines)
		lines == nil ||  columns == nil || lines <= 0 || columns <= 0
	end

	def define_matrix_nil
		(1..@lines).each do
			temp_array = []
			(1..@columns).each do
				temp_array.push nil
			end
			@matrix.push temp_array
		end
	end

	def set_values_from_left_to_right(line)
		(0..(@columns - 1)).each do |column|
			if @matrix[line][column] == nil
				@matrix[line][column] = @current_number
				@current_number += 1
			end
		end
	end

	def set_values_from_right_to_left(line)
		(0..(@columns - 1)).to_a.reverse.each do |column|
			if @matrix[line][column] == nil
				@matrix[line][column] = @current_number
				@current_number += 1
			end
		end
	end

	def set_values_from_up_to_down(column)
		(0..(@lines - 1)).each do |line|
			if @matrix[line][column] == nil
				@matrix[line][column] = @current_number
				@current_number += 1
			end
		end
	end

	def set_values_from_down_to_up(column)
		(0..(@lines - 1)).to_a.reverse.each do |line|
			if @matrix[line][column] == nil
				@matrix[line][column] = @current_number
				@current_number += 1
			end
		end
	end
end
