########################################################################
# Fibonacci sequenece using classic recusrion approach                 #
# Returns nth fibonacci number                                         #
########################################################################
# def fib position                                                     #
#    return 1 if position <= 2                                         #
#                                                                      #
#    return fib(position - 1) + fib(position - 2)                      #
# end                                                                  #
########################################################################

##################################################################################
# Fibonacci sequenece using memoization
# Returns nth fibonacci number
##################################################################################
def fib position, memoized=Hash.new
    raise "Expected a number" if position.to_i == 0 || position.to_s == position

    return memoized[position] if memoized.has_key? position

    return 1 if position <= 2

    memoized[position] = fib(position - 1, memoized) + fib(position - 2, memoized)
    
    return memoized[position]
end
##################################################################################