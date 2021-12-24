#########################################################################
# Gridder using classic recusrion approach, constraints - can only move #
#											  right or down in the grid #
# Returns number of steps to reach to end of the grid                   #
#########################################################################
# def gridder rows, columns 										    #
# 	return 0 if rows == 0 or columns == 0 							    #
# 	return 1 if rows == 1 and columns == 1 							    #
# 	return 1 if rows == 1 and columns == 2						        #
# 	return 1 if rows == 2 and columns == 1							    #
# 																	    #
# 	return gridder(rows -1, columns) + gridder(rows, columns - 1) 	    #
# end 																    #
#########################################################################

##############################################################################################
# Gridder using memoization using same constraints
# Returns number of steps to reach endpoint
##############################################################################################
def gridder rows, columns, memoized = Hash.new
	key = "#{rows},#{columns}"
	return memoized[key] if memoized.has_key? key
	return 0 if rows == 0 or columns == 0
	return 1 if rows == 1 and columns == 1
	return 1 if rows == 1 and columns == 2
	return 1 if rows == 2 and columns == 1

	memoized[key] = gridder(rows -1, columns, memoized) + gridder(rows, columns - 1, memoized)
	return memoized[key]
end
##############################################################################################