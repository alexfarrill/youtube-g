require File.dirname(__FILE__) + '/helper'

class TestUserSearch < Test::Unit::TestCase

  def test_should_build_basic_query_url
    request = YouTubeG::Request::UserSearch.new(:user => "casahelga")
    assert_equal "http://gdata.youtube.com/feeds/api/users/casahelga/uploads", request.url
  end
  
  def test_should_build_region_restriction_query_url
    request = YouTubeG::Request::UserSearch.new(:user => "casahelga", :restriction => "US")
    assert_equal "http://gdata.youtube.com/feeds/api/users/casahelga/uploads?restriction=US", request.url
  end
  
end