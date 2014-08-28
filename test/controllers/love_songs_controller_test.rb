require 'test_helper'

class LoveSongsControllerTest < ActionController::TestCase
  setup do
    @love_song = love_songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:love_songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create love_song" do
    assert_difference('LoveSong.count') do
      post :create, love_song: { artist: @love_song.artist, language: @love_song.language, number: @love_song.number, title: @love_song.title, type: @love_song.type }
    end

    assert_redirected_to love_song_path(assigns(:love_song))
  end

  test "should show love_song" do
    get :show, id: @love_song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @love_song
    assert_response :success
  end

  test "should update love_song" do
    patch :update, id: @love_song, love_song: { artist: @love_song.artist, language: @love_song.language, number: @love_song.number, title: @love_song.title, type: @love_song.type }
    assert_redirected_to love_song_path(assigns(:love_song))
  end

  test "should destroy love_song" do
    assert_difference('LoveSong.count', -1) do
      delete :destroy, id: @love_song
    end

    assert_redirected_to love_songs_path
  end
end
