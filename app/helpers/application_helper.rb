module ApplicationHelper

  # show cents when applicable.
  # 6666.00 displayed as 6,666
  # 6666.66 displayed as 6,666.66
  def amount(amount)
    if (amount % 1).zero?
      number_to_currency(amount, precision: 0, unit: '')
    else
      number_to_currency(amount, unit: '')
    end
  end
end
