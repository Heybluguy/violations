require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/database'

class DatabaseTest < Minitest::Test
  def test_should_consume_csv_file
    @database = Database.new("./Violations-2012.csv")

    assert_equal @database.violations.count, 545
  end

end