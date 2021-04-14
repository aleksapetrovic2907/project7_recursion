class Fibonacci
    # considering fibonacci sequence starts as 1, 1, 2...
    def fibs(n)
        fib_numbers = []
        0.upto(n) do |i|
            if i == 0 or i == 1
                fib_numbers << 1
            else
                fib_numbers << fib_numbers[-1] + fib_numbers[-2]
            end
        end
        fib_numbers
    end

    def fibs_rec(n)
        return [1] if n == 0
        return [1, 1] if n == 1

        fib_numbers = fibs_rec(n - 1)
        fib_numbers << fib_numbers[-1] + fib_numbers[-2]
    end
end