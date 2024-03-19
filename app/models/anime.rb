require 'csv'
require 'activerecord-import'

class Anime < ApplicationRecord
  validates :Title, :Score, presence: true

  # Title of the anime
  attribute :Title, :string

  # Rank of the anime (e.g., on MyAnimeList)
  attribute :Rank, :float

  # Type of anime (e.g., TV series, movie)
  attribute :Type, :string

  # Number of episodes (if applicable)
  attribute :Episodes, :integer

  # Airing date or date range
  attribute :Aired, :date

  # Number of list members on a platform (e.g., MyAnimeList)
  attribute :Members, :float

  # URL of the anime page on a platform
  attribute :Page_url, :string

  # URL of the anime image
  attribute :image_url, :string

  # Overall score of the anime (e.g., on MyAnimeList)
  attribute :Score, :float

  def self.import(anime)
    Anime.import(CSV.read('db/anime.csv', headers: true))
  end
end

  #Import data from CSV
  Anime.import('db/anime.csv')