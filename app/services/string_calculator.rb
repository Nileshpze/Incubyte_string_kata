# app/services/string_calculator.rb
class StringCalculator
  class NegativeNumbersError < StandardError; end

  def add(input)
    return 0 if input.nil? || input.strip.empty?

    numbers = normalize_input(input)
    integers = numbers.map(&:to_i)

    integers.sum
  end

  private

  def normalize_input(input)
    if input.start_with?("//")
      delimiter, values = parse_custom_delimiter(input)
      values.split(/#{Regexp.escape(delimiter)}|\n|,/)
    else
      input.split(/,|\n/)
    end.reject(&:empty?)
  end

  def parse_custom_delimiter(input)
    header, values = input.split("\n", 2)
    delimiter = header[2..]
    [delimiter, values]
  end
end
