module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    return :A if %i[OIL GAS].any? { |id| ship_identifier.to_s.start_with?(id.to_s) }

    :B
  end
end
