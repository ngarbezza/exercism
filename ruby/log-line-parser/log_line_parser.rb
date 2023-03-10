class LogLineParser
  def initialize(line)
    @line = line
    @parser = /^\[(?<log_level>\w+)\]: (?<message>.*)$/
  end

  def message
    @parser.match(@line)[:message].strip
  end

  def log_level
    @parser.match(@line)[:log_level].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
