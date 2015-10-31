require 'test_helper'

class LuxuryCoffeesControllerTest < ActionController::TestCase
  setup do
    @luxury_coffee = luxury_coffees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luxury_coffees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create luxury_coffee" do
    assert_difference('LuxuryCoffee.count') do
      post :create, luxury_coffee: { description: @luxury_coffee.description, intensity: @luxury_coffee.intensity, name: @luxury_coffee.name, price: @luxury_coffee.price }
    end

    assert_redirected_to luxury_coffee_path(assigns(:luxury_coffee))
  end

  test "should show luxury_coffee" do
    get :show, id: @luxury_coffee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @luxury_coffee
    assert_response :success
  end

  test "should update luxury_coffee" do
    patch :update, id: @luxury_coffee, luxury_coffee: { description: @luxury_coffee.description, intensity: @luxury_coffee.intensity, name: @luxury_coffee.name, price: @luxury_coffee.price }
    assert_redirected_to luxury_coffee_path(assigns(:luxury_coffee))
  end

  test "should destroy luxury_coffee" do
    assert_difference('LuxuryCoffee.count', -1) do
      delete :destroy, id: @luxury_coffee
    end

    assert_redirected_to luxury_coffees_path
  end
end
