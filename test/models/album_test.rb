require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "index returns all albums"
    album = Album.new(title: "Roadtrip", description: "Il était une fois blalbala", location: "Canada", date: "2020")
    assert_equal ""
  end
end
