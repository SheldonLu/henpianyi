require 'test_helper'

class TopHeadCellTest < Cell::TestCase
  test "top" do
    invoke :top
    assert_select "p"
  end
  

end
