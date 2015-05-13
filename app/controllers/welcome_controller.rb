class WelcomeController < ApplicationController
  def index
    @title = 'Inicio'

    @articles = Article.order(created_at: :desc)

    @wallpapers = Wallpaper.all

    @documents = Document.order(created_at: :desc).limit(10)
  end
end
