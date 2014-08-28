class LoveSongsController < ApplicationController
  before_action :set_love_song, only: [:show, :edit, :update, :destroy]

  # GET /love_songs
  # GET /love_songs.json
  def index
    @love_songs = LoveSong.all
  end

  # GET /love_songs/1
  # GET /love_songs/1.json
  def show
  end

  # GET /love_songs/new
  def new
    @love_song = LoveSong.new
  end

  # GET /love_songs/1/edit
  def edit
  end

  # POST /love_songs
  # POST /love_songs.json
  def create
    @love_song = LoveSong.new(love_song_params)

    respond_to do |format|
      if @love_song.save
        format.html { redirect_to @love_song, notice: 'Love song was successfully created.' }
        format.json { render :show, status: :created, location: @love_song }
      else
        format.html { render :new }
        format.json { render json: @love_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /love_songs/1
  # PATCH/PUT /love_songs/1.json
  def update
    respond_to do |format|
      if @love_song.update(love_song_params)
        format.html { redirect_to @love_song, notice: 'Love song was successfully updated.' }
        format.json { render :show, status: :ok, location: @love_song }
      else
        format.html { render :edit }
        format.json { render json: @love_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /love_songs/1
  # DELETE /love_songs/1.json
  def destroy
    @love_song.destroy
    respond_to do |format|
      format.html { redirect_to love_songs_url, notice: 'Love song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_love_song
      @love_song = LoveSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def love_song_params
      params.require(:love_song).permit(:number, :title, :artist, :type, :language)
    end
end
