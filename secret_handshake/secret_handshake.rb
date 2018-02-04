class SecretHandshake
  COMMANDS = { 
      1 => "wink",
      10 => "double blink",
      100 => "close your eyes",
      1000 => "jump"
  }

  def initialize(number)
    @number = number.to_i
  end

  def commands
    binary_number = @number.to_s(2).to_i
    list_of_commands = []
    ten_thousands = binary_number / 10_000

    if binary_number >= 10_000
      binary_number -= 10_000
    end

    thousands = binary_number / 1000 
    hundreds = binary_number % 1000 / 100
    tens = binary_number % 1000 % 100 / 10
    ones = binary_number % 1000 % 100 % 10

    ones.times { |num| list_of_commands << COMMANDS.fetch(1) }
    tens.times { |num| list_of_commands << COMMANDS.fetch(10) }
    hundreds.times { |num| list_of_commands << COMMANDS.fetch(100) }
    thousands.times { |num| list_of_commands << COMMANDS.fetch(1000) }
    
    if ten_thousands >= 1
      list_of_commands.reverse
    else
      list_of_commands
    end
  end
  
end
