require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path
        
        assert_response :success
        assert_select '.product', 2

    end

    test 'render a detailed product page'do
        get products_pat(products(:ps4))

        assert_response :success
        assert_select '.title','ps4'
        assert_select 'description','ps4 perfeccta'
        assert_select 'price','150$'
        
    end

    
    
end