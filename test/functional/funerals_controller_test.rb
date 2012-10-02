require 'test_helper'

class FuneralsControllerTest < ActionController::TestCase
  setup do
    @funeral = funerals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funerals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funeral" do
    assert_difference('Funeral.count') do
      post :create, funeral: { ashes_location: @funeral.ashes_location, burial_location: @funeral.burial_location, casket_pref: @funeral.casket_pref, final_words: @funeral.final_words, funeral_pref: @funeral.funeral_pref, hymns_pref: @funeral.hymns_pref, readings: @funeral.readings, service_location: @funeral.service_location, speakers: @funeral.speakers, user_id: @funeral.user_id }
    end

    assert_redirected_to funeral_path(assigns(:funeral))
  end

  test "should show funeral" do
    get :show, id: @funeral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funeral
    assert_response :success
  end

  test "should update funeral" do
    put :update, id: @funeral, funeral: { ashes_location: @funeral.ashes_location, burial_location: @funeral.burial_location, casket_pref: @funeral.casket_pref, final_words: @funeral.final_words, funeral_pref: @funeral.funeral_pref, hymns_pref: @funeral.hymns_pref, readings: @funeral.readings, service_location: @funeral.service_location, speakers: @funeral.speakers, user_id: @funeral.user_id }
    assert_redirected_to funeral_path(assigns(:funeral))
  end

  test "should destroy funeral" do
    assert_difference('Funeral.count', -1) do
      delete :destroy, id: @funeral
    end

    assert_redirected_to funerals_path
  end
end
