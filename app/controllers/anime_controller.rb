class AnimeController < ApplicationController
    # Action pour lister tous les Animes
    def index
      @anime = Anime.all
      render json: @anime
    end
  
    # Action pour afficher un anime spécifique
    def show
      @anime = Anime.find(params[:id])
      render json: @anime
    end
  
    # Action pour créer un nouvel anime
    def create
      @anime = Anime.new(anime_params)
      if @anime.save
        render json: @anime, status: :created
      else
        render json: @anime.errors, status: :unprocessable_entity
      end
    end
  
    # Action pour mettre à jour un anime existant
    def update
      @anime = Anime.find(params[:id])
      if @anime.update(anime_params)
        render json: @anime
      else
        render json: @anime.errors, status: :unprocessable_entity
      end
    end
  
    # Action pour supprimer un anime
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
  