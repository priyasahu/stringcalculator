class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    # If the string starts with "//", we have a custom delimiter
    if numbers.start_with?("//")
      delimiter, rest_of_numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]  # Remove the "//"
      numbers = rest_of_numbers
    else
      delimiter = ","
    end

    # Split the string by the delimiter (either comma or custom one)
    numbers_array = numbers.split(/[#{delimiter}\n]/)

    # Check for negative numbers
    negatives = numbers_array.select { |num| num.to_i < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    # Convert all the strings to integers and sum them
    numbers_array.map(&:to_i).sum
  end
end