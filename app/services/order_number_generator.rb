# Custom OrderNumberGenerator
# Generates order numbers
# Spree::Config.order_number_generator = My::OrderNumberGenerator.new
class OrderNumberGenerator
  def generate(date = Date.current)
    @prefix = date.strftime('%y%m%d')

    loop do
      # Make a random number.
      random = generate_number

      # Use the random number if no other order exists with it.
      break random unless Spree::Order.exists?(number: random)
    end
  end

  private

  attr_accessor :prefix

  def generate_number
    suffix = SecureRandom.alphanumeric(4).upcase
                         .tr('I', letters.sample)
                         .tr('L', letters.sample)
                         .tr('O', letters.sample)

    prefix + letters.sample + suffix
  end

  def letters
    @letters ||= ('A'..'Z').to_a.delete_if { |letter| %w[I L O].include?(letter) }
  end
end
