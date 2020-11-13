require "application_system_test_case"

class AlbumsTest < ApplicationSystemTestCase
  test 'visiting the albums' do
    visit '/albums'
    assert_equal albums_path, page.current_path
  end

  # test "let's a signed in an admin user create a new album" do
  #   login_as users(:marou)
  #   visit "/albums/new"
  #   # save_and_open_screenshot

  #   fill_in "album_title", with: "Le Wagon"
  #   fill_in "album_description", with: "Change your life: Learn to code"
  #   # save_and_open_screenshot

  #   click_on 'Create Product'
  #   # save_and_open_screenshot

  #   # Should be redirected to Album#index with new album
  #   assert_equal albums_path, page.current_path
  #   assert_text "Change your life: Learn to code"
  # end
end
