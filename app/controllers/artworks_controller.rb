class ArtworksController < ApplicationController
  
  def index 
    render json: Artwork.all
  end 
  
  def create 
    artwork = Artwork.new(artwork_params)
    if artwork.save 
      render json: artwork 
    else 
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end 
  end 
  
  def show 
    artwork = Artwork.find_by(id: params[:id])
    render json: artwork
  end 
  
  def update 
    artwork = Artwork.find_by(id: params[:id])
    if artwork.update(artwork_params)
      render json: artwork 
    else 
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end 
  end 
  
  def destroy
    artwork = Artwork.find_by(id: params[:id])
    
    if artwork 
      Artwork.delete(artwork)
    else 
      render plain: 'Can''t delete because this doesn''t exist'
    end 
  end 
  
  private 
  
  def artwork_params
    params[:artwork].permit(:title, :artist_id)
  end 
  
end 