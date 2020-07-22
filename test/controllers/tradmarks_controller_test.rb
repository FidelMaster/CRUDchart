require 'test_helper'

class TradmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tradmark = tradmarks(:one)
  end

  test "should get index" do
    get tradmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_tradmark_url
    assert_response :success
  end

  test "should create tradmark" do
    assert_difference('Tradmark.count') do
      post tradmarks_url, params: { tradmark: { description: @tradmark.description, id: @tradmark.id } }
    end

    assert_redirected_to tradmark_url(Tradmark.last)
  end

  test "should show tradmark" do
    get tradmark_url(@tradmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_tradmark_url(@tradmark)
    assert_response :success
  end

  test "should update tradmark" do
    patch tradmark_url(@tradmark), params: { tradmark: { description: @tradmark.description, id: @tradmark.id } }
    assert_redirected_to tradmark_url(@tradmark)
  end

  test "should destroy tradmark" do
    assert_difference('Tradmark.count', -1) do
      delete tradmark_url(@tradmark)
    end

    assert_redirected_to tradmarks_url
  end
end
