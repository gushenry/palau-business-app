require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get businesses_url
    assert_response :success
  end

  test "should get new" do
    get new_business_url
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post businesses_url, params: { business: { active: @business.active, address: @business.address, business_start_date: @business.business_start_date, email: @business.email, fax: @business.fax, location: @business.location, name: @business.name, number_part_time_employees: @business.number_part_time_employees, number_regular_employees: @business.number_regular_employees, phone: @business.phone, receipts_over_10000: @business.receipts_over_10000, tax_status: @business.tax_status, type: @business.type, zip: @business.zip } }
    end

    assert_redirected_to business_url(Business.last)
  end

  test "should show business" do
    get business_url(@business)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_url(@business)
    assert_response :success
  end

  test "should update business" do
    patch business_url(@business), params: { business: { active: @business.active, address: @business.address, business_start_date: @business.business_start_date, email: @business.email, fax: @business.fax, location: @business.location, name: @business.name, number_part_time_employees: @business.number_part_time_employees, number_regular_employees: @business.number_regular_employees, phone: @business.phone, receipts_over_10000: @business.receipts_over_10000, tax_status: @business.tax_status, type: @business.type, zip: @business.zip } }
    assert_redirected_to business_url(@business)
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete business_url(@business)
    end

    assert_redirected_to businesses_url
  end
end
