class WelcomeController < ApplicationController
  def index
    @title = 'Inicio'

    @articles = Article.order(created_at: :desc)

    @wallpapers = Wallpaper.all
  end
end
