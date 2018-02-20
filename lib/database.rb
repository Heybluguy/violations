
class Database
  attr_reader :violations

  def initialize(csv)
    @violations = recieve_violations(csv)
  end
  def recieve_violations(csv)
    violations = []
    csv_file = File.open(csv, "r")
      csv_read = csv_file.readlines
      csv_file.close
      violations << csv_read
      violations = violations.flatten.drop(1)
  end


end