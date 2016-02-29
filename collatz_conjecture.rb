# Collatz Cycle, if odd => 3n + 1, if even => n/2
# `-- https://en.wikipedia.org/wiki/Collatz_conjecture
# SovietKetchup
# v1.1.0

module CollatzCycle
  def collatz
    # Check number is positive
    raise ArgumentError, "Argument is not a positive Integer" unless self > 0 
    # Initialize values
    n = self.to_f
    c = 0
    
    # Steps for odd or even until finished
    until n == 1
      if n % 2 == 0
        # Divide by 2
        n /= 2
      else
        # Times by 3 and Add 1
        n *= 3; n += 1
      end
      puts n
      c += 1
    end
  end
end

# Extending Integer
class Integer; include CollatzCycle; end

13.collatz
