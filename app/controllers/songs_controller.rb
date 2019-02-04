class SongsController < ApplicationController
  def create
    song = Song.new(song_params)
    playlist_id = params[:playlist_id]
    song.playlist_id = playlist_id
    song.save
    redirect_to song.playlist, notice: 'Canción creada con éxito!'
  end

  def destroy
    id = params[:id]
    song = Song.find(id)
    song.destroy
    redirect_to song.playlist, notice: 'Canción se eliminó con éxito!'
  end


  private
  def song_params
    params.require(:song).permit(:artist, :name)
  end

end
