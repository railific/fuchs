require 'test_helper'

class PrefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pref = prefs(:one)
  end

  test "should get index" do
    get prefs_url
    assert_response :success
  end

  test "should get new" do
    get new_pref_url
    assert_response :success
  end

  test "should create pref" do
    assert_difference('Pref.count') do
      post prefs_url, params: { pref: { date_format: @pref.date_format, email: @pref.email, language: @pref.language, timezone: @pref.timezone, user_id: @pref.user_id } }
    end

    assert_redirected_to pref_url(Pref.last)
  end

  test "should show pref" do
    get pref_url(@pref)
    assert_response :success
  end

  test "should get edit" do
    get edit_pref_url(@pref)
    assert_response :success
  end

  test "should update pref" do
    patch pref_url(@pref), params: { pref: { date_format: @pref.date_format, email: @pref.email, language: @pref.language, timezone: @pref.timezone, user_id: @pref.user_id } }
    assert_redirected_to pref_url(@pref)
  end

  test "should destroy pref" do
    assert_difference('Pref.count', -1) do
      delete pref_url(@pref)
    end

    assert_redirected_to prefs_url
  end
end
