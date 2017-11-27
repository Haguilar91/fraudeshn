require 'test_helper'

class FraudesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fraude = fraudes(:one)
  end

  test "should get index" do
    get fraudes_url
    assert_response :success
  end

  test "should get new" do
    get new_fraude_url
    assert_response :success
  end

  test "should create fraude" do
    assert_difference('Fraude.count') do
      post fraudes_url, params: { fraude: { descripcion: @fraude.descripcion, donde: @fraude.donde, links: @fraude.links, titulo: @fraude.titulo } }
    end

    assert_redirected_to fraude_url(Fraude.last)
  end

  test "should show fraude" do
    get fraude_url(@fraude)
    assert_response :success
  end

  test "should get edit" do
    get edit_fraude_url(@fraude)
    assert_response :success
  end

  test "should update fraude" do
    patch fraude_url(@fraude), params: { fraude: { descripcion: @fraude.descripcion, donde: @fraude.donde, links: @fraude.links, titulo: @fraude.titulo } }
    assert_redirected_to fraude_url(@fraude)
  end

  test "should destroy fraude" do
    assert_difference('Fraude.count', -1) do
      delete fraude_url(@fraude)
    end

    assert_redirected_to fraudes_url
  end
end
