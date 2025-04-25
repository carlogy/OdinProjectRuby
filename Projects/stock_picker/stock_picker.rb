def stock_picker(days)
  if days.length < 2
    return []
  end

  profit = 0
  sell_index = 0
  best_buy_index = nil
  best_sell_index = nil

  days.each_with_index do
    |price, ind|

    sell_index = ind
    until sell_index > days.length do
      price1 = days[sell_index].to_i
      gain = price1 - price

      if gain > profit
        best_buy_index = ind
        best_sell_index = sell_index
        profit = gain
      end
      sell_index += 1
    end
  end
  if best_buy_index.nil? || best_sell_index.nil?
    return []
  end
  [best_buy_index, best_sell_index]
end