class Solver
    def factorial(integer)
        return 1 if integer.zero?
        raise StandardError, "Please insert a value greater than or equal to 0" if integer < 0

        value = 1
        loop do
            value *= integer
            integer -= 1
            break if integer.zero?
        end
        value
    end

    def reverse(word)
        word.reverse
    end
end