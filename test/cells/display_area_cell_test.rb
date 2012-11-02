require 'test_helper'

class DisplayAreaCellTest < Cell::TestCase
  test "good" do
    invoke :good
    assert_select "p"
  end
  

end
