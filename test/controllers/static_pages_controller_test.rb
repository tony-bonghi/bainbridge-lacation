require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  def setup
    @base_title = "Bainbridge Lactation Services"
  end
    
  test "should get services" do
    get services_path
    assert_response :success
    assert_select "title", "Services | #{@base_title}"
  end
  
  test "should get testimonials" do
    get testimonials_path
    assert_response :success
    assert_select "title", "Testimonials | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
