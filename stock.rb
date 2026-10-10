def stock_picker(prices)
  best_profit = -Float::INFINITY
  best_days = []
prices.each_with_index do |buying_price, buying_day|
  prices.each_with_index do |selling_price, selling_day|
    next if selling_day <= buying_day
    profit = selling_price - buying_price
  puts " buy on day #{buying_day} and sell on day #{selling_day}, Profit : #{profit}"

  if profit > best_profit
    best_profit = profit
    best_days = [buying_day, selling_day]
  end
  
end

end
best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
