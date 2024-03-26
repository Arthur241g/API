class AnimesController < ApplicationController
    def index
      @animes = Anime.all
      render json: @animes
    end
  
    def show
      @anime = Anime.find_by_id(params[:id])
      if @anime.nil?
        render json: { error: "Anime introuvable" }, status: :not_found
      else
        render json: @anime
      end
    end
  
    def create
      @anime = Anime.new(anime_params)
      if @anime.save
        render json: @anime, status: :created
      else
        render json: { errors: @anime.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      @anime = Anime.find(params[:id])
      if @anime.update(anime_params)
        render json: @anime
      else
        render json: { errors: @anime.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @anime = Anime.find(params[:id])
      @anime.destroy
      head :no_content
    end
  
    private
  
    def anime_params
      params.require(:anime).permit(:Title, :Rank, :Type, :Episodes, :Aired, :Members, :Page_url, :image_url, :Score)
    end
  end
  