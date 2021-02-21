class AlbumsController < ApplicationController
  before_action :set_album

  def show
  end

  private
  def set_album
    @album = Album.find(params[:id])
    @band = Band.find(@album.band_id)
  end

end
