module SavingsAccount
  def self.interest_rate(balance)
    return 0.5 if (0...1000).cover?(balance)
    return 1.621 if (1000...5000).cover?(balance)
    return 2.475 if balance >= 5000

    3.213
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
