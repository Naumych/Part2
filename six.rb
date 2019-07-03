# frozen_string_literal: true

#Для проверки можно использовать функцию test с тестовым хэшом

def fench_purchases(purchases = {})
  loop do
    puts 'Input product, price and amount. To close check put \'stop\' instead product '
    product = gets.chomp.to_s
    break if product == 'stop'

    price = gets.chomp.to_f
    amount = gets.chomp.to_f
    purchases[product] = [{ 'price' => price, 'amount' => amount }, price * amount]
  end
  purchases
end

def sum(purchases)
  sum = 0
  values = purchases.values
  values.each { |product_sum| sum += product_sum[1] }
  sum
end

def print_purchases(purchases, sum)
  puts 'Product              |  Price     |  Amount    |Total product price'
  purchases.each do |key, value|
    puts key + ' ' * (20 - key.to_s.length) + ' | ' + value[0]['price'].to_s + ' ' * (10 - value[0]['price'].to_s.length) + ' | ' + value[0]['amount'].to_s + ' ' * (10 - value[0]['amount'].to_s.length) + ' | ' + value[1].to_s
  end
  puts ' ' * 32 + "Sum of products| #{sum}"
end

def execute_algorithm
  purchases = fench_purchases
  puts purchases
  sum = sum purchases
  print_purchases purchases, sum
end

purchases_test = {
  'beer' => [{ 'price' => 16.5, 'amount' => 4 }, 16.5 * 4],
  'salt' => [{ 'price' => 0.3, 'amount' => 10 }, 0.3 * 10],
  'pizza' => [{ 'price' => 1, 'amount' => 1 }, 1],
  'candy' => [{ 'price' => 5, 'amount' => 2.5 }, 5 * 2.5],
  'avocado' => [{ 'price' => 10, 'amount' => 12 }, 10 * 12],
  'banana' => [{ 'price' => 11, 'amount' => 1.5 }, 11 * 1.5]
}

def test(purchases_test)
  sum = 0
  values = purchases_test.values
  values.each { |pr| sum += pr[1] }
  print_purchases(purchases_test, sum)
end

execute_algorithm
# test purchases_test
