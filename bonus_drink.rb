class BonusDrink
  def self.total_count_for(amount)
    buy = amount
    drink = 0
    while buy > 0  do
      buy = buy - 1
      drink = drink + 1
      if drink % 3 == 0 then
        drink = drink + 1
      end
    end

    return drink
  end
end