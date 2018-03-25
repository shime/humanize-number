require "humanize-number/version"

module HumanizeNumber
  THOUSAND = 1000
  MILLION  = 1_000_000
  BILLION  = 1_000_000_000

  def self.humanize(number)
    return number.to_s unless number.is_a?(Numeric)

    case 
    when number.abs < THOUSAND
      number.to_s
    when number.abs < MILLION
      "#{(number / THOUSAND.to_f).round(3 - num_of_digits(number / THOUSAND))}k"
    when number.abs < BILLION
      "#{(number / MILLION.to_f).round(3 - num_of_digits(number / MILLION))}m"
    else
      "#{(number / BILLION.to_f).round([3 - num_of_digits(number / BILLION), 0].max)}b"
    end
  end

  private

  def self.num_of_digits(number)
    Math.log10(number.abs).to_i + 1
  end
end
