require 'test_helper'

class BasicPublicationsControllerTest < ActionController::TestCase
  setup do
    @basic_publication = basic_publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basic_publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basic_publication" do
    assert_difference('BasicPublication.count') do
      post :create, basic_publication: { country: @basic_publication.country, english_title: @basic_publication.english_title, language: @basic_publication.language, profile_id: @basic_publication.profile_id, publication_type: @basic_publication.publication_type, title: @basic_publication.title, webpage: @basic_publication.webpage, year: @basic_publication.year }
    end

    assert_redirected_to basic_publication_path(assigns(:basic_publication))
  end

  test "should show basic_publication" do
    get :show, id: @basic_publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basic_publication
    assert_response :success
  end

  test "should update basic_publication" do
    patch :update, id: @basic_publication, basic_publication: { country: @basic_publication.country, english_title: @basic_publication.english_title, language: @basic_publication.language, profile_id: @basic_publication.profile_id, publication_type: @basic_publication.publication_type, title: @basic_publication.title, webpage: @basic_publication.webpage, year: @basic_publication.year }
    assert_redirected_to basic_publication_path(assigns(:basic_publication))
  end

  test "should destroy basic_publication" do
    assert_difference('BasicPublication.count', -1) do
      delete :destroy, id: @basic_publication
    end

    assert_redirected_to basic_publications_path
  end
end
