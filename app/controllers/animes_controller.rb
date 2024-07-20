require 'open-uri'
require 'json'
class AnimesController < ApplicationController
  def index

    @animes = Anime.all
    @urls = ["http://res.cloudinary.com/dckq0zged/image/upload/v1721448290/bwahgpzzw8pdyxbdewhl.png",
      "http://res.cloudinary.com/dckq0zged/image/upload/v1721448409/alnarqzidrdc2izubw4s.jpghttp://res.cloudinary.com/dckq0zged/image/upload/v1721448342/uxf02vihjef4yx15icrs.jpg",
      "http://res.cloudinary.com/dckq0zged/image/upload/v1721448409/alnarqzidrdc2izubw4s.jpg",
      "http://res.cloudinary.com/dckq0zged/image/upload/v1721448470/ewi1dlyhkor4qunbbwpi.jpg",
      "http://res.cloudinary.com/dckq0zged/image/upload/v1721448507/viu1bui4o8m3ld3twkf6.avif",
      "http://res.cloudinary.com/dckq0zged/image/upload/v1721448543/tvjgbbhdordu3qjnz7oj.jpg"]
    @animes.each_with_index do |anime, index|
    anime.photo.attach(io: URI.open(@urls[index]), filename: "anime_#{anime.title}.jpg")
    end

  end

  def show
    @anime = Anime.find(params[:id])
    @figures = Figure.where(anime_id: @anime.id)
  end

  def autocomplete
    term = params[:term]
    animes = Anime.where('title LIKE ?', "%#{term}%").order(:title).limit(10).pluck(:title)
    render json: animes
  end

end
