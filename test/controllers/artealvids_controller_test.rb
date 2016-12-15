require 'test_helper'

class ArtealvidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artealvid = artealvids(:one)
  end

  test "should get index" do
    get artealvids_url
    assert_response :success
  end

  test "should get new" do
    get new_artealvid_url
    assert_response :success
  end

  test "should create artealvid" do
    assert_difference('Artealvid.count') do
      post artealvids_url, params: { artealvid: { fecha: @artealvid.fecha, lastname: @artealvid.lastname, name: @artealvid.name, position: @artealvid.position, role: @artealvid.role } }
    end

    assert_redirected_to artealvid_url(Artealvid.last)
  end

  test "should show artealvid" do
    get artealvid_url(@artealvid)
    assert_response :success
  end

  test "should get edit" do
    get edit_artealvid_url(@artealvid)
    assert_response :success
  end

  test "should update artealvid" do
    patch artealvid_url(@artealvid), params: { artealvid: { fecha: @artealvid.fecha, lastname: @artealvid.lastname, name: @artealvid.name, position: @artealvid.position, role: @artealvid.role } }
    assert_redirected_to artealvid_url(@artealvid)
  end

  test "should destroy artealvid" do
    assert_difference('Artealvid.count', -1) do
      delete artealvid_url(@artealvid)
    end

    assert_redirected_to artealvids_url
  end
end
