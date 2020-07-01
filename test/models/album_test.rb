require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "index returns all albums" do
    visit "/albums"
    # album = Album.new(title: "Roadtrip", description: "Il était une fois blalbala", location: "Canada", date: "2020")
    assert_equal album_path, page.current_path
    assert_text "Il était une fois blalbala"
  end
end
