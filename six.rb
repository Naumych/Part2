# frozen_string_literal: true

  purchases_test = {
    'beer' => [{ 16.5 => 4 }, 16.5 * 4],
    'salt' => [{ 0.3 => 10 }, 0.3 * 10],
    'pizza' => [{ 1 => 1 }, 1],
    'candy' => [{ 5 => 2.5}, 5 * 2.5],
    'avocado' => [{ 10 => 12 }, 10 * 12],
    'banana' => [{ 11 => 1.5 }, 11 * 1.5]
  }

=begin
  def fench_purchases( purchases = {}, product = '', sum = 0 )
    while product != 'stop'
      puts 'Input product, price and amount'
      product = gets.chomp.to_s
      next unless product != 'stop'

      price = gets.chomp.to_f
      amount = gets.chomp.to_f
      purchases[product] = [{ price => amount }, price * amount]
    end
    purchases.values.each { |pr| sum += pr[1] }
    [purchases, sum]
  end
=end
  # purchases = {}

  def fench_purchases
    purchases = {}
    loop do
      puts 'Input product, price and amount'
      product = gets.chomp.to_s
      break if product == 'stop'

      price = gets.chomp.to_f
      amount = gets.chomp.to_f
      purchases[product] = [{ price => amount += amount }, price * amount]
    end
    purchases
  end

  def sum(purchases)
    sum = 0
    values = purchases.values
    values.each { |pr| sum += pr[1] }
    sum
  end

  def print_purchases(purchases, sum)
    puts 'Product              |  Price     |  Amount    |Total product price'
    purchases.each do |key, value|
      puts key + ' '*(20 - key.to_s.length) + ' | ' + value[0].keys.to_s + ' '*(10 - value[0].keys.to_s.length) + ' | ' + value[0].values.to_s + ' '*(10 - value[0].values.to_s.length) + ' | ' + value[1].to_s
    end
    puts ' ' * 32 + "Sum of products| #{sum}"
  end

  def execute_algorithm
    purchases = fench_purchases
    puts purchases
    sum = sum purchases
    print_purchases purchases, sum
  end

  def test(purchases_test)
    sum = 0
    values = purchases_test.values
    values.each { |pr| sum += pr[1] }
    print_purchases(purchases_test, sum)
  end
  # {key}     |  #{value[0].keys} |  #{value[0].values}  | #{value[1]} \n"
execute_algorithm
#test purchases_test