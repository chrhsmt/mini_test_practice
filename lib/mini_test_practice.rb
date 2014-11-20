require "mini_test_practice/version"

module MiniTestPractice
  class Main
    def odd?(num)
      (num % 2) == 1
    end
   
    def check_number?(num_str)
      # return false if num_str.to_i == 0
      # return false if num_str.length < 4
      # return false if num_str.to_i / 1000 < 1
      # return false if num_str.to_i % 2 == 1
      num = num_str.to_i 
      if num.between?(1000, 9999) && num % 2 == 0
        true
      else
        false
      end
    end

    def enough_length?(str)
      str.length.between?(3, 8)
    end

    def divide(target, num)
      raise "it can not divide!!" if num == 0
      target / num 
    end

    def fizz_buzz(num)
      return "FizzBuzz" if num % 15 == 0 
      return "Fizz" if num % 3 == 0
      return "Buzz" if num % 5 == 0
    end
   
    def hello
      puts "Hello"
    end
  end
end
