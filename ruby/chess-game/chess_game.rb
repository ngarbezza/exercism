module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.cover?(rank) && FILES.cover?(file)
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[..1]}#{last_name[-2..]}".upcase
  end

  def self.move_message(first_name, last_name, square)
    person = nick_name(first_name, last_name)
    rank = square[1].to_i
    file = square[0]
    return "#{person} attempted to move to #{square}, but that is not a valid square" unless valid_square?(rank, file)

    "#{person} moved to #{square}"
  end
end
