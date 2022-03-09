require "test_helper"

class M6MsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m6_m = m6_ms(:one)
  end

  test "should get index" do
    get m6_ms_url
    assert_response :success
  end

  test "should get new" do
    get new_m6_m_url
    assert_response :success
  end

  test "should create m6_m" do
    assert_difference('M6M.count') do
      post m6_ms_url, params: { m6_m: { level: @m6_m.level, text: @m6_m.text, type: @m6_m.type } }
    end

    assert_redirected_to m6_m_url(M6M.last)
  end

  test "should show m6_m" do
    get m6_m_url(@m6_m)
    assert_response :success
  end

  test "should get edit" do
    get edit_m6_m_url(@m6_m)
    assert_response :success
  end

  test "should update m6_m" do
    patch m6_m_url(@m6_m), params: { m6_m: { level: @m6_m.level, text: @m6_m.text, type: @m6_m.type } }
    assert_redirected_to m6_m_url(@m6_m)
  end

  test "should destroy m6_m" do
    assert_difference('M6M.count', -1) do
      delete m6_m_url(@m6_m)
    end

    assert_redirected_to m6_ms_url
  end
end
