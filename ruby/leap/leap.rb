class Year
  class << self
    def leap?(year_number)
      divisible?(year_number, by: 400) ||
        (divisible?(year_number, by: 4) && !divisible?(year_number, by: 100))
    end
  
    private def divisible?(year_number, by:)
      year_number % by == 0
    end
  end
end