require "test_helper"

class MybrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mybro = mybros(:one)
  end

  test "should get index" do
    get mybros_url
    assert_response :success
  end

  test "should get new" do
    get new_mybro_url
    assert_response :success
  end

  test "should create mybro" do
    assert_difference('Mybro.count') do
      post mybros_url, params: { mybro: { age: @mybro.age, likes: @mybro.likes, name: @mybro.name } }
    end

    assert_redirected_to mybro_url(Mybro.last)
  end

  test "should show mybro" do
    get mybro_url(@mybro)
    assert_response :success
  end

  test "should get edit" do
    get edit_mybro_url(@mybro)
    assert_response :success
  end

  test "should update mybro" do
    patch mybro_url(@mybro), params: { mybro: { age: @mybro.age, likes: @mybro.likes, name: @mybro.name } }
    assert_redirected_to mybro_url(@mybro)
  end

  test "should destroy mybro" do
    assert_difference('Mybro.count', -1) do
      delete mybro_url(@mybro)
    end

    assert_redirected_to mybros_url
  end
end
