class Solver
    def factorial(integer)
        return 1 if integer.zero?
        raise StandardError, "Please insert a value greater than or equal to 0" if integer < 0
    end
end