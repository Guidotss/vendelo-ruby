require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
    get products_path
    assert_response : success
    assert_select '.product', 2
  end

  test 'render a detailed product page' do
    get product_path(products(:ps4))
    assert_response :success
    assert_select '.title', 'PS4 Fat'
    assert_select '.description', 'PS4 Fat 500GB'
    assert_select '.price','180$'
  end
end
