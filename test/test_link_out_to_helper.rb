require 'test/unit'
require 'rubygems'
require 'action_controller'
require 'link_out_to_helper'

class TestLinkOutToHelper < Test::Unit::TestCase
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::UrlHelper
  include LinkOutToHelper

  def test_link_out_to
    assert_equal link_to('click', 'here', :target => '_blank'), link_out_to('click', 'here')
  end

end
