require 'test_helper'

class MovisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movi = movis(:one)
  end

  test "should get index" do
    get movis_url
    assert_response :success
  end

  test "should get new" do
    get new_movi_url
    assert_response :success
  end

  test "should create movi" do
    assert_difference('Movi.count') do
      post movis_url, params: { movi: { actors: @movi.actors, comments: @movi.comments, country: @movi.country, director: @movi.director, film_genre: @movi.film_genre, reports: @movi.reports, title: @movi.title, year: @movi.year } }
    end

    assert_redirected_to movi_url(Movi.last)
  end

  test "should show movi" do
    get movi_url(@movi)
    assert_response :success
  end

  test "should get edit" do
    get edit_movi_url(@movi)
    assert_response :success
  end

  test "should update movi" do
    patch movi_url(@movi), params: { movi: { actors: @movi.actors, comments: @movi.comments, country: @movi.country, director: @movi.director, film_genre: @movi.film_genre, reports: @movi.reports, title: @movi.title, year: @movi.year } }
    assert_redirected_to movi_url(@movi)
  end

  test "should destroy movi" do
    assert_difference('Movi.count', -1) do
      delete movi_url(@movi)
    end

    assert_redirected_to movis_url
  end
end
