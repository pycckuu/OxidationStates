require 'test_helper'

class OxidationStatesControllerTest < ActionController::TestCase
  setup do
    @oxidation_state = oxidation_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oxidation_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oxidation_state" do
    assert_difference('OxidationState.count') do
      post :create, oxidation_state: {  }
    end

    assert_redirected_to oxidation_state_path(assigns(:oxidation_state))
  end

  test "should show oxidation_state" do
    get :show, id: @oxidation_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oxidation_state
    assert_response :success
  end

  test "should update oxidation_state" do
    patch :update, id: @oxidation_state, oxidation_state: {  }
    assert_redirected_to oxidation_state_path(assigns(:oxidation_state))
  end

  test "should destroy oxidation_state" do
    assert_difference('OxidationState.count', -1) do
      delete :destroy, id: @oxidation_state
    end

    assert_redirected_to oxidation_states_path
  end
end
