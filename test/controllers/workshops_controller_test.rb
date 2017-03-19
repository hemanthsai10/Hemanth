require 'test_helper'

class WorkshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workshop = workshops(:one)
  end

  test "should get index" do
    get workshops_url
    assert_response :success
  end

  test "should get new" do
    get new_workshop_url
    assert_response :success
  end

  test "should create workshop" do
    assert_difference('Workshop.count') do
      post workshops_url, params: { workshop: { additional_desc: @workshop.additional_desc, category: @workshop.category, description: @workshop.description, expire_on: @workshop.expire_on, image: @workshop.image, organized_by: @workshop.organized_by, organizing_member: @workshop.organizing_member, register_link: @workshop.register_link, title: @workshop.title, workshop_date: @workshop.workshop_date } }
    end

    assert_redirected_to workshop_url(Workshop.last)
  end

  test "should show workshop" do
    get workshop_url(@workshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_workshop_url(@workshop)
    assert_response :success
  end

  test "should update workshop" do
    patch workshop_url(@workshop), params: { workshop: { additional_desc: @workshop.additional_desc, category: @workshop.category, description: @workshop.description, expire_on: @workshop.expire_on, image: @workshop.image, organized_by: @workshop.organized_by, organizing_member: @workshop.organizing_member, register_link: @workshop.register_link, title: @workshop.title, workshop_date: @workshop.workshop_date } }
    assert_redirected_to workshop_url(@workshop)
  end

  test "should destroy workshop" do
    assert_difference('Workshop.count', -1) do
      delete workshop_url(@workshop)
    end

    assert_redirected_to workshops_url
  end
end
