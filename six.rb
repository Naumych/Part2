class Six
  @@purchases = {
    'beer'=> [{16.5=>4},16.5*4],
    'salt' => [{0.3=>10},0.3*10],
    'pizza' => [{1=>1},1],
    'candy' => [{5=>2.5},5*2.5],
    'avocado' => [{10=>12},10*12],
    'banana' => [{11=>1.5},11*1.5]
  }
  def fench_table
    purchases = {}
    puts 'Input product, price and amount'
    product = gets.chomp.to_s
    price = gets.chomp.to_f
    amount = gets.chomp.to_f
    until product == 'stop'
      purchases[product] = [{ price => amount }, price * amount]
    end

    temp = purchases.values
    sum = 0
    temp.each { |pr| sum += pr[1] }
    [purchases, sum]
  end

  def print_purchases(purchases, sum)
    puts 'Product              |  Price     |  Amount    |Total product price'
    purchases.each do |key, value|
    puts key + ' ' * (20-key.to_s.length) + ' | ' + value[0].keys.to_s + ' ' * (10-value[0].keys.to_s.length) + ' | ' +
          value[0].values.to_s + ' ' * (10-value[0].values.to_s.length) + ' | ' + value[1].to_s
    end
    puts "                                Sum of products| #{sum}"
  end

  def test
    sum = 0
    temp = @@purchases.values
    temp.each { |pr| sum += pr[1] }
    print_purchases(@@purchases, sum)
  end
  #{key}     |  #{value[0].keys} |  #{value[0].values}  | #{value[1]} \n"
end

Six.new.test
